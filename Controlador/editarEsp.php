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
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// AQUI DEBE RECIBIRSE EL PARAMETRO DE ipEsp PARA QUE PUEDA SER "ESCAPADO".
$idEsp = getParam($_GET["idEsp"], "");
$sql = "SELECT * FROM especialidad WHERE codEsp = ".sqlValue($idEsp, "text");
$productos = mysql_query($sql, $link);
$registros = mysql_fetch_array($productos);
$total = mysql_num_rows($productos);
if ($total == 0) {
	// Sino existe la Especialidad hubo un error y se regresa al modulo padre
	echo "<script language='javascript'> ";
	echo "javascript:llamarasincronoget('Vista/especialidad.php','col2','centro')";
	echo "</script>";	
	//exit;
}
?>
<div id="divpadre1">
<br />
	<center><h3>EDITAR ESPECIALIDAD<h3></center>
	<!-- Procesar formulario de forma asincrona (AJAX) -->
  <form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/modificaEsp.php','divpadre1','respuesta1','7',
	'nivelAca='+document.getElementById('nivelAca').value
	+'&amp;descripEsp='+document.getElementById('descripEsp').value
	+'&amp;idEsp='+document.getElementById('idEsp').value); return false" action="#">	
  <table width="696" border="1" summary="">
		<tr>
			<th align="left"> Nivel de Especialidad.: </th><td align="left" colspan="2">
				<input type='text' name='nivelAca' id='nivelAca' disabled="disabled"  size="2" disabled="disabled" value="<?php echo $registros['nivelAca']; ?>" />
				<?php 
					switch($registros['nivelAca']) {
						case 1:echo "<input type='text' name='nivelAca2' id='nivelAca2' disabled='disabled' size='32' value='Pregrado (Ingeniería y T.S.U.)' /><br>";break;
						case 2:echo "<input type='text' name='nivelAca2' id='nivelAca2' disabled='disabled' size='32' value='Cursos de Extension' /><br>";break;
						case 3:echo "<input type='text' name='nivelAca2' id='nivelAca2' disabled='disabled' size='32' value='Postgrados (Incluye Maestría y Doctorado)' /><br>";
					}				
				?>				
             <select name="nivelAca1" id="nivelAca1" onchange="document.getElementById('nivelAca').value = this.options[this.selectedIndex].value;document.getElementById('nivelAca2').value = this.options[this.selectedIndex].text;">
                 <option value="" disabled="disabled" selected="selected"></option>
                 <option value="1">Pregrado (Ingeniería y T.S.U.)</option>
                 <option value="2">Cursos de Extension</option>
                 <option value="3">Postgrados (Incluye Maestria y Doctorado)</option>
             </select>
			</td>	
		</tr>
		<tr>
			<th align="left"> Descripcion: </th><td colspan="2">
			<input type="text" name="descripEsp" id="descripEsp" size="65" maxlength="80"  value="<?php echo $registros['descripEsp']; ?>"/></td>		
		</tr>
	</table>
	<input name="enviar" type="submit" id="enviar" value="Enviar" />   
	<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/especialidad.php','col2','centro','0')"/>
	<input type="hidden" id="idEsp" name="idEsp" value="<?php echo $registros['codEsp']; ?>" />
	</form> 
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>



	
	


	
	


	
	

