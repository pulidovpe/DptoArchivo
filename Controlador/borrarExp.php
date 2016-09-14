<?php
/*
 * Archivo:		borraExp.php
 * Archivo encargado de borrar los expedientes.

Variables usadas:
	$link:		Variable de conexion
   $idExp:   	Variable asociada al expediente seleccionado recibida via GET.
	$result:		Variable encargada de almacenar el resultado de las consultas a mysql.
	$loginH:		Variable asociada al usuario logueado recibida via GET.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Se recibe el ID del expediente y de la Especialidad

$idExped = $_POST['idExp']; 
$idEspec = $_POST['idEsp'];
$idExp=trim($idExped);
$idEsp=trim($idEspec);  
// Elimino mediante un procedimiento almacenado.
$sql = "CALL dpto_archivo.exp_del(".mysql_real_escape_string($idExp).", ".mysql_real_escape_string($idEsp).")";   
$result=mysql_query($sql,$link);
// Verificar que no haya errores y mostrar un mensaje
if($result == true) {	
	echo "18"." ELIMINACION DE EXPEDIENTE EXITOSA";	
} else {
	$message  = 'Consulta fallo: ' . mysql_error() . "\n";
 	$message .= 'Cual consulta: ' . $sql;
 	echo "09".$message;	
 	// Error al tratar de modificar (borrar) los datos	
} 
?> 