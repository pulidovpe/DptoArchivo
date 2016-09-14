<?php
/*
 * Archivo:		borraDoc.php
 * Archivo encargado de borrar los documentos.

Variables usadas:
	$link:		Variable de conexion
   $idDoc:   	Variable asociada al documento seleccionado recibida via GET.
	$result:		Variable encargada de almacenar el resultado de las consultas a mysql.
	$loginH:		Variable asociada al usuario logueado recibida via GET.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Obtengo el ID del documento
$idDocu = $_GET['idDoc'];
$loginH = $_GET['loginH'];
// Elimino los espacios en blanco que se hayan colado
$idDoc = trim($idDocu); 
// Elimino mediante un procedimiento almacenado.
$sql = "CALL dpto_archivo.doc_del(".mysql_real_escape_string($idDoc).")";   
$result=mysql_query($sql,$link);
// Se verifica que no haya errores y mostrar un mensaje
if($result == true) {
	// Si fue exitoso se muestra un mensaje y se retorna al menu.
	?>
	<script>
		llamarasincronoget('Vista/documento.php','col2','centro','0');
	</script>
	<?php
} else {
	$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
	$message .= 'Cual consulta: ' . $sql;
	echo "09".$message;
	// Error al tratar de modificar (borrar) los datos		
}
?> 