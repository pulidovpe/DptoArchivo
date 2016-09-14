<?php session_start();
/**
 * Archivo:  agregaOper.php
 * Formulario encargado de pedir los datos para inscribir operadores.
 *
 * Variables usadas:
 *   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.	
**/
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");
	exit;
}
?>
<div id="divpadre1">
<br />
	<center><h3>AGREGAR OPERADOR<h3></center>	
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/procesarOper.php','divpadre1','respuesta1','6',
	'cedulaPer='+document.getElementById('cedulaPer').value
	+'&amp;nombre='+document.getElementById('nombre').value
	+'&amp;direccion='+document.getElementById('direccion').value
	+'&amp;telefono='+document.getElementById('telefono').value+'-'+document.getElementById('telefono1').value
	+'&amp;sexo='+document.getElementById('sexo').value
	+'&amp;clave1='+document.getElementById('clave1').value
	+'&amp;clave2='+document.getElementById('clave2').value
	+'&amp;tipoPer='+document.getElementById('tipoPer').value); return false" action="#">
	<TABLE border="1" summary="">
		<TR>
		   <Th align="left">Numero de<br>Cédula / Login:</Th><TD><INPUT TYPE="text" NAME="cedulaPer" id="cedulaPer" SIZE="7" MAXLENGTH="8" onkeyUp="return ValNumero(this);" /></TD>
		</TR>
		<TR>
		   <Th align="left">Nombre y Apellidos:</Th><TD><INPUT TYPE="text" NAME="nombre" id="nombre" SIZE="45" MAXLENGTH="50" /></TD>
		</TR>
		<TR>
		   <Th align="left">Dirección:</Th><TD><INPUT TYPE="text" NAME="direccion" id="direccion" SIZE="60" MAXLENGTH="60" /></TD>
		</TR>
		<TR>
		   <Th align="left">Números de Teléfono:</Th>
		   <TD>
		   <INPUT TYPE="text" NAME="telefono" id="telefono" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" /> - 
		   <INPUT TYPE="text" NAME="telefono1" id="telefono1" SIZE="9" MAXLENGTH="10" onkeyUp="return ValNumero(this);" />
		   </TD>
		</TR>
		<Th align="left">Sexo:</Th>
		<TD><select name="sexo" id="sexo" size="1" MAXLENGTH="1">
					<option value=""  selected></option>
					<option value="M">M
					<option value="F">F
			</select> 	  			
		</TD>
		</TR>
		<tr>
		<Th align="left">Contrase&ntilde;a:</Th><TD><INPUT TYPE="password" NAME="clave1" id="clave1" SIZE="10" MAXLENGTH="10" /></TD>
		</TR>
		<tr>
		<Th align="left">Repetir Contrase&ntilde;a:</Th><TD><INPUT TYPE="password" NAME="clave2" id="clave2" SIZE="10" MAXLENGTH="10" /></TD>
		</tr>
		<tr>
		<Th align="left">Tipo de Operador:</Th>
		<TD><select name="tipoPer" id="tipoPer" size="1" MAXLENGTH="1">
				<option value="2" selected>2
			</select> 	  			
		</TD>
		</tr>
		</TABLE>
		<INPUT TYPE="submit" NAME="accion" VALUE="Grabar"><input type="reset" value="Limpiar">
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/operadores.php','col2','centro','0')"/>
	</FORM> 
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>