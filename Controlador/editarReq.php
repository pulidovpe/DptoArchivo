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
// AQUI DEBEN RECIBIRSE LOS ID PARA QUE SE PUEDAN SER "ESCAPADOS" LOS DATOS.
$idReq = getParam($_GET['idReq'], "");
$idTip = getParam($_GET['idTip'], "");
$sql = "SELECT * FROM requisiExp WHERE codReqExp = ".sqlValue($idReq, "int");
$productos = mysql_query($sql, $link);
$registros = mysql_fetch_array($productos);
$total = mysql_num_rows($productos);
if ($total == 0) {
	// Sino existe el Requisito hubo un error y se regresa al modulo padre
	echo "<script language='javascript'> ";
	echo "javascript:llamarasincronoget('Vista/requisitos.php','col2','centro')";
	echo "</script>";
	exit;
} else {
	$describe = $registros['descripcion'];
	$tipo = $registros['codTipoExp'];
}
?>
 
<div id="divpadre3">
	<br />
	<center><h3>EDITAR REQUISITOS<h3></center>
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/modificaReq.php','divpadre3','respuesta3','5',
	'tipoExp='+document.getElementById('tipoExp').value
	+'&amp;describe='+document.getElementById('describe').value
	+'&amp;idReq='+document.getElementById('idReq').value); return false" action="#">
	<input type="hidden" name="tipoExp" id="tipoExp" disabled="disabled" size="3" value="<?php echo $tipo; ?>" />
	<table width="560" border="1" summary="">
		<tr><th colspan='2' align="center">Tipo de Expediente:</th></tr>
		<tr><td colspan='2' align="center">
			<select name="tipoExp2" id="tipoExp2" size="1" onchange="document.getElementById('tipoExp').value = this.options[this.selectedIndex].value;document.getElementById('tipoExp1').value = this.options[this.selectedIndex].value;" >
				<option value="0" disabled="disabled" selected></option>
				<?php				
					$res1 = mysql_query("SELECT * FROM tipoReq",$link);
					$cant1 =  mysql_num_rows($res1);
					if($cant1>0) {						
						while($rs1 = mysql_fetch_array($res1)) {
							$valor1= $rs1['codTipoExp'];
							if($valor1==$idTip) {
								$codtipo = $valor1.'-'.substr($rs1['descripTExp'], 0, 80);
							}
				?>				
				<option value="<?php echo $valor1; ?>"><?php echo $valor1."-".substr($rs1['descripTExp'], 0, 80); ?>
				<?php
						}
					}
				?>
			</select>
		</td></tr>
		<tr><td colspan='2' align="center">
			<input type='text' name="tipoExp1" id="tipoExp1" size="60" disabled="disabled" value="<?php echo $codtipo; ?>" />		
		</tr><tr>
			<th align="left">Código del Requisito:</th>	
			<td>
			<input type='text' name="idReq" id="idReq" size="2" disabled="disabled" value="<?php echo $idReq; ?>" />
			</td>	
		</tr><tr>
			<th colspan="2" align="center"> Descripción: </th>
		</tr><tr>
			<td colspan="2" align="center"><input type="text" name="describe" id="describe" size="75" maxlength="155" value="<?php echo $describe; ?>"/></td>
		</tr>
		<tr><td colspan='2' align="center">
			<input name="enviar" type="submit" id="enviar" value="Enviar" />
			<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/requisitos.php','col2','centro','0')"/>
		</td></tr>
	</table>
	</form>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta3" style='visibility:hidden'></div>
</div>