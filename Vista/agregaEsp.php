<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* 
		Archivo: agregaEsp.php

		Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: Controlador/cerrarSesion.php");	
	exit;
} 
?>
<div id="divpadre1">
	<br />
	<center><h3>AGREGAR ESPECIALIDAD<h3></center>
  <form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/procesarEsp.php','divpadre1','respuesta1','7',
	'nivelAca='+document.getElementById('nivelAca').value
	+'&amp;descripEsp='+document.getElementById('descripEsp').value); return false" action="#">	
  <table width="696" border="1" summary="">
		<tr>
			<th align="left"> Nivel de Especialidad.: </th><td align="left" colspan="2">
					<input type='hidden' name='nivelAca' id='nivelAca'>
                <select name="nivelAca1" id="nivelAca1" onchange="document.getElementById('nivelAca').value = this.options[this.selectedIndex].value;">
                    <option value="" disabled="disabled" selected="selected"></option>
                    <option value="1">Pregrado (Ingeniería y T.S.U.)</option>
                    <option value="2">Cursos de Extension</option>
                    <option value="3">Postgrados (Incluye Maestria y Doctorado)</option>
                </select>
			</td>	
		</tr>
		<tr>
			<th align="left"> Descripcion: </th><td colspan="2"><input type="text" name="descripEsp" id="descripEsp" size="65" maxlength="80" /></td>		
		</tr>
		<tr><td colspan='3' align="center">
		<input name="enviar" type="submit" id="enviar" value="Enviar"></input>
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/especialidad.php','col2','centro','0')"/></td></tr>
	</table>
	</form>
	<!--div id="respuesta1"></div -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>