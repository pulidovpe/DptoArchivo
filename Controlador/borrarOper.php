<?php
/*
 * Archivo:		borraOper.php
 * Archivo encargado de borrar los operadores.

Variables usadas:
	$link:		Variable de conexion
   $idOper:   	Variable asociada al operador recibida via GET.
   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.	
	$result1:	Variable encargada de almacenar el resultado de las consultas a mysql.
*/
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link = conectarse();
// Se recibe el id del operador
$idOper = $_GET['idOper']; 
$idOp=trim($idOper);
// No permitir el borrado del usuario Administrador
if($idOp != '99009009') {
	// Se elimina mediante un procedimiento almacenado.
	$sql = "CALL dpto_archivo.per_del(".mysql_real_escape_string($idOp).")";   
   $result1=mysql_query($sql,$link);
   // Se verifica que no haya errores y se muestra un mensaje
	if($result1 == true) {
		// Si fue exitoso se muestra un mensaje y se retorna al menu.
		?>
		<script>
			alert('Eliminacion exitosa!');
			llamarasincronoget('Vista/operadores.php','col2','centro','0');
		</script>
		<?php
	} else {
		$message  = 'Consulta fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
    	echo "09".$message;	
    	// Error al tratar de modificar (borrar) los datos
   }
}
?> 