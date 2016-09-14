<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Buscador de Requisitos.
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
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
/* ****** */
$busqueda=$_POST['busca']; // Recibimos el texto a buscar por POST
// DEBO PREPARAR LOS TEXTOS QUE VOY A BUSCAR si la cadena existe
if ($busqueda<>''){
	$cadbusca="SELECT * FROM requisiExp WHERE codTipoExp='".$busqueda."' ";
?>
<table border="1px"  width="696px" >
<tbody>
	<tr>
		<th style='max-width:50px; min-width:50px;'>Núm.</th>
		<th style='max-width:80px; min-width:80px;'>Tipo de Requisito</th>
		<th style='max-width:366px; min-width:366px;'>Descripción</th>
		<th style='max-width:50px; min-width:50px;'>Editar</th>
		<th style='max-width:50px; min-width:50px;'>Borrar</th>
	</tr>
<?php
	$Resultado=mysql_query($cadbusca, $link);
	$i=1;
	while ($MostrarFila = mysql_fetch_array($Resultado)) {
	  	echo "<tr>";
		echo "<td align='center'>".$MostrarFila['codReqExp']."</td>";
		echo "<td>".$MostrarFila['codTipoExp']."</td>";
		echo "<td>".substr($MostrarFila['descripcion'], 0, 58)."...</td>";	
		printf("
		<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/editarReq.php?idReq=%s','divpadre4','paginador','0');\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
		<center>Editar</center></a></td>	
		<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/borrarReq.php?idReq=%s','divpadre4','paginador','4')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
		<center>Borrar</center></a></td></tr>",$MostrarFila['codReqExp'],$MostrarFila['codReqExp']);
		$i++;
	}
?>
</tbody>
</table>
<?php
//cierra el if inicial
}
?>&nbsp;
