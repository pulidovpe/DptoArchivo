<?php session_start();
if($_SESSION['tipoPer']!='2')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
?>
<div id="divpadre4">
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="frmbusqueda" action="" onsubmit="javascript:buscarDato('2'); return false">	
	<font>Titulo:</font><input type="text" name="titulo" id="titulo" />
	<input type="submit" name="buscar" id="buscar" value="Buscar" />
	<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/documento.php','col2','centro','0')"/>		
		</form>
	<fieldset><legend>Resultado</legend>
	<!-- Aqui se muestran los resultados -->
	<div id="respuesta4"></div> 
	</fieldset>
</div>
