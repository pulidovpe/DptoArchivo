<?php session_start();
if($_SESSION['tipoPer']!='2')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: cerrarSesion.php");	
	exit;
}
$login = $_SESSION['user'];
// Para que PHP reconozca la ñ y demas caracteres latinos
header("Content-Type: text/html;charset=utf-8");
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Obtener el ID del documento para ser "Escapado"
$idDoc = getParam($_GET['idDoc'], "");
$sql = "SELECT * FROM documento WHERE numDoc = ".sqlValue($idDoc, "int");
$productos = mysql_query($sql, $link);
$registros = mysql_fetch_array($productos);
$total = mysql_num_rows($productos);
if ($total == 0) {
	// Sino existe la Especialidad hubo un error y se regresa al modulo padre
	echo "<script language='javascript'> ";
	echo "javascript:llamarasincronoget('Vista/documento.php','col2','centro')";
	echo "</script>";	
	//exit;
}

$fechaE = explode("-",$registros['fechaAbre']); 
$dia = $fechaE[2]; // devuelve el día del mes
$mes = $fechaE[1]; // devuelve el número del mes
$anio = $fechaE[0]; // devuelve el año
$fecha = $dia."/".$mes."/".$anio;

?>
 
<div id="divpadre3">
	<br />
	<center><h3>EDITAR DOCUMENTO<h3></center>
  <!-- Procesar formulario de forma asincrona (AJAX) -->
  <form name="planilla3" id="planilla3" onsubmit="llamarasincronopost('Controlador/modificaDoc.php','divpadre3','respuesta3','2',
  'idDoc='+document.getElementById('idDoc').value
	+'&amp;dpto1='+document.getElementById('dpto1').value
	+'&amp;tipoDoc1='+document.getElementById('tipoDoc1').value
	+'&amp;titulo='+document.getElementById('titulo').value
	+'&amp;loginH='+document.getElementById('loginH').value
	+'&amp;ubiDoc='+document.getElementById('ubiDoc').value); return false" action="#">
	<input type="hidden" name="loginH" id="loginH" value="<?php echo $login; ?>" />
  <table width="520" border="1" summary="">
		<tr>
			<th> Numero de<br>Documento: <br><input type="text" name="numDoc" disabled="disabled" size="3" value="<?php echo $registros['numDoc']; ?>"/></th><td></td>
			<th align="left"> Fecha: <br>
			<input type="text" name="fechaAbre" id="fechaAbre" size="8" disabled="disabled" value="<?php echo $fecha; ?>" />			
			</th>
		</tr>		
		<tr>
			<th align="left"> Nombre del Dpto.: </th><td align="left">
				<input type="text" name="dpto1" id="dpto1" size="50" value="<?php echo $registros['dpto']; ?>" /><br>
			</td><td></td>	
		</tr>
		<tr>
			<th align="left"> Tipo de Documento: </th><th align="left">
				<input type="text" name="tipoDoc1" id="tipoDoc1" size="50" value="<?php echo $registros['tipoDoc']; ?>" /><br>
			</th><td></td>
		</tr>
		<tr>
			<th align="left"> Titulo: </th><td><input type="text" name="titulo" id="titulo" size="55" maxlength="99" value="<?php echo $registros['titulo']; ?>" /></td><td></td>		
		</tr>
		<tr>
			<th align="left"> Ubicación: </th><td align="left"><input type="text" name="ubiDoc" id="ubiDoc" size="45" maxlength="40" value="<?php echo $registros['ubicacion']; ?>" /></td><td></td>
		</tr>
		<tr><td colspan='3' align='center'>
		<input type="submit" name="Grabar" value="Grabar" id="Grabar" />
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/documento.php','col2','centro','0')"/></td></tr>
		<input type="hidden" id="idDoc" name="idDoc" value="<?php echo $registros['numDoc']; ?>" />
	</table>
	</form>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta3" style='visibility:hidden'></div>
</div>
