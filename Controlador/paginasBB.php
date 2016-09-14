<?php session_start();
/*
 * Buscador de Expedientes para borrado.
 * Usuario Administrador.
*/
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: cerrarSesion.php");	
	exit;
}
$login = $_SESSION['user'];
// Para que PHP reconozca la ñ y demas caracteres latinos
header("Content-Type: text/html;charset=utf-8");
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
		$cadbusca = "SELECT `expediente`.*,`datosPer`.*,`especialidad`.`descripEsp` FROM (`expediente` INNER JOIN `datosPer` 
		ON `expediente`.`cedulaExp`=`datosPer`.`cedulaPer`) INNER JOIN `especialidad` ON `expediente`.`codEsp`=`especialidad`.`codEsp` 
		WHERE `datosPer`.`cedulaPer` LIKE '%$busqueda%' ORDER BY activo DESC;";
	} elseif ($numero>1) {
		//SI HAY UNA FRASE SE UTILIZA EL ALGORTIMO DE BUSQUEDA AVANZADO DE MATCH AGAINST -- NO SE PUEDE EN INNODB
		//busqueda de frases con mas de una palabra y un algoritmo especializado
		$cadbusca = "SELECT `expediente`.*,`datosPer`.*,`especialidad`.`descripEsp` FROM (`expediente` INNER JOIN `datosPer` 
		ON `expediente`.`cedulaExp`=`datosPer`.`cedulaPer`) INNER JOIN `especialidad` ON `expediente`.`codEsp`=`especialidad`.`codEsp` 
		WHERE `datosPer`.`cedulaPer` REGEXP ( '$busqueda' ) ORDER BY fechaAbre DESC LIMIT 50;";
	}
?>
<table border="1px"  width="696px" >
<tbody>
	<tr>
	  <th style='max-width:50px; min-width:50px;'>Núm.</th>
      <th style='max-width:80px; min-width:80px;'>Cédula</th>
      <th style='max-width:190px; min-width:190px;'>Nombre y Apellido</th>
      <th style='max-width:228px; min-width:228px;'>Especialidad</th>      
      <th style='max-width:50px; min-width:50px;'>Activo</th>
      <th style='max-width:50px; min-width:50px;'>Borrar</th>
	</tr>
<?php
	$Resultado=mysql_query($cadbusca, $link);
	$i=1;
	while ($MostrarFila = mysql_fetch_array($Resultado)) {
		echo "<tr>";
		echo "<td align='center'>".$MostrarFila['numExp']."</td>";
		echo "<td>".substr($MostrarFila['cedulaExp'], 0, 10)."</td>";
		echo "<td>".substr($MostrarFila['nombre'], 0, 22)."..</td>";
		echo "<td>".$MostrarFila['codEsp']."-".substr($MostrarFila['descripEsp'], 0, 28)."..</td>";
		echo "<td align='center'>".$MostrarFila['activo']."</td>";
		printf("	
				<td align='center'><a onclick=\"javascript:llamarasincronopost('Controlador/borrarExp.php','divpadre4','respuesta1','4',
				'idExp=%s&amp;idEsp=%s');return false\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
				<center>Borrar</center></a></td></tr>",
				$MostrarFila['numExp'],$MostrarFila['codEsp']);
		$i++;
	}
?>
</tbody>
</table>
<?php
//cierra el if inicial
}
?>&nbsp;
