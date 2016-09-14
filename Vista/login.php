<!-- 
	Archivo:		login.php
	Formulario encargado de pedir los datos del inicio de sesion
	enviando las variables user y clave al programa procesarSesion.php
-->
<div id="divpadre">
	<center>
	<table width="696" border="0" align="center" cellpadding="0" cellspacing="0">
	    <tr><td align="center">
	        <div id="sesion">
	            <br /><br /><br /><br /><br /><br /><br />
	            <center><h3>Inicie Sesión</h3></center>
	            <!-- Procesar formulario de forma asincrona (AJAX) -->
				<form name="planilla" id="planilla" method="post" onsubmit="llamarasincronopost('Controlador/procesarSesion.php','divpadre','respuesta','1',
				'user='+document.getElementById('user').value
				+'&amp;clave='+document.getElementById('clave').value); return false" action="#">	
	                <center>
	                <table width="200" border="1" align="center" cellpadding="3" cellspacing="2" bgcolor="#4682B4">
	                <tr>
	                  <td width="94"><div align="right">Usuario:</div></td>
	                  <td width="90"><input name="user" type="text" id="user" size="7" maxlength="8" onkeyUp="return ValNumero(this);" /> </td>
	                </tr>
	                <tr>
	                  <td><div align="right">Contrase&ntilde;a:</div></td>
	                  <td><input name="clave" type="password" id="clave" size="12" maxlength="25" /></td>
	                </tr>
	                </table>                  
	                <input name="enviar" type="submit" id="enviar" value="Enviar" />
	                </center>
	            </form>
	        </div>
	    </td></tr>
	</table>
	</center>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta" style='visibility:hidden'></div>
</div>