﻿<?php
/*
 * Archivo:		borraReq.php
 * Archivo encargado de borrar los requisitos.

Variables usadas:
	$link:		Variable de conexion
   $idReq:   	Variable asociada al requisito seleccionado recibida via GET.
	$result:		Variable encargada de almacenar el resultado de las consultas a mysql.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Se recibe el ID del requisito
$idRequi = $_GET['idReq'];
$idReq=trim($idRequi); 
$sql = "DELETE FROM requisiExp WHERE codReqExp=".mysql_real_escape_string($idReq);   
$result=mysql_query($sql,$link);
// Verificar que no haya errores y mostrar un mensaje
if($result == true) {
	// Si fue exitoso se muestra un mensaje y se retorna al menu.
	?>
	<script>
		alert('Eliminacion exitosa!');
		llamarasincronoget('Vista/requisitos.php','col2','centro','0');
	</script>
	<?php
} else {
  $message  = 'Consulta fallo: ' . mysql_error() . "\n";
  $message .= 'Cual consulta: ' . $sql;
  echo "09".$message; 
  // Error al tratar de modificar (borrar) los datos  	
}
?> 