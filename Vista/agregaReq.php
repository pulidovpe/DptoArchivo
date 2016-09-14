<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* 
		Archivo: agregaReq.php

		Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
include_once("../Controlador/conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
?>
<div id="divpadre1">
	<br />
	<center><h3>AGREGAR REQUISITOS<h3></center>
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/procesarReq.php','divpadre1','respuesta1','5',
	'tipoExp='+document.getElementById('tipoExp').value
	+'&amp;describe='+document.getElementById('describe').value); return false" action="#">
	<input type="hidden" name="tipoExp" id="tipoExp" />
	<input type="hidden" name="idReq" id="idReq" value="1"/>
	<table width="520" border="1" summary="">
		<tr><th colspan='3' align="center">Tipo de Expediente:</th></tr>
		<tr><td colspan='3' align="center">
			<select name="tipoExp1" id="tipoExp1" size="1" onchange="document.getElementById('tipoExp').value = this.options[this.selectedIndex].value;" >
				<option value="0" disabled="disabled" selected></option>
				<?php
					$res1 = mysql_query("SELECT * FROM tipoReq",$link);
					$cant1 =  mysql_num_rows($res1);
					if($cant1>0) {						
						while($rs1 = mysql_fetch_array($res1)) {
							$valor1= $rs1['codTipoExp'];
				?>				
				<option value="<?php echo $valor1 ?>"><?php echo $valor1."-".substr($rs1['descripTExp'], 0, 85); ?>
				<?php
						}
					}
				?>
			</select></td>
		</tr><tr>
			<th colspan="3" align="center"> Descripción: </th>
		</tr><tr>
			<td colspan="3" align="center">
			<input type="text" name="describe" id="describe" size="75" maxlength="155" /></td>		
		</tr>
		<tr><td colspan='3' align="center">
			<input name="enviar" type="submit" id="enviar" value="Enviar"></input>
			<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/requisitos.php','col2','centro','0')"/>
		</td></tr>
	</table>
	</form>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>