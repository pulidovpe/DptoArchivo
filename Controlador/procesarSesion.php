<?php
/*
	Nombre:		procesarSesion.php
Archivo encargado de procesar el inicio de sesion de los usuarios.

Variables usadas:
	$link:		Variable de conexion
   $user:   	Variable de sesion asociada al operador conectado.
   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.
   $nombre:		Variable que almacena el nombre del usuario.
   $clave:		Variable que almacenara
   $salt:		Muestra de caracteres a usar en la encriptacion de clave.
	$var_user:	Variable correspondiente al login recibida del formulario 
	$var_clave:	Variable correspondiente a la clave recibida del formulario 

	La funcion "import_request_variables" reemplaza los $_POST por cada variable y 
   les asigna el prefijo "var_" a cada name del formulario enviado.
*/
import_request_variables('P','var_');
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
///////////// AQUI SE ENCRIPTA LA CLAVE  /////////////////////
$salt = "|#€7`¬23ads4ook12";
$var_user1 = "'".$var_user."'";
$var_clave = "'".$var_clave."'";
$cla2M = sha1($salt.md5($var_user1.$var_clave));
//////////////////////////////////////////////////////////////////////////////////////
//Ejecutamos la consulta
$sql = "SELECT clavePer.*,datosPer.cedulaPer,datosPer.nombre FROM clavePer,datosPer WHERE clavePer.loginPer=datosPer.cedulaPer and clavePer.loginPer='$var_user' and clave='".$cla2M."' limit 1";
$query = mysql_query($sql,$link);
$fila = mysql_fetch_assoc($query);
$num = mysql_num_rows($query);
if($num > 0) {
	// Si el usuario existe la contraseña es correcta
	if($fila['tipoPer'] == 2){
		// Se entra en modo usuario
		session_start();
		// Se crea la sesion
		$_SESSION['user'] = $var_user;
		$_SESSION['tipoPer'] = "2";
		$_SESSION['nombre'] = $fila['nombre'];            
		echo "01"." SESION EXITOSA "; 
	} else if($fila['tipoPer'] == 1) {
		// Se entra  en modo administrador
		session_start();
		// Se crea la sesion
		$_SESSION['user'] = $var_user;
		$_SESSION['tipoPer'] = "1";
		$_SESSION['nombre'] = $fila['nombre'];
		$var_clave = $fila['clave'];
		if($var_clave == 'f2eb4cbd005908be5f70dbd3496b495f2c917fa3') {
			echo "13"." SE RECOMIENDA CAMBIAR LA CLAVE AL ADMINISTRADOR!";
		} else echo "01"." SESION EXITOSA "; 
	} else echo "00"." USUARIO NO EXISTE"; 
	// Por si trata de entrar un alumno
} else echo "00"." USUARIO NO EXISTE O CLAVE INCORRECTA "; 
?>