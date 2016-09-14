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
if($var_dpto1=='' || $var_tipoDoc1=='' || $var_titulo=='' || $var_ubiDoc=='' || $var_idDoc=='') {
	echo "04";//." CAMPOS NO PUEDEN IR VACIOS";
} else {
	$dia1 = date(d); // devuelve el día del mes
	$mes1 = date(m); // devuelve el número del mes
	$anio1 = date(Y); // devuelve el año
	$fechaHoy = $anio1."-".$mes1."-".$dia1;
	/* 
		"Escapo" todos los valores recibidos
		para evitar inyecciones SQL
		gracias al archivo funciones.php.
	*/
	$idDocM = sqlValue($var_idDoc, "int");
	$loginM = sqlValue($var_loginH, "text");
	$fechaM = sqlValue($fechaHoy, "date");
	$dptoM = sqlValue($var_dpto1, "text");
	$tipoDocM = sqlValue($var_tipoDoc1, "text");
	$tituloM = sqlValue($var_titulo, "text");
	$ubicacionM = sqlValue($var_ubiDoc, "text");
	// Modifico mediante un procedimiento almacenado.
	$sql = "CALL dpto_archivo.doc_upd($idDocM, $dptoM, $tipoDocM, $fechaM, $tituloM, $ubicacionM, $loginM)";
	$result1=mysql_query($sql, $link);
	// Verifico que no haya errores.
	if($result1==false) {
		$message  = 'Consulta fallo: ' . mysql_error() . "\n";
	   $message .= 'Cual consulta: ' . $sql;
		echo "03".$message;
	} else echo "05"." MODIFICACIÓN EXITOSA!";
}
?>