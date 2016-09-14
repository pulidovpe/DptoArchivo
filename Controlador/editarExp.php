<?php session_start();
if(($_SESSION['tipoPer']!='1') and ($_SESSION['tipoPer']!='2'))
{
  header("Location: ../Controlador/cerrarSesion.php");
  exit;
}
$login = $_SESSION['user'];
header("Content-Type: text/html;charset=utf-8");
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
$idExp = getParam($_GET['idExp'], "");

// AQUI DEBE RECIBIRSE EL PARAMETRO DE numExp PARA QUE PUEDA OBTENER LOS DATOS.
$query = "SELECT `expediente`.*,`datosPer`.*,`especialidad`.`descripEsp` FROM (`expediente` INNER JOIN `datosPer` 
ON `expediente`.`cedulaExp`=`datosPer`.`cedulaPer`) INNER JOIN `especialidad` ON `expediente`.`codEsp`=`especialidad`.`codEsp` WHERE `expediente`.`numExp` = ".sqlValue($idExp, "int");

$sql = "SELECT * FROM expediente WHERE numExp = ".sqlValue($idExp, "int");
$productos = mysql_query($query, $link);
$registros = mysql_fetch_array($productos);
$total = mysql_num_rows($productos);
if ($total == 0) {
	//echo "<script language='javascript'> ";
	//echo "javascript:llamarasincronoget('Vista/expediente.php','col2','centro')";
	//echo "</script>";
	//echo "Valor de idExp: ".sqlValue($idExp, "int");	
	exit;
}
$fechaE = explode("-",$registros['fechaAbre']);
$dia = $fechaE[2]; // devuelve el día del mes
$mes = $fechaE[1]; // devuelve el número del mes
$anio = $fechaE[0]; // devuelve el año
$fecha = $dia."/".$mes."/".$anio;

$telef = explode("-",$registros['telefono']);
$tele1 = $telef[0];
$tele2 = $telef[1];
?>
 
<div id="divpadre3">
	<form name="planilla3" id="planilla3" method="post" onsubmit="contarChk();llamarasincronopost('Controlador/modificaExp.php','divpadre3','respuesta3','3',
	'fechaAbre='+document.getElementById('fechaAbre').value
	+'&amp;cedulaExp='+document.getElementById('cedulaExp').value
	+'&amp;nombre='+document.getElementById('nombre').value
	+'&amp;sexo='+document.getElementById('sexo').value
	+'&amp;direccion='+document.getElementById('direccion').value
	+'&amp;telefono='+document.getElementById('telefono').value+'-'+document.getElementById('telefono1').value
	+'&amp;ubicacion='+document.getElementById('ubicacion').value
	+'&amp;amonesta='+document.getElementById('amonesta').value
	+'&amp;observa='+document.getElementById('observa').value
	+'&amp;activo='+document.getElementById('activo').value
	+'&amp;especial1='+document.getElementById('especial1').value
	+'&amp;tipoExp1='+document.getElementById('tipoExp1').value
	+'&amp;reqMar='+document.getElementById('reqMar').value
	+'&amp;loginH='+document.getElementById('loginH').value
	+'&amp;reqpend='+document.getElementById('reqpend').value
	+'&amp;idExp='+document.getElementById('idExp').value); return false" action="#">
	<input type="hidden" name="loginH" id="loginH" value="<?php echo $login; ?>" />
  <table width="520" border="1" summary="">
		<tr>
			<th> Numero de<br>Expediente: <br><input type="text" name="numExp" id="numExp" disabled="disabled" size="3" value="<?php echo $registros['numExp']; ?>" /></th><td></td>
			<th align="left"> Fecha: <br>
			<input type="text" name="fechaAbre" id="fechaAbre" size="8" maxlength="10" disabled="disabled" value="<?php echo $fecha; ?>" onClick="popUpCalendar(this, planilla3.fechaAbre, 'dd/mm/yyyy');" />			
			</th>
		</tr>		
		<tr>
			<th align="left"> Cédula.: </th><td align="left">
			<input type="text" name="cedulaExp" id="cedulaExp" size="7" maxlength="9" disabled="disabled" value="<?php echo $registros['cedulaExp']; ?>"/>		
			</td><td></td>	
		</tr>
		<tr>
			<th align="left"> Nombre y<br>Apellido.: </th><th align="left">
			<input type="text" name="nombre" id="nombre" size="35" maxlength="45" value="<?php echo $registros['nombre']; ?>" />			
			</th><th>
			Sexo:<br>
			<input type="text" name="sexo" id="sexo" size="2" maxlength="1" disabled="disabled" value="<?php echo $registros['sexo']; ?>" /><br>
			<select name="sexo1" id="sexo1" size="1" onchange="document.getElementById('sexo').value = this.options[this.selectedIndex].value;">
				<option value="" disabled="disabled" selected></option>
				<option value="M">M
				<option value="F">F
			</select>
			</td>
		</tr>
		<tr>
			<th align="left"> Dirección.: </th><td><input type="text" name="direccion" id="direccion" size="55" maxlength="80" value="<?php echo $registros['direccion']; ?>" /></td><td></td>		
		</tr>
		<tr>
			<th align="left"> Teléfono.: </th>
			<td align="left">
			<input type="text" name="telefono" id="telefono" size="9" maxlength="10" onkeyUp="return ValNumero(this);" value="<?php echo $tele1; ?>" /> - 
			<input type="text" name="telefono1" id="telefono1" size="9" maxlength="10" onkeyUp="return ValNumero(this);" value="<?php echo $tele2; ?>" />
			</td><td></td>
		</tr>
		<tr>
			<th align="left"> Ubicación.:</th><td align="left">
			<input type="text" name="ubicacion" id="ubicacion" size="45" maxlength="45" value="<?php echo $registros['ubicacion']; ?>" /></td>
			<th>
			Amonestado:<br>
			<input type="text" name="amonesta" id="amonesta" size="2" maxlength="1" disabled="disabled" value="<?php echo $registros['amonesta']; ?>" /><br>
			<select name="amonesta1" id="amonesta1" size="1" onchange="document.getElementById('amonesta').value = this.options[this.selectedIndex].value;" >
				<option value="" disabled="disabled" selected></option>
				<option value="S">S
				<option value="N">N
			</select>
			</th>
		</tr>
		<tr>
			<th align="left"> Observación.: </th><td><input type="text" name="observa" id="observa" size="55" maxlength="80" value="<?php echo $registros['observa']; ?>" /></td>
			<th>
			Activo:<br>
			<input type="text" name="activo" id="activo" size="2" maxlength="1" disabled="disabled" value="<?php echo $registros['activo']; ?>" /><br>
			<select name="activo1" id="activo1" size="1" onchange="document.getElementById('activo').value = this.options[this.selectedIndex].value;" >
				<option value="" disabled="disabled" selected></option>
				<option value="S">S
				<option value="N">N
			</select>			
			</th>		
		</tr>
		<tr>
			<th align="left"> Especialidad.:</th><td align="left">
			<select name="especial" id="especial" size="1" onchange="document.getElementById('especial1').value = this.options[this.selectedIndex].value;">
         	<option value="0" disabled="disabled" selected></option>
         	<?php
					$link=conectarse();
					mysql_query("SET NAMES 'utf8'");					
					$res = mysql_query("SELECT * FROM especialidad",$link);
					$cant =  mysql_num_rows($res);
					if($cant>0) {						
						while($rs = mysql_fetch_array($res)) {
							$valor= $rs['codEsp'];
							if($valor==$registros['codEsp']) {
								$codesp = $valor.'-'.substr($rs['descripEsp'], 0, 80);
							}
				?>				
				<option value="<?php echo $valor; ?>"><?php echo $valor."-".$rs['descripEsp']; ?>
				<?php
					    }
				   }
				   //desconectar(); 
				?>
			</select><br>			
			<input type='text' name="especial1" id="especial1"  disabled="disabled" size="2" value="<?php echo $registros['codEsp']; ?>" />
			<input type='text' name="especial2" id="especial2" size="50" disabled="disabled" value="<?php echo $codesp; ?>" />			
			</td>
			<td></td>
		</tr>
		<tr>
			<th align="left"> Tipo de<br>Expediente.:</th><td colspan="2" align="left">
			<select name="tipoExp" id="tipoExp" size="1" disabled="disabled" onchange="document.getElementById('tipoExp1').value = this.options[this.selectedIndex].value;cargaReq(this.options[this.selectedIndex].value,'0');">
         	<option value="0" selected></option>
         	<?php
					$link=conectarse();
					mysql_query("SET NAMES 'utf8'");					
					$res1 = mysql_query("SELECT * FROM tipoReq",$link);
					$cant1 =  mysql_num_rows($res1);
					if($cant1>0) {						
						while($rs1 = mysql_fetch_array($res1)) {
							$valor1= $rs1['codTipoExp'];
							if($valor1==$registros['codTipoExp']) {
								$codtipo = $valor1.'-'.substr($rs1['descripTExp'], 0, 80);
							}
				?>				
				<option value="<?php echo $valor1; ?>"><?php echo $valor1."-".substr($rs1['descripTExp'], 0, 80); ?>
				<?php
					    }
				   }
				   //desconectar();
				?>
			</select><br>
			<input type="hidden" name="reqMar" id="reqMar" /> 
			<input type="text" name="tipoExp1" id="tipoExp1" disabled="disabled" size="2" value="<?php echo $registros['codTipoExp']; ?>" />
			<input type='text' name="tipoExp2" id="tipoExp2" size="60" disabled="disabled" value="<?php echo $codtipo; ?>" />			
			</td>
		</tr>
		<tr>
			<th colspan="3" align="center">
				Requisitos<br>por entregar.:
			</th>
		</tr>
			<td colspan="3"><div id="reqXent">
			<?php 
			$req1=0;$cuales1='';
			$req1=$registros['codTipoExp'];
			$cuales1=$registros['requisitos'];
			include("reqCargadoV.php"); 
			?>
			</div></td>
		</tr>
		<tr><td colspan="3" align="center">
		<input name="enviar" type="submit" id="enviar" value="Enviar" />
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/expediente.php','col2','centro','0')"/></td></tr>
		<input type="hidden" id="idExp" name="idExp" value="<?php echo $registros['numExp']; ?>" />
	</table>
<!-- div id="respuesta3"></div -->
	<div id="respuesta3" style='visibility:hidden'></div>
</div>
