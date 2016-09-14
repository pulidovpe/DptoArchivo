<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* 
		Archivo: eliminarExp.php

		Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
?>
<div id="divpadre4">
	<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	  <h1><strong>Eliminación de Expedientes de Alumnos</strong></h1>
	</div>
	<div id="paginador">
		<!-- Procesar formulario de forma asincrona (AJAX) -->
		<form name="frmbusqueda" action="" onsubmit="javascript:buscarDato('0'); return false">	
		<font>Cedula:</font><input type="text" name="cedula" id="cedula" size="7" maxlength="8" onkeyUp="return ValNumero(this);" />	
		<input type="submit" name="buscar" id="buscar" value="Buscar" />
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/eliminarExp.php','col2','centro','0')"/>		
			</form>
		<fieldset><legend>Resultado</legend>
		<div id="respuesta4"></div> <!-- Aqui se muestran los resultados -->
		</fieldset>
		<!-- Atencion aqui para borrar -->
		<!--div id="filtro"></div-->
	</div>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>
