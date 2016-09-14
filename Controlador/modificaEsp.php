<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
import_request_variables('P','var_');
// les asigna el prefijo var_ a cada name del formulario enviado.
if($var_nivelAca=='' || $var_descripEsp=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	/* 
		"Escapo" todos los valores recibidos
		para evitar inyecciones SQL
		gracias al archivo funciones.php.
	*/
	$idEspM = sqlValue($var_idEsp, "int");
	$nivelM = sqlValue($var_nivelAca, "int");
	$descripM = sqlValue($var_descripEsp, "text");
	// Modifico en especialidad mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.esp_upd($idEspM, $descripM, $nivelM)";
	$result1 = mysql_query($sql,$link);
	// Verificar que no haya errores
	if($result1==true)
		echo "14"." MODIFICACIÓN EXITOSA!";
	else {
		$message  = 'Consulta fallo: '. mysql_error() ."\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "03".$message;	// Error al tratar de grabar los datos
	}
}
?>