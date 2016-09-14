<?php
/*
 * Archivo:		borraEsp.php
 * Archivo encargado de borrar las especialidades.

Variables usadas:
	$link:		Variable de conexion
   $idEsp:   	Variable asociada la especialidad seleccionada recibida via GET.
	$result:		Variable encargada de almacenar el resultado de las consultas a mysql.
	$loginH:		Variable asociada al usuario logueado recibida via GET.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Se recibe el id de la Especialidad
$idEspec = $_GET['idEsp']; 
$idEsp=trim($idEspec);
// Elimino mediante un procedimiento almacenado.
$sql = "CALL dpto_archivo.esp_del(".mysql_real_escape_string($idEsp).")";   
$result=mysql_query($sql,$link);
// Verificar que no haya errores y mostrar un mensaje
if($result == true) {
	// Si fue exitoso se muestra un mensaje y se retorna al menu.
	?>
	<script>
		alert('Eliminacion exitosa!');
		llamarasincronoget('Vista/especialidad.php','col2','centro','0');
	</script>
	<?php
} else {
	$message  = 'Consulta fallo: ' . mysql_error() . "\n";
	$message .= 'Cual consulta: ' . $sql;
	echo "09".$message;	
	// Error al tratar de modificar (borrar) los datos	
}
?> 
