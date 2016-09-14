<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Paginador de Expedientes usando AJAX.
 * Usuario comun.

Variables usadas:
	$link:		Variable de conexion
   $user:   	Variable de sesion asociada al operador conectado.
   $tipoPer:	Variable que almacena el nivel de seguridad del usuario.	
*/
if($_SESSION['tipoPer']!='2')
{
	// si el usuario logueado no es nivel 2 se cierra la sesion.
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
/* Ejecutamos la consulta */
$query = "SELECT `expediente`.`numExp`,`expediente`.`codEsp`,`expediente`.`cedulaExp`,`expediente`.`activo`,`datosPer`.`nombre`,`especialidad`.`descripEsp` FROM (`expediente` 
INNER JOIN `datosPer` ON `expediente`.`cedulaExp`=`datosPer`.`cedulaPer`) INNER JOIN `especialidad` ON `expediente`.`codEsp`=`especialidad`.`codEsp` ORDER BY numExp asc LIMIT  $RegistrosAEmpezar, $RegistrosAMostrar";
$Resultado=mysql_query($query,$link);
?>
<!-- Se muestra el encabezado -->
<div id="fondo-centro" align="center">
  <br />
<table border="1" width="720px">
   <tr>
      <th style='max-width:50px; min-width:50px;'>Núm.</th>
      <th style='max-width:80px; min-width:80px;'>Cédula</th>
      <th style='max-width:190px; min-width:190px;'>Nombre y Apellido</th>
      <th style='max-width:228px; min-width:228px;'>Especialidad</th>      
      <th style='max-width:50px; min-width:50px;'>Activo</th>
      <th style='max-width:50px; min-width:50px;'>Editar</th>          
   </tr>     			            
<?php
/* Se muestran los datos */
while($MostrarFila=mysql_fetch_array($Resultado)){
	echo "<tr>";
	echo "<td align='center'>".$MostrarFila['numExp']."</td>";
	echo "<td>".substr($MostrarFila['cedulaExp'], 0, 10)."</td>";
	echo "<td>".substr($MostrarFila['nombre'], 0, 22)."..</td>";
	echo "<td>".$MostrarFila['codEsp']."-".substr($MostrarFila['descripEsp'], 0, 28)."..</td>";
	echo "<td align='center'>".$MostrarFila['activo']."</td>";
	printf("
	<td align='center'><a onclick=\"javascript:llamarasincronoget('Controlador/editarExp.php?idExp=%s','divpadre2','paginador','0')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>
	<center>Editar</center></a></td>	
	</tr>",$MostrarFila['numExp']);
}      
echo "</table>";
//******--------determinar las páginas---------******//
$NroRegistros=mysql_num_rows(mysql_query("SELECT * FROM expediente",$link));

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
	echo "<a onclick=\"Pagina('1','3')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Primero-</a> ";	
	echo "<a onclick=\"Pagina('$PagAnt','3')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Anterior-</a> ";
} else {
	echo "Primero-";	
	echo "Anterior-";
}	
echo "<strong>Pagina ".$PagAct."/".$PagUlt."</strong>";
if($PagAct<$PagUlt) { 
	echo " <a onclick=\"Pagina('$PagSig','3')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>-Siguiente</a> ";
	echo "<a onclick=\"Pagina('$PagUlt','3')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>-Ultimo</a>";
} else {
	echo "-Siguiente";	
	echo "-Ultimo";
}
echo "<div id='titulos2' align='center' style='background-color:#09F; color: #FFF;'>";
echo "<h3>Excelencia educativa abierta al pueblo!</h3></div>";

?>
