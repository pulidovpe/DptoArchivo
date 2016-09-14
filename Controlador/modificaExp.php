<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
//Crear variables POST.
import_request_variables('P','var_'); 
if($var_cedulaExp=='' || $var_nombre=='' || $var_sexo=='' || $var_direccion=='' 
|| $var_ubicacion=='' || $var_especial1=='' || $var_tipoExp1=='' || $var_idExp=='') {
	echo "04";//." CAMPOS NO PUEDEN IR VACIOS";
} else {
	// Armamos la fecha en formato SQL
	$dia1 = date(d); // devuelve el día del mes
	$mes1 = date(m); // devuelve el número del mes
	$anio1 = date(Y); // devuelve el año
	$fechaHoy = $anio1."-".$mes1."-".$dia1;
	// Actualizo la tabla datosPer mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.per_upd('$var_cedulaExp', '$var_loginH', '$var_nombre', '$var_direccion', '$var_telefono', '$var_sexo')";
	$result1=mysql_query($sql, $link);
	// Verifico que no haya errores
	if($result1==true) {
		// Actualizo la tabla expediente mediante un Procedimiento Almacenado
		$sql1 = "CALL dpto_archivo.exp_upd($var_idExp, '$var_cedulaExp', '$fechaHoy', $var_especial1, $var_tipoExp1, '$var_reqMar', '$var_ubicacion', '$var_amonesta', '$var_observa', '$var_activo', '$var_loginH', '$var_reqpend')";
		$result2=mysql_query($sql1, $link);
		// Verifico que no haya errores
		if($result2==true) {
			echo "10"."	GRABACION EXITOSA!";
		} else {
			$message  = 'Consulta 2 fallo: ' . mysql_error() . "\n";
	    	$message .= 'Cual consulta: ' . $sql1;
			echo "09".$message."	ERROR AL MODIFICAR EXPEDIENTE!";
		}
	} else {
		$message  = 'Consulta 3 fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "09".$message."	ERROR AL MODIFICAR ALUMNO!";
	}
}
?>
