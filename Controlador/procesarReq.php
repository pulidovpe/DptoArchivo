<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Recupero las variables
$tipo = $_POST['tipoExp'];
$descrip = $_POST['describe'];
if($tipo=='' || $descrip=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	// Inserto en requisiExp mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.req_ins(NULL, '$descrip', '$tipo')";
	$result1 = mysql_query($sql,$link);
	// Verificar que no haya errores
	if($result1==false) {
		$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "03".$message; // Error al tratar de grabar los datos
	} else echo "11"." GRABACION EXITOSA!";
}
?> 
