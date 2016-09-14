<?php session_start();
if($_SESSION['tipoPer']!='2')
{
  header("Location: ../Controlador/cerrarSesion.php");
  exit;
} 
?>

<div id="divpadre4">	
	<form name="formFecha" action="#">		
	<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	  <h1><strong>Reportes de Expedientes</strong></h1>
	</div>
	<table summary="" border="1">
	<tr>
		<td colspan="3"><font>Tipo de Expediente:</font></td>
	</tr>
	<tr>
		<td colspan="3">
		<div id="tipoexp">
			<select name="op1" id="op1" size="1" onchange="document.getElementById('tipo').value = this.options[this.selectedIndex].value;">
				<option value=""  selected></option>
		      	<?php
			         header("Content-Type: text/html;charset=utf-8");
						include_once("../Controlador/conexion.php");
						$link=conectarse();
						mysql_query("SET NAMES 'utf8'");
						$sql = "SELECT * FROM tipoReq ORDER BY codTipoExp ASC ";					
						$res = mysql_query($sql,$link);
						$cant =  mysql_num_rows($res);
						if($cant>0){						
							while($rs = mysql_fetch_array($res)){
								$valDescripTExp = $rs['descripTExp'];
								$valCodTExp = $rs['codTipoExp'];
					?>				
				<option value="<?php echo $valCodTExp; ?>">
					<?php echo $valDescripTExp; 
					    }
				   }
					?>
			</select><input type="hidden" id="tipo" name="tipo" />
		</div></td>
	</tr>
	<tr>
		<td><font>Activos:</font></td>
		<td><font>Carrera:</font></td>
		<td><font>Cédula:</font></td>
		<!-- td><font>Operación:</font></td -->
	</tr>
	<tr>
		<td>
		<div id="act">
			<select name="activo" id="activo" size="1" >
         	<option value="" selected></option>
         	<option value="S" >S</option>
         	<option value="N" >N</option>
	   	</select>
		</div>
		</td>
		<td>
		<div id="espe">
			<select name="op2" id="op2" size="1" onchange="document.getElementById('especial').value = this.options[this.selectedIndex].value;">
				<option value=""  selected></option>
		      	<?php
			         header("Content-Type: text/html;charset=utf-8");
						include_once("../Controlador/conexion.php");
						$link=conectarse();
						mysql_query("SET NAMES 'utf8'");
						$sql = "SELECT * FROM especialidad ORDER BY codEsp ASC ";					
						$res = mysql_query($sql,$link);
						$cant =  mysql_num_rows($res);
						if($cant>0){						
							while($rs = mysql_fetch_array($res)){
								$valCodEsp = $rs['codEsp'];
								$valDescripEsp = $rs['descripEsp'];
					?>				
				<option value="<?php echo $valCodEsp; ?>">
					<?php echo $valDescripEsp; 
					    }
				   }
					?>
			</select><input type="hidden" id="especial" name="especial" />
		</div>		
		</td>
		<td>
		<div id="ced">
			<input type="text" name="cedula" id="cedula" size="6" maxlength="9" onkeyUp="return ValNumero(this);" />
		</div>		
		</td>		
	</tr>
	<tr>
		<td colspan="3" align="center">
		<script language="javascript" type="text/javascript">
			var lim1 = document.getElementById('limite').value;
			var tip1 = document.getElementById('tipo').value;
			var act1 = document.getElementById('activo').value;
			var esp1 = document.getElementById('especial').value;
			var ced1 = document.getElementById('cedula').value;	 
		</script>
		<!-- input type="button" name="buscar" id="buscar" value="Buscar" --> 
		<!-- a href="Controlador/paginasB6.php?limite=limi1&busca1=tipo1&busca2=acti1&busca3=esp1&busca4=ced1" target="_blank">Generar PDF</a -->
		<?php
		printf("
		<a onclick=\"Controlador/editarReq.php?limite=%s\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Generar PDF
		</a>",document.getElementById('limite').value);
		?>		
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/reportesExp.php','divpadre2','paginador','0')"/>
		</td>	
	</tr>
	<tr>
		<td colspan="3">
		<div id="limite1"><font>Limitar resultados a:</font>
			<input type="text" name="limite" id="limite" size="1" maxlength="2" onkeyUp="return ValNumero(this);" />
		</div>
		</td>	
	</tr>
	</table>
	</form>
	<fieldset><legend>Resultado</legend>
	<div id="respuesta4"></div>
	</fieldset>
</div>