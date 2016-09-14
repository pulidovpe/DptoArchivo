<?php
/*
 * Archivo:		reqCargado.php
 * Archivo encargado de cargar los requisitos en el expediente.

Variables usadas:
	$link:		Variable de conexion
   $req:   		Variable asociada al tipo de requisito seleccionado recibida via GET.
   $cuales:		Variable encargada de entregar los requisitos cargados.
   $sql1:		Variable encargada de almacenar el resultado de las consultas a mysql.
*/
// Para que PHP reconozca la ñ y demas caracteres latinos
header("Content-Type: text/html;charset=utf-8");
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");	
//estos valores los recibo por GET
if(isset($_GET['req'])) {
	$RegistrosAEmpezar=$_GET['req'];
	// si cuales trae datos, se crea el arreglo requisitos
	if(isset($_GET['cuales'])) $requisitos=explode(";", $_GET['cuales']); 
	else $requisitos=0;
//caso contrario lo inicializamos
} else {
	$RegistrosAEmpezar=1;
}		
$sql = mysql_query("SELECT * FROM requisiExp WHERE codTipoExp='$RegistrosAEmpezar' ");
$reqpend=0; // Requisitos pendientes
// Si existen requisitos
if($requisitos!=0) {
	$cualno=0;$noimp=0;
	while ($row = mysql_fetch_row($sql)) {
		do {
			if($row[0] != $requisitos[$cualno]) $noimp=0;
			else $noimp=1;
		} while($requisitos[$cualno++]);
		if(!$noimp) {
			echo "<input type='checkbox' name='requisito' id='".$row[0]."' value='$row[0]'/>".substr($row[1], 0, 78)."..<br>";
			$reqpend++;
		} else echo "<input type='checkbox' name='requisito' id='".$row[0]."' checked='checked' disabled='disabled' value='$row[0]'/>".substr($row[1], 0, 78)."..<br>";
		//mostrarlos todos, pero los marcados disabled.	
	}
} else {
	while ($row = mysql_fetch_row($sql)) {
		echo "<input type='checkbox' name='requisito' id='".$row[0]."' value='$row[0]'/>".substr($row[1], 0, 78)."..<br>";
		$reqpend++;
	}
}
echo "<input type='hidden' name='reqpend' id='reqpend' value='".$reqpend."' />";
//desconectar($link);
?>
