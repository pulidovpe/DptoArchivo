<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Buscador de Documentos.
 * Usuario comun.
*/
if($_SESSION['tipoPer']!='2')
{
  header("Location: cerrarSesion.php");
  exit;
}
$login = $_SESSION['user'];
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
/* ****** */
$busqueda=$_POST['busca'];
// DEBO PREPARAR LOS TEXTOS QUE VOY A BUSCAR si la cadena existe
if ($busqueda<>''){
	//CUENTA EL NUMERO DE PALABRAS
	$trozos=explode(" ",$busqueda);
	$numero=count($trozos);
	if ($numero==1) {
		//SI SOLO HAY UNA PALABRA DE BUSQUEDA SE ESTABLECE UNA INSTRUCION CON LIKE
		$cadbusca="SELECT * FROM documento WHERE TITULO LIKE '%$busqueda%' LIMIT 10;";
	} elseif ($numero>1) {
		//SI HAY UNA FRASE SE UTILIZA EL ALGORTIMO DE BUSQUEDA AVANZADO DE MATCH AGAINST -- NO SE PUEDE EN INNODB
		//busqueda de frases con mas de una palabra y un algoritmo especializado
		$cadbusca="SELECT * FROM documento WHERE TITULO REGEXP ( '$busqueda' ) ORDER BY fechaAbre DESC LIMIT 50;";
	}
	
	function limitarPalabras($cadena, $longitud, $elipsis = "..."){
		$palabras = explode(' ', $cadena);
		if (count($palabras) > $longitud)
			return implode(' ', array_slice($palabras, 0, $longitud)) . $elipsis;
		else
			return $cadena;
	}
?>
<table border="1px"  width="696px" >
<tbody>
	<tr>
		<th style='max-width:50px; min-width:50px;'>Núm.</th>
		<th style='max-width:180px; min-width:180px;'>Tipo de Documento</th>
		<th style='max-width:296px; min-width:296px;'>Título del Documento</th>
		<th style='max-width:50px; min-width:50px;'>Editar</th>
		<th style='max-width:50px; min-width:50px;'>Borrar</th>
	</tr>
<?php
	$Resultado=mysql_query($cadbusca, $link);
	$i=1;
	while ($MostrarFila = mysql_fetch_array($Resultado)) {
	  	echo "<tr>";
		echo "<td align='center'>".$MostrarFila['numDoc']."</td>";
		echo "<td>".$MostrarFila['tipoDoc']."</td>";
		echo "<td>".substr($MostrarFila['titulo'], 0, 25)."...</td>";	
		printf("
		<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/editarDoc.php?idDoc=%s','divpadre2','paginador','0');\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
		<center>Editar</center></a></td>	
		<td align='center'><a onclick=\"javascript:return confirmaBorrar();llamarasincronoget('Controlador/borrarDoc.php?idDoc=%s','divpadre2','paginador','4')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
		<center>Borrar</center></a></td></tr>",$MostrarFila['numDoc'],$MostrarFila['numDoc']);
	   $i++;
	}
?>
</tbody>
</table>
<?php
//cierra el if inicial
}
?>&nbsp;
