<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
include_once("../Controlador/conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
?>
<div id="divpadre4">
	<br />
	<center><h3>BUSCAR REQUISITOS<h3></center>
	<!-- Procesar formulario de forma asincrona (AJAX) -->
	<form name="frmbusqueda" action="" onsubmit="javascript:buscarDato('4'); return false">	
	<font>Tipo de Expediente:</font>
	<input type="hidden" name="tipoExp" id="tipoExp" />
	<select name="tipoExp1" id="tipoExp1" size="1" onchange="document.getElementById('tipoExp').value = this.options[this.selectedIndex].value;" >
    <option value="0" disabled="disabled" selected></option>
    <?php
		mysql_query("SET NAMES 'utf8'");					
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
	</select>
	<input type="submit" name="buscar" id="buscar" value="Buscar" />
	<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/requisitos.php','col2','centro','0')"/>		
		</form>
	<fieldset><legend>Resultado</legend>
	<div id="respuesta4"></div>
	</fieldset>
</div>
