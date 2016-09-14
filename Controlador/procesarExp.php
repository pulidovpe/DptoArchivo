<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Esta funcion reemplaza los $_POST por cada variable y 
import_request_variables('P','var_');
// les asigna el prefijo var_ a cada name del formulario enviado.
//Convertir la cadena fechaAbre en formato date para mysql.  
$fecha = explode("/", $var_fechaAbre);
$fechaSQL = $fecha[2]."-".$fecha[1]."-".$fecha[0];  
if($fechaSQL=='' || $var_cedulaExp=='' || $var_nombre=='' || $var_sexo=='' || $var_direccion=='' || $var_ubicacion=='' || $var_especial1==0 || $var_tipoExp1==0 || $var_reqMar=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS - var_tipoExp1:".$var_tipoExp;
} else {
	// Verificamos que el alumno no exista
	$sql = "SELECT clavePer.loginPer,clavePer.tipoPer FROM dpto_archivo.clavePer WHERE loginPer= '".$var_cedulaExp."' ";
	$query = mysql_query($sql,$link);
	$fila = mysql_fetch_assoc($query);
	$num1 = mysql_num_rows($query);
	if($num1 > 0) {
		// si el alumno existe
		// PREGUNTAR SI YA TIENE EXPEDIENTE
		$sql = "SELECT `expediente`.`codEsp`,`expediente`.`cedulaExp` FROM `expediente` WHERE `expediente`.`cedulaExp`='$var_cedulaExp' ";
		$busca = mysql_query($sql,$link);
		$num2 = mysql_num_rows($busca);
		if($num2 > 0) {
			// Si tiene expediente
			// PREGUNTAR SI EXISTE EN LA MISMA ESPECIALIDAD
			$campo = mysql_fetch_array($busca);			
			if($var_especial1 == $campo['codTipoExp']) {
				echo "15"."	YA EXISTE ESPECIALIDAD!";
			} else {
				// Actualizo en clavePer y datosPer mediante un Procedimiento Almacenado
				$sql1 = "CALL dpto_archivo.per_upd('$var_cedulaExp', '$var_loginH', '$var_nombre', '$var_direccion', '$var_telefono', '$var_sexo')";
				$result1=mysql_query($sql1,$link);
				// Verifico que no haya errores
				if($result1==false) {
					$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
		    		$message .= 'Cual consulta: ' . $sql1;
					echo "03 "." ERROR AL ACTUALIZAR ALUMNO!";
				}
				// Inserto en expediente mediante un Procedimiento Almacenado
				$sql2 = "CALL dpto_archivo.exp_ins(NULL, '$var_cedulaExp', '$fechaSQL', '$fechaSQL', $var_especial1, $var_tipoExp1, '$var_reqMar', '$var_ubicacion', '$var_amonesta', '$var_observa', '$var_activo', '$var_loginH', '$var_reqpend')";
				$result2=mysql_query($sql2,$link);
				// Verifico que no haya errores y mostrar un mensaje
				if($result2==true) {
					echo "07"." GRABACION EXITOSA!";
				} else {
					$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
		    		$message .= 'Cual consulta: ' . $sql2;
		    		// Elimino los dados del alumno mediante un procedimiento almacenado.
					$sql3 = "CALL dpto_archivo.per_del(".mysql_real_escape_string($var_cedulaExp).")";   
				   $result3=mysql_query($sql3,$link);
					echo "03 "." ERROR AL ACTUALIZAR EXPEDIENTE!";
				}
			}
		} else {
			// si el alumno existe pero no tiene expediente
			// Actualizo en clavePer y datosPer mediante un Procedimiento Almacenado
			$sql1 = "CALL dpto_archivo.per_upd('$var_cedulaExp', '$var_loginH', '$var_nombre', '$var_direccion', '$var_telefono', '$var_sexo')";
			$result1=mysql_query($sql1,$link);
			// Verifico que no haya errores
			if($result1==false) {
				$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
		   	$message .= 'Cual consulta: ' . $sql1;
				echo "03 "." ERROR AL ACTUALIZAR ALUMNO!";
			} else {
				// Inserto en expediente mediante un Procedimiento Almacenado
				$sql2 = "CALL dpto_archivo.exp_ins(NULL, '$var_cedulaExp', '$fechaSQL', '$fechaSQL', $var_especial1, $var_tipoExp1, '$var_reqMar', '$var_ubicacion', '$var_amonesta', '$var_observa', '$var_activo', '$var_loginH', '$var_reqpend')";
				$result2=mysql_query($sql2,$link);
				// Verifico que no haya errores y mostrar un mensaje
				if($result2==true) {
					echo "07"." GRABACION EXITOSA!";
				} else {
					$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
		    		$message .= 'Cual consulta: ' . $sql2;
		    		// Elimino los dados del alumno mediante un procedimiento almacenado.
					$sql3 = "CALL dpto_archivo.per_del(".mysql_real_escape_string($var_cedulaExp).")";   
				   $result3=mysql_query($sql3,$link);
					echo "03 ".$message." ERROR AL GRABAR EXPEDIENTE-OPERADOR!";
				}
			}
		}
	} else {
		// Si el alumno NO existe
		// Inserto en clavePer y datosPer mediante un Procedimiento Almacenado
		$sql1 = "CALL dpto_archivo.per_ins('$var_cedulaExp', '$var_loginH', 3, 'alumno', '$var_nombre', '$var_direccion', '$var_telefono', '$var_sexo')";
		$result1=mysql_query($sql1,$link);
		// Verifico que no haya errores y mostrar un mensaje
		if($result1==false) {
			$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
			$message .= 'Cual consulta: ' . $sql1;
			echo "03"." Error al tratar de grabar los datos del alumno";
		} else {
			// Inserto en expediente mediante un Procedimiento Almacenado
			$sql2 = "CALL dpto_archivo.exp_ins(NULL, '$var_cedulaExp', '$fechaSQL', '$fechaSQL', $var_especial1, $var_tipoExp1, '$var_reqMar', '$var_ubicacion', '$var_amonesta', '$var_observa', '$var_activo', '$var_loginH', '$var_reqpend')";
			$result2=mysql_query($sql2,$link);
			// Verifico que no haya errores y mostrar un mensaje
			if($result2==true) {
				echo "07"." GRABACION EXITOSA!";
			} else {
				$message  = 'Consulta 1 fallo: ' . mysql_error() . "\n";
	    		$message .= 'Cual consulta: ' . $sql2;
	    		// Elimino los dados del alumno mediante un procedimiento almacenado.
				$sql3 = "CALL dpto_archivo.per_del(".mysql_real_escape_string($var_cedulaExp).")";   
			   $result3=mysql_query($sql3,$link);
				echo "03 ".$message." ERROR AL GRABAR EXPEDIENTE-OPERADOR!";
			}
		}
	}
}
?> 
