<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
// Para que PHP reconozca la ñ y demas caracteres latinos
header("Content-Type: text/html;charset=utf-8");
include_once("../Controlador/conexion.php");
$link=conectarse();
$result = mysql_query("SELECT clavePer.*,datosPer.cedulaPer,datosPer.nombre,datosPer.telefono FROM clavePer,datosPer WHERE clavePer.loginPer=datosPer.cedulaPer AND clavePer.tipoPer<>'3' order by loginPer",$link);
?>
<div id="divpadre1">
<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	<h1><strong>Registro de Operadores</strong></h1>
</div>
	<center>
	<div id="botonera"  align="center" style="background-color:#CCC; ">
		<br />
		<table summary="">
			<tr>
				<td class="cuadro"><a onclick="javascript:llamarasincronoget('Vista/agregaOper.php','divpadre1','fondo-centro','0');" style='cursor:pointer'>Agregar</a></td>		
				<td class="cuadro"><a onclick="window.open('Controlador/expPdfOper.php','window','params');return false" style='cursor:pointer'>Reportes</a></td>		
			</tr>
		</table>
	    <br />
	</div>
	<center>
	<div id="fondo-centro"  align="center">
	<br />
	<table border="1" summary="" width="696px">
   <tr>
      <th>Login</th>
      <th>Nombre</th>
      <th>Telefono</th>
      <th>Editar</th>
      <th>Eliminar</th>
   </tr> 
 <?php      
   while($row = mysql_fetch_array($result)) {
      printf("
      <tr>
			<td> %s </td>			
			<td> %s </td>      	
      	<td> %s </td>
			<td><a onclick=\"javascript:llamarasincronoget('Controlador/editarOper.php?idOper=%s','divpadre1','fondo-centro','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'><center>Editar</center></a></td>
      	<td><a onclick=\"javascript:llamarasincronoget('Controlador/borrarOper.php?idOper=%s','divpadre1','fondo-centro','4');llamarasincronoget('Vista/operadores.php','col2','centro','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'><center>Borrar</center></a></td>
      </tr>", 
      $row["loginPer"],$row["nombre"],$row["telefono"],$row["loginPer"],$row["loginPer"]);
   }
   mysql_free_result($result);
?>
	</table>	
	</div>
	<div id="titulos2" align="center" style="background-color:#09F; color: #FFF;">
	  <h3>Excelencia educativa abierta al pueblo!</h3>
	</div>
</div>
</center>
<p>&nbsp;</p>
