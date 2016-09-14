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
<div id="divpadre2">
	<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	  <h1><strong>Registro de Expedientes de Alumnos</strong></h1>
	</div>
	<center>
	<div id="botonera"  align="center" style="background-color:#CCC; ">
		<br />
		<table summary="">
			<tr>
				<td class="cuadro"><a onclick="javascript:llamarasincronoget('Vista/agregaExp.php','divpadre2','paginador','0');" style='cursor:pointer'>Agregar</a></td>		
				<td class="cuadro"><a onclick="javascript:llamarasincronoget('Vista/filtraExp.php','divpadre2','paginador','0');" style='cursor:pointer'>Búsqueda</a></td>
				<!-- td class="cuadro"><a onclick="javascript:llamarasincronoget('Vista/reportesExp.php','divpadre2','paginador','0');" style='cursor:pointer'>Reportes</a></td -->
				<td class="cuadro"><a onclick="javascript:popupCentrado('Vista/reportesExp.php','Reportes en PDF','640','300','0')" style='cursor:pointer'>Reportes</a></td>		
			</tr>
		</table>
	    <br />
	</div>
	<div id="filtro"></div>
	<div id="paginador">
	<?php include('../Controlador/paginas3.php')?>
	</div>
	</center>
</div>