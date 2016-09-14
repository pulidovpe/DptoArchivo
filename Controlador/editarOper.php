<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");
	exit;
}
header("Content-Type: text/html;charset=utf-8");
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
$idOper = getParam($_GET["idOper"], "");
// AQUI DEBE RECIBIRSE EL PARAMETRO DE ipOper PARA QUE PUEDA OBTENER LOS DATOS.
$sql = "SELECT * FROM clavePer,datosPer WHERE loginPer = cedulaPer AND loginPer = ".sqlValue($idOper, "text");
$productos = mysql_query($sql, $link);
$registros = mysql_fetch_array($productos);
$total = mysql_num_rows($productos);
if ($total == 0) {
	// Sino existe el Operador hubo un error y se regresa al modulo padre
	echo "<script language='javascript'> ";
	echo "javascript:llamarasincronoget('Vista/operadores.php','col2','centro')";
	echo "</script>";	
	//exit;
}
// Separamos los numeros de telefono en variables distintas
$telef = explode("-",$registros['telefono']);
$tele1 = $telef[0];
$tele2 = $telef[1];
?>
<div id="divpadre1">
	<br>
	<center><h3>EDITAR OPERADOR</h3></center>
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/modificaOper.php','divpadre1','respuesta1','6',
	'cedulaPer='+document.getElementById('cedulaPer').value
	+'&amp;nombre='+document.getElementById('nombre').value
	+'&amp;direccion='+document.getElementById('direccion').value
	+'&amp;telefono='+document.getElementById('telefono').value+'-'+document.getElementById('telefono1').value
	+'&amp;sexo='+document.getElementById('sexo').value
	+'&amp;clave1='+document.getElementById('clave1').value
	+'&amp;clave2='+document.getElementById('clave2').value
	+'&amp;idOper='+document.getElementById('idOper').value
	+'&amp;tipoPer='+document.getElementById('tipoPer').value); return false" action="#">
		<TABLE border="1" summary="">
			<TR>
			   <Th align="left">Numero de<br>Cédula / Login:</Th><TD><INPUT TYPE="text" NAME="cedulaPer" id="cedulaPer" disabled="disabled" SIZE="7" MAXLENGTH="8" onkeyUp="return ValNumero(this);" value="<?php echo $registros['loginPer']; ?>" /></TD>
			</TR>
			<TR>
			   <Th align="left">Nombre y Apellidos:</Th><TD><INPUT TYPE="text" NAME="nombre" id="nombre" SIZE="45" MAXLENGTH="50" value="<?php echo $registros['nombre']; ?>" /></TD>
			</TR>
			<TR>
			   <Th align="left">Dirección:</Th><TD><INPUT TYPE="text" NAME="direccion" id="direccion" SIZE="60" MAXLENGTH="60" value="<?php echo $registros['direccion']; ?>" /></TD>
			</TR>
			<TR>
			   <Th align="left">Numero de Teléfono:</Th>
			   <TD>
			   <INPUT TYPE="text" NAME="telefono" id="telefono" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" value="<?php echo $tele1; ?>" /> - 
			   <INPUT TYPE="text" NAME="telefono1" id="telefono1" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" value="<?php echo $tele2; ?>" />
			   </TD>
			</TR>
			<Th align="left">Sexo:</th><td>
				<input type="text" name="sexo" id="sexo" size="2" maxlength="1" disabled="disabled" value="<?php echo $registros['sexo']; ?>" /><br>
				<select name="sexo1" id="sexo1" size="1" onchange="document.getElementById('sexo').value = this.options[this.selectedIndex].value;">
					<option value="" disabled="disabled" selected></option>
					<option value="M">M
					<option value="F">F
				</select> 	  			
			</TD>
			</TR>
			<tr><th colspan="2" align="center">CAMBIAR CONTRASE&Ntilde;A<br>
				<input style="display:block" type="button" name="cambiar" id="cambiar" value="Cambiar" 
				onclick="document.getElementById('clave2').disabled=false;
				document.getElementById('clave2').value='';document.getElementById('clave1').value='';
				document.getElementById('clave1').disabled=false;document.getElementById('clave1').focus();				
				document.getElementById('deshacer').style.display='block';document.getElementById('cambiar').style.display='none';" /> 
				<input style="display:none" type="button" name="deshacer" id="deshacer" value="Deshacer" 
				onclick="document.getElementById('clave2').disabled=true;document.getElementById('clave2').value='***';
				document.getElementById('clave1').disabled=true;document.getElementById('clave1').value='***';
				document.getElementById('clave1').focus();document.getElementById('deshacer').style.display='none';
				document.getElementById('cambiar').style.display='block';" />			
			</th></tr>
			<tr>
			<Th align="left">Contrase&ntilde;a:</Th><TD><INPUT TYPE="password" NAME="clave1" id="clave1" disabled="disabled" SIZE="10" MAXLENGTH="10" MINLENGTH="3" value="***" /></TD>
			</TR>
			<tr>
			<Th align="left">Repetir Contrase&ntilde;a:</Th><TD><INPUT TYPE="password" NAME="clave2" id="clave2" disabled="disabled" SIZE="10" MAXLENGTH="10" MINLENGTH="3" value="***" /></TD>
			</tr>
			<tr>
			<Th align="left">Tipo de Operador:</Th>
			<TD><input name="tipoPer" id="tipoPer" size="1" MAXLENGTH="1" disabled="disabled" value="<?php echo $registros['tipoPer']; ?>" /> 	  			
			</TD>
			</tr>
			</TABLE>
	     <INPUT TYPE="submit" NAME="accion" VALUE="Grabar" />   
	     <input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/operadores.php','col2','centro','0')"/>
	    <input type="hidden" id="idOper" name="idOper" value="<?php echo $registros['loginPer']; ?>" />
	</form> 
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>