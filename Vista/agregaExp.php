<?php session_start();
if($_SESSION['tipoPer']!='2')
{
    /* 
		Archivo: agregaExp.php
	
    	Sino existe variable de sesion que indique que 
      es el usuario Operador, entonces cerrar la sesion 
    */
    header("Location: ../Controlador/cerrarSesion.php");    
    exit;
}
$login = $_SESSION['user'];
// Nos conectamos a la base de datos
include_once("../Controlador/conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Obtenemos el ID del proximo registro
$resultado = mysql_query("SELECT auto_increment FROM information_schema.tables WHERE table_name='expediente' ",$link);
$registros = mysql_fetch_array($resultado);
$ultimo = $registros['auto_increment'];
desconectar($link);

$dia = date(d); // devuelve el día del mes
$mes = date(m); // devuelve el número del mes
$anio = date(Y); // devuelve el año
$fecha = $dia."/".$mes."/".$anio;
?>

<div id="divpadre1">
	<br />
	<center><h3>AGREGAR EXPEDIENTE<h3></center>
  <!-- Procesar formulario de forma asincrona (AJAX) -->
  <form name="planilla3" id="planilla3" method="post" onsubmit="contarChk();llamarasincronopost('Controlador/procesarExp.php','divpadre1','respuesta1','3',
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
	+'&amp;loginH='+document.getElementById('loginH').value
	+'&amp;reqpend='+document.getElementById('reqpend').value
	+'&amp;reqMar='+document.getElementById('reqMar').value); return false" action="#">	
	<input type="hidden" name="loginH" id="loginH" value="<?php echo $login; ?>" />	
  <table width="520" border="1" summary="">
		<tr>
			<th> Número de<br>Expediente: <br><input type="text" name="numExp" id="numExp" disabled="disabled" size="3" value="<?php echo $ultimo; ?>" /></th><td></td>
			<th align="center"> Fecha: <br>
			<input type="text" name="fechaAbre" id="fechaAbre" size="8" maxlength="10" value="<?php echo $fecha; ?>" onClick="popUpCalendar(this, planilla3.fechaAbre, 'dd/mm/yyyy');" />			
			</th>
		</tr>		
		<tr>
			<th align="left"> Cédula.: </th><td align="left">
			<input type="text" name="cedulaExp" id="cedulaExp" size="7" maxlength="8" onkeyUp="return ValNumero(this);" />		
			</td><td></td>	
		</tr>
		<tr>
			<th align="left"> Nombre y<br>Apellido.: </th><th align="left">
			<input type="text" name="nombre" id="nombre" size="35" maxlength="45" />			
			</th><th>
			Sexo:<br>
			<select name="sexo" id="sexo" size="1">
				<option value="" disabled="disabled" selected></option>
				<option value="M">M
				<option value="F">F
			</select>
			</th>
		</tr>
		<tr>
			<th align="left"> Dirección.: </th><td><input type="text" name="direccion" id="direccion" size="50" maxlength="80" /></td><td></td>		
		</tr>
		<tr>
			<th align="left"> Teléfonos.: </th>
			<td align="left">
			<INPUT TYPE="text" NAME="telefono" id="telefono" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" /> - 
		   <INPUT TYPE="text" NAME="telefono1" id="telefono1" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" />
			</td><td></td>
		</tr>
		<tr>
			<th align="left"> Ubicación.:</th><td align="left">
			<input type="text" name="ubicacion" id="ubicacion" size="45" maxlength="45"></td>
			<th>
			Amonestado:<br>
			<select name="amonesta" id="amonesta" size="1">
				<option value="" disabled="disabled" selected></option>
				<option value="S">S
				<option value="N">N
			</select>
			</th>
		</tr>
		<tr>
			<th align="left"> Observación.: </th><td><input type="text" name="observa" id="observa" size="50" maxlength="80" /></td>
			<th>
			Activo:<br>
			<select name="activo" id="activo" size="1">
				<option value="S" selected>S</option>
				<option value="N">N</option>
			</select>			
			</th>		
		</tr>
		<tr>
			<th align="left"> Especialidad.:</th><td align="left">
			<input type='hidden' name="especial1" id="especial1" />			
			<select name="especial" id="especial" size="1" onchange="document.getElementById('especial1').value = this.options[this.selectedIndex].value;">
         	<option value="0" disabled="disabled" selected></option>
         	<?php
         		// Nos conectamos a la base de datos
         		$link=conectarse();
					mysql_query("SET NAMES 'utf8'");		
					// Se muestran todas las especialidades disponibles			
					$res = mysql_query("SELECT * FROM especialidad",$link);
					$cant =  mysql_num_rows($res);
					if($cant>0){						
						while($rs = mysql_fetch_array($res)){
							$valor= $rs['codEsp'];
				?>				
				<option value="<?php echo $valor; ?>"><?php echo $valor."-".$rs['descripEsp']; ?>
				<?php
					    }
				   }
				?>
			</select></td>
			<td></td>
		</tr>
		<tr>
			<th align="left"> Tipo de<br>Expediente.:</th><td colspan="2" align="left">
			<input type="hidden" name="tipoExp1" id="tipoExp1" />			
			<select name="tipoExp" id="tipoExp" size="1" onchange="document.getElementById('tipoExp1').value = this.options[this.selectedIndex].value;cargaReq(this.options[this.selectedIndex].value,'0');">
         	<option value="0" selected></option>
         	<?php
         		// Nos conectamos a la base de datos
					$link=conectarse();
					mysql_query("SET NAMES 'utf8'");		
					// Se muestran todos los requisitos disponibles			
					$res1 = mysql_query("SELECT * FROM tipoReq",$link);
					$cant1 =  mysql_num_rows($res1);
					if($cant1>0){						
						while($rs1 = mysql_fetch_array($res1)){
							$valor1= $rs1['codTipoExp'];
				?>				
				<option value="<?php echo $valor1; ?>"><?php echo $valor1."-".substr($rs1['descripTExp'], 0, 80); ?>
				<?php
					   }
				   }
				?>
			</select></td>
		</tr>
		<tr>
			<th colspan="3" align="center">
				Requisitos<br>por entregar.:
				<input type="hidden" name="reqMar" id="reqMar" />
			</th>
		</tr>
			<td colspan="3">
				<!-- Aqui se cargan los requisitos en checklist usando AJAX -->
				<div id="reqXent"></div>
			</td>
		</tr>
		<tr><td colspan="3" align="center">
		<input name="enviar" type="submit" id="enviar" value="Enviar" />
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/expediente.php','col2','centro','0')"/></td></tr>
	</table>
	</form>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>