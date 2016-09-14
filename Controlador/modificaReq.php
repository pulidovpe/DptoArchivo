<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
import_request_variables('P','var_');
// les asigna el prefijo var_ a cada name del formulario enviado.
if($var_tipoExp=='' || $var_describe=='' || $var_idReq=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	$sql = "UPDATE requisiExp SET ";
	$sql.= "descripcion='".$var_describe."' ";
	$sql.= "WHERE codReqExp=".$var_idReq;
	$result1=mysql_query($sql, $link);
	if($result1==false) {
		$message  = 'Consulta fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "03".$message;
	} else echo "11"." MODIFICACIÓN EXITOSA!";
}
?>