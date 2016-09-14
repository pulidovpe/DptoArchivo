<?php session_start();
if($_SESSION['tipoPer']!='1')
{
	/* 
		Archivo: historico.php

		Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: ../Controlador/cerrarSesion.php");	
	exit;
} 
?>
<div id="divpadre4">	
	<form name="formFecha" action="#">		
	<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	  <h1><strong>Historial de Operaciones Realizadas</strong></h1>
	</div>
	<table summary="" border="0">
	<tr>
		<td>Operador:</td>
		<td>Cédula:</td>
		<td>Documento:</td>
		<td>Fecha:</td>
		<td>Operación:</td>
	</tr>
	<tr>
		<td>
		<div id="operador">
			<select name="op1" id="op1" size="1" onchange="document.getElementById('op2').value = this.options[this.selectedIndex].value;">
				<option value=""  selected></option>
		      	<?php
			         header("Content-Type: text/html;charset=utf-8");
						include_once("../Controlador/conexion.php");
						$link=conectarse();
						mysql_query("SET NAMES 'utf8'");
						$sql = "SELECT * FROM clavePer WHERE tipoPer LIKE '2' OR tipoPer LIKE '1'";					
						$res = mysql_query($sql,$link);
						$cant =  mysql_num_rows($res);
						if($cant>0){						
							while($rs = mysql_fetch_array($res)){
								$valor= $rs['loginPer'];
					?>				
				<option value="<?php echo $valor; ?>">
					<?php echo $valor; 
					    }
				   }
					?>
			</select><input type="text" id="op2" name="op2"  size="6" onkeyUp="return ValNumero(this);" />
		</div>
		</td>
		<td>
		<div id="expediente">
			<input type="text" name="cedula" id="cedula" size="6" onkeyUp="return ValNumero(this);" />
		</div>
		</td>
		<td>
		<div id="documento">
			<input type="text" name="titulo" id="titulo" size="30"/>
		</div>		
		</td>
		<td>
		<div id="fecha1">
			<input type="text" name="fecha0" id="fecha0" onClick="popUpCalendar(this, formFecha.fecha0, 'yyyy-mm-dd');" value="" size="8" />
		</div>		
		</td>		
		<td>
		<div id="operacion1">
			<select name="operacion" id="operacion" size="1" >
         	<option value="" selected></option>
         	<option value="INSERCION" >Inserción</option>
         	<option value="MODIFICACION" >Modificación</option>
         	<option value="ELIMINACION" >Eliminación</option>
	   	</select>
		</div>		
		</td>
	</tr>
	<tr>
		<td colspan="5" align="center">
		<input type="button" name="buscar" id="buscar" value="Buscar" onclick="javascript:buscarDato('5'); return false" />
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/historico.php','col2','centro','0')"/>
		</td>	
	</tr>
	<tr>
		<td colspan="5">
		<div id="limite1"><font>Limitar resultados a:</font>
			<input type="text" name="limite" id="limite" size="1" maxlength="2" value="10" onkeyUp="return ValNumero(this);" />
		</div>
		</td>	
	</tr>
	</table>
	</form>
	<fieldset><legend>Resultado</legend>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta4"></div>
	</fieldset>
</div>
