<?php
	//echo "ME VES???";
	function conectarse()
	{
		//parametros de la base de datos
		//$BaseDeDatos = "archivo";
		$BaseDeDatos = "dpto_archivo";
		$Servidor = "localhost";
		$Usuario = "pulidovpe";
		$Clave = "123456";
		$Conexion = mysql_connect($Servidor,$Usuario,$Clave)or die("Error! Fallo la conexion!<br>" . mysql_error() );
		
		$dbresult=mysql_select_db($BaseDeDatos, $Conexion)or die("Error seleccionando database <br>" . mysql_error() );
		return $Conexion;
	}
	
	function desconectar($Conexion)
	{
		mysql_close($Conexion);
	}
?>
