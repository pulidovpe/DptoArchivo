<?php
// Nos conectamos a la base de datos
include_once("conexion.php");
include_once("funciones.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
//Crear variables POST.
import_request_variables('P','var_'); 
if($var_nombre=='' || $var_direccion=='' || $var_telefono=='' || $var_sexo=='' || $var_tipoPer=='') {
	echo "04"." CAMPOS NO PUEDEN IR VACIOS";
} else {
	/* 
		"Escapo" todos los valores recibidos
		para evitar inyecciones SQL
		gracias al archivo funciones.php.
	*/
	$idOperM = sqlValue($var_idOper, "text");
	$nomM = sqlValue($var_nombre, "text");
	$dirM = sqlValue($var_direccion, "text");
	$telM = sqlValue($var_telefono, "text");
	$sexM = sqlValue($var_sexo, "text");
	$tipoM = sqlValue($var_tipoPer, "int");
	// Actualizo la tabla datosPer mediante un Procedimiento Almacenado
	$sql = "CALL dpto_archivo.per_upd($idOperM, '99009009', $nomM, $dirM, $telM, $sexM)";
	$result1=mysql_query($sql, $link);
	// Verifico que no haya errores
	if($result1==true) {
		if($var_clave1!='***') {
			$cla1M = sqlValue($var_clave1, "text");
			$cla2M = sqlValue($var_clave2, "text");
			/////////////* CAMBIO DE CLAVE ENCRIPTADA AQUI */////
			$salt = "|#€7`¬23ads4ook12";
	    	$cla2M = sha1($salt.md5($idOperM.$cla1M)); 
	    	/* 
	    		Encriptacion anterior => $cla2M = sha1($salt.md5($cla1M));
	    	*/
	    	$sql2 = "UPDATE clavePer SET ";		
			$sql2.= "tipoPer=".$tipoM.", clave='".$cla2M."' ";  
			$sql2.= " WHERE loginPer=".$idOperM;
			$result1=mysql_query($sql2, $link);
			// Verifico si hay errores
			if($result1==false) {
				$message  = '-Invalid query: '. mysql_error() ."\n";
		    	$message .= 'Cual consulta: ' . $sql2;
				echo "03".$message;	// Error al tratar de grabar los datos
			} else echo "12"." MODIFICACIÓN EXITOSA!"; //" "."idOperM:".$idOperM." Clave:".$cla1M." Clave encriptada:".$cla2M;
		} else echo "12"." MODIFICACIÓN EXITOSA!"; // No se cambio la clave
	} else {		
		$message  = '-Consulta fallo: ' . mysql_error() . "\n";
    	$message .= 'Cual consulta: ' . $sql;
		echo "03".$message; // Error al tratar de grabar los datos
	}
}
?>