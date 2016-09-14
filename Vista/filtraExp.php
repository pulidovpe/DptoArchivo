<?php session_start();
if($_SESSION['tipoPer']!='2')
{
    /* 
		Archivo: filtraExp.php
    	
    	Sino existe variable de sesion que indique que 
      es el usuario Operador, entonces cerrar la sesion 
    */
    header("Location: ../Controlador/cerrarSesion.php");    
    exit;
}
?>
<div id="divpadre4">
	<br />
	<center><h3>BUSCAR EXPEDIENTE DE ALUMNO<h3></center>
	<form name="frmbusqueda" action="" onsubmit="javascript:buscarDato('3'); return false">	
	<font>Cedula:</font><input type="text" name="cedula" id="cedula" size="7" maxlength="8" onkeyUp="return ValNumero(this);" />	
	<input type="submit" name="buscar" id="buscar" value="Buscar" />
	<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/expediente.php','col2','centro','0')"/>		
		</form>
	<fieldset><legend>Resultado</legend>
	<div id="respuesta4"></div>
	</fieldset>
</div>
