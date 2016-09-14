<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
import_request_variables('P','var_');
// les asigna el prefijo var_ a cada name del formulario enviado. 
if($var_nivelAca=='' || $var_descripEsp=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	// Inserto en especialidad mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.esp_ins(NULL, '$var_descripEsp', '$var_nivelAca')";
	$result1 = mysql_query($sql,$link);
	// Verificar que no haya errores
	if($result1==false) {
		$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "03".$message; // Error al tratar de grabar los datos
	} else echo "14"." GRABACION EXITOSA!";
}
?> 
