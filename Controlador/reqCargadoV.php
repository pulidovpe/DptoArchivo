<?php
/*
 * Archivo:		reqCargadoV.php
 * Archivo encargado de mostrar los requisitos seleccionados 
 * durante la edicion del expediente.

Variables usadas:
	$link:		Variable de conexion
   $req1:  		Variable asociada a la posicion del requisito.
   $cuales1:	Variable encargada de entregar los requisitos cargados.
   $sql1:		Variable encargada de almacenar el resultado de las consultas a mysql.
*/
$reqpend=0; // Requisitos pendientes
$RegistrosAEmpezar1=$req1;
//Se crea requisitos1 con los que estan marcados
$requisitos1=explode(";", $cuales1);
//Calculamos la cantidad de requisitos
$tam1=floor(strlen(trim($cuales1)));
$tam11=$tam1/2;
$sql1 = mysql_query("SELECT * FROM requisiExp WHERE codTipoExp='$RegistrosAEmpezar1' ");
while ($row1 = mysql_fetch_row($sql1)) {
	$cualno=0;$imp1=0;
	//Averiguamos la posicion del requisito marcado
	for($cualno=0;$cualno<$tam11;$cualno++) {
		if($row1[0] == $requisitos1[$cualno]) $imp1=1;
	}
	//Lo imprimimos, este marcado o no
	if($imp1==0) {
		echo "<input type='checkbox' name='requisito' id='".$row1[0]."' value='$row1[0]'/>".substr($row1[1], 0, 78)."..<br>";
		$reqpend++;
	} else echo "<input type='checkbox' name='requisito' id='".$row1[0]."' checked='checked' disabled='disabled' value='$row1[0]'/>".substr($row1[1], 0, 78)."..<br>";
}
echo "<input type='hidden' name='reqpend' id='reqpend' value='".$reqpend."' />";
//Depurando
//echo "req1:".$req1."-tam11:".$tam11."-".$cuales1."<br>";
?>
