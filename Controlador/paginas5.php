<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Paginador de Especialidades usando AJAX
 * Usuario Administrador.

Variables usadas:
	$link:		Variable de conexion
   $user:   	Variable de sesion asociada al operador conectado.
   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.	
*/
if($_SESSION['tipoPer']!='1')
{
	/* Sino existe variable de sesion que indique que 
		es el usuario Administrador, entonces cerrar la sesion 
	*/
	header("Location: cerrarSesion.php");	
	exit;
} 
// Se obtiene el usuario que inicio la sesion.
$login = $_SESSION['user'];
// Se establece la conexion a la base de datos
include_once("conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
/* ****** */
$RegistrosAMostrar=5;
//estos valores los recibo por GET
if(isset($_GET['pag'])){
	$RegistrosAEmpezar=($_GET['pag']-1)*$RegistrosAMostrar;
	$PagAct=$_GET['pag'];
//caso contrario los iniciamos
}else{
	$RegistrosAEmpezar=0;
	$PagAct=1;
}
/* ******* */
$query = "SELECT nivelEsp.*,especialidad.* FROM nivelEsp,especialidad WHERE nivelEsp.nivelAca=especialidad.nivelAca ORDER BY nivelEsp.nivelAca,especialidad.codEsp ASC LIMIT  $RegistrosAEmpezar, $RegistrosAMostrar";
$Resultado=mysql_query($query,$link);
?>

<div id="fondo-centro" align="center">
  <br />
<table border="1 " width="720px" >
   <tr>
      <th style='max-width:95px; min-width:100px;'>Codigo<br>Especialidad</th>
      <th style='max-width:366px; min-width:366px;'>Descripcion</th>
      <th style='max-width:80px; min-width:90px;'>Nivel<br>Academico</th>
      <th style='max-width:50px; min-width:50px;'>Editar</th>
      <th style='max-width:50px; min-width:50px;'>Borrar</th>          
   </tr>     			            
<?php
while($MostrarFila=mysql_fetch_array($Resultado)){
	echo "<tr>";
	echo "<td align='center'>".$MostrarFila['codEsp']."</td>";
	echo "<td>".substr($MostrarFila['descripEsp'], 0, 45)."...</td>";
	echo "<td>".$MostrarFila['nivelAca']."</td>";	
	printf("
	<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/editarEsp.php?idEsp=%s','divpadre4','paginador','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
	<center>Editar</center></a></td>	
	<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/borrarEsp.php?idEsp=%s','divpadre4','paginador','4');llamarasincronoget('Vista/especialidad.php','col2','centro','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
	<center>Borrar</center></a></td></tr>",$MostrarFila['codEsp'],$MostrarFila['codEsp']);
}      
echo "</table>";
// <td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/editarEsp.php?idEsp=%s','divpadre4','paginador','0');llamarasincronoget('Vista/especialidad.php','col2','centro','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
//******--------determinar las páginas---------******//
$NroRegistros=mysql_num_rows(mysql_query("SELECT nivelEsp.*,especialidad.* FROM nivelEsp,especialidad WHERE nivelEsp.nivelAca=especialidad.nivelAca",$link));

$PagAnt=$PagAct-1;
$PagSig=$PagAct+1;
$PagUlt=$NroRegistros/$RegistrosAMostrar;

//verificamos residuo para ver si llevará decimales
$Res=$NroRegistros%$RegistrosAMostrar;
// si hay residuo usamos funcion floor para que me
// devuelva la parte entera, SIN REDONDEAR, y le sumamos
// una unidad para obtener la ultima pagina
if($Res>0) $PagUlt=floor($PagUlt)+1;

//desplazamiento

if($PagAct>1) {
	echo "<a onclick=\"Pagina('1','5')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Primero-</a> ";	
	echo "<a onclick=\"Pagina('$PagAnt','5')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Anterior-</a> ";
} else {
	echo "Primero-";	
	echo "Anterior-";
}	
echo "<strong>Pagina ".$PagAct."/".$PagUlt."</strong>";
if($PagAct<$PagUlt) { 
	echo " <a onclick=\"Pagina('$PagSig','5')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>-Siguiente</a> ";
	echo "<a onclick=\"Pagina('$PagUlt','5')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>-Ultimo</a>";
} else {
	echo "-Siguiente";	
	echo "-Ultimo";
}
echo "<div id='titulos2' align='center' style='background-color:#09F; color: #FFF;'>";
echo "<h3>Excelencia educativa abierta al pueblo!</h3></div>";
?>
