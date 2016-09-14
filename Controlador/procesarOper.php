<?php
/*
	Nombre:		procesarOper.php
Archivo encargado de procesar la inscripcion de los usuarios.

Variables usadas:
	$link:		Variable de conexion
   $user:   	Variable de sesion asociada al operador conectado.
   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.
   $clave:		Variable que almacenara
   $salt:		Muestra de caracteres a usar en la encriptacion de clave.
	$var_cedulaPer:	Variable correspondiente al login recibida del formulario 
	$var_clave:	Variable correspondiente a la clave recibida del formulario 
	$result1:	Variable encargada de almacenar el resultado de las consultas a mysql.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
// les asigna el prefijo var_ a cada name del formulario enviado.
import_request_variables('P','var_');   
if($var_nombre=='' || $var_direccion=='' || $var_telefono=='' || $var_sexo=='' || $var_clave1=='' || $var_clave2=='' || $var_clave1=='***' || $var_clave2=='***' || $var_tipoPer=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	// Se verifica que el usuario no exista
	$sql = "SELECT clavePer.loginPer,clavePer.tipoPer FROM dpto_archivo.clavePer WHERE loginPer= '".$var_cedulaPer."' ";
	$query = mysql_query($sql,$link);
	$fila = mysql_fetch_assoc($query);
	$num = mysql_num_rows($query);
	if($num > 0) {
		// si el usuario existe 
		if($fila['tipoPer'] == 3) echo "16"." Cedula es de un estudiante!";
		else echo "17"." El operador ya existe!";
	} else {
		////////  AQUI SE ENCRIPTA LA CLAVE  ////////////////////////
		$salt = "|#€7`¬23ads4ook12";
		$var_cedulaPer1 = "'".$var_cedulaPer."'";
		$var_clave2 = "'".$var_clave2."'";
	 	$var_clave1 = sha1($salt.md5($var_cedulaPer1.$var_clave2));		
	 	//////////////////////////////////////////////////////////
		$result1 = mysql_query("INSERT INTO `dpto_archivo`.`clavePer` (`loginPer`, `tipoPer`, `clave`) VALUES ('$var_cedulaPer', '$var_tipoPer', '$var_clave1')",$link);
		if($result1==true) {
			$result2 = mysql_query("INSERT INTO `dpto_archivo`.`datosPer` (`cedulaPer`, `nombre`, `direccion`, `telefono`, `sexo`, `clavePer_loginPer`) VALUES ('$var_cedulaPer', '$var_nombre', '$var_direccion', '$var_telefono', '$var_sexo', '$var_cedulaPer')",$link);
			if($result2==false) {
				mysql_query("DELETE FROM `dpto_archivo`.`clavePer` WHERE `clavePer`.`loginPer`='$var_cedulaPer' ",$link);
				$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
				$message .= 'Cual consulta: ' . $result2;
				echo "03".$message; // Error al tratar de grabar los datos
			} else {
				desconectar($link);
				echo "12"."	GRABACION EXITOSA! "; //" "."idOperM:".$idOperM." Clave:".$var_clave2." Clave encriptada:".$var_clave1;
			}
		} else {
			$message  = 'Consulta fallo: ' . mysql_error() . "\n";
			$message .= 'Cual consulta: ' . $result1;
			echo "03".$message; // Error al tratar de grabar los datos
		}
	}
}
?> 

