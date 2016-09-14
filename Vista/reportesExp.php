<?php session_start();
if($_SESSION['tipoPer']!='2')
{
    /* Sino existe variable de sesion que indique que 
        es el usuario Operador, entonces cerrar la sesion 
    */
    header("Location: ../Controlador/cerrarSesion.php");    
    exit;
}
?>
<div style="background-color:#09F; color: #FFF;margin:0 auto;">	
	<form name="reporte" id="reporte" action="../Controlador/paginasB6.php" method="POST">		
	<div id="titulos" align="center" style="background-color:#09F; color: #FFF;">
	  <h1><strong>Reportes de Expedientes</strong></h1>
	</div>
	<table summary="" border="1">
		<tr>
			<td colspan="3" align="center" ><font>Tipo de Expediente:</font></td>
		</tr>
		<tr>
			<td colspan="3" align="center">
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
			</div>
			</td>
		</tr>
		<tr>
			<td><font>Activos:</font></td>
			<td align="center"><font>Especialidad:</font></td>
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
				<font>Expedientes con requisitos faltantes:</font>
				<input type='checkbox' name='requisito' id='requisito' />
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
			<div id="limite1"><font>Limitar los resultados a:</font>
				<input type="text" name="limite" id="limite" size="2" maxlength="4" onkeyUp="return ValNumero(this);" />
			</div>
			</td>	
		</tr>
		<tr>			
			<td colspan="3" align="center">
			<input type="submit" name="buscar" id="buscar" value="Buscar"> 
			<!-- a href="Controlador/paginasB6.php?limite=limi1&busca1=tipo1&busca2=acti1&busca3=esp1&busca4=ced1" target="_blank">Generar PDF</a -->
			<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:window.close();"/>
			</td>	
		</tr>
	</table>
	</form>
</div>
