<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
import_request_variables('P','var_');
// les asigna el prefijo var_ a cada name del formulario enviado.
//Convertir la cadena fechaAbre en formato date para mysql.  
$fecha = explode("/", $var_fechaAbre);
$fechaSQL = $fecha[2]."-".$fecha[1]."-".$fecha[0];  
if($fechaSQL=='' || $var_dpto1=='' || $var_tipoDoc1=='' || $var_titulo=='' || $var_ubiDoc=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	// Inserto mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.doc_ins(NULL, '$fechaSQL', '$var_dpto1', '$var_tipoDoc1', '$fechaSQL', '$var_titulo', '$var_ubiDoc', '$var_loginH')";
	$result1 = mysql_query($sql,$link);
	// Verifico que no haya errores.
	if($result1==false) {
		$message  = 'Consulta fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $result1;
		echo "03".$message;
	} else echo "02"." GRABACION EXITOSA!";
}
?> 
