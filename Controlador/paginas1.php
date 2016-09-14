<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Paginador de Especialidades.
 * Usuario Administrador.
*/
if($_SESSION['tipoPer']!='1') 
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
$query = "SELECT * FROM historico WHERE cedulaOp LIKE ORDER BY codEsp asc LIMIT $RegistrosAEmpezar, $RegistrosAMostrar";
$Resultado=mysql_query($query,$link);
?>
<!-- Se muestra el encabezado -->
<div id="fondo-centro" align="center">
  <br />
<table border="1" width="720px">
   <tr>
      <th style='max-width:100px; min-width:100px;'>Codigo Especialidad</th>
      <th style='max-width:460px; min-width:460px;'>Descripcion de Especialidad</th>
      <th style='max-width:100px; min-width:100px;'>Nivel Academico</th>          
   </tr>     			            
<?php
/* Se muestran los datos *
while($MostrarFila=mysql_fetch_array($Resultado)){
	echo "<tr>";
	echo "<td align='center'>".$MostrarFila['codEsp']."</td>";
	echo "<td>".$MostrarFila['descripEsp']."</td>";
	echo "<td align='center'>".$MostrarFila['nivelAca']."</td>";
	echo "</tr>";
}      
echo "</table>";
//******--------determinar las páginas---------******//
$NroRegistros=mysql_num_rows(mysql_query("SELECT * FROM especialidad",$link));

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
	echo "<a onclick=\"Pagina('1','1')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Primero</a> ";	
	echo "<a onclick=\"Pagina('$PagAnt','1')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Anterior</a> ";
} else {
	echo "Primero-";	
	echo "Anterior-";
}	
echo "<strong>Pagina ".$PagAct."/".$PagUlt."</strong>";
if($PagAct<$PagUlt) { 
	echo " <a onclick=\"Pagina('$PagSig','1')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Siguiente</a> ";
	echo "<a onclick=\"Pagina('$PagUlt','1')\" style='cursor:pointer; text-decoration:underline; color:#00008B'>Ultimo</a>";
} else {
	echo "-Siguiente";	
	echo "-Ultimo";
}

echo "<div id='titulos2' align='center' style='background-color:#09F; color: #FFF;'>";
echo "<h3>Excelencia educativa abierta al pueblo!</h3></div>";
?>
