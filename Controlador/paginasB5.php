<?php if(@session_start() == false){session_destroy();session_start();}
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

// Recibo las cadenas de busqueda y genero las consultas SQL
if(empty($_POST['limite'])) $limite = 10; 
else $limite = $_POST['limite'];
if(!empty($_POST['busca1'])) $busqueda1=" cedulaOp = '".trim($_POST['busca1'])."' ";
else $busqueda1="";
if(!empty($_POST['busca4'])) $busqueda4=" operacion = '".trim($_POST['busca4'])."' ";
else $busqueda4="";
if(!empty($_POST['busca5'])) $busqueda5=" DATE(fechaHora) = '".trim($_POST['busca5'])."' ";
else $busqueda5="";
if(!empty($_POST['busca2'])) $busqueda2=" cambios LIKE '%".trim($_POST['busca2'])."%' ";
else $busqueda2="";
if(!empty($_POST['busca3'])) $busqueda3=" cambios LIKE '%".trim($_POST['busca3'])."%' ";
else $busqueda3="";

// Si todos los parámetros están vacios, no ejecuto ninguna búsqueda!
if(empty($busqueda1) && empty($busqueda2) && empty($busqueda3) && empty($busqueda4) && empty($busqueda5)) exit(0); 
// De lo contrario armo la consulta
if(!empty($busqueda1) && !empty($busqueda4)) { $busqueda1.=" AND ".$busqueda4; $busqueda4=""; } 
if(!empty($busqueda1) && !empty($busqueda5)) { $busqueda1.=" AND ".$busqueda5; $busqueda5=""; }
if(!empty($busqueda4) && !empty($busqueda5)) { $busqueda1 = $busqueda4." AND ".$busqueda5; $busqueda4="";$busqueda5=""; }
$busqueda1.=$busqueda4.$busqueda5;
if(!empty($busqueda1)) {
	if(!empty($busqueda2) && !empty($busqueda3)) { $busqueda1.=" AND ( ".$busqueda2." AND ".$busqueda3." ) "; $busqueda2=""; $busqueda3=""; }
	if(!empty($busqueda2)) { $busqueda1.=" AND ( ".$busqueda2." ) ";$busqueda2=""; }
	if(!empty($busqueda3)) { $busqueda1.=" AND ( ".$busqueda3." ) ";$busqueda3=""; }
	$busqueda1.=$busqueda2.$busqueda3;
} else {
	if(!empty($busqueda2) && !empty($busqueda3)) { $busqueda1.="  ".$busqueda2." AND ".$busqueda3; $busqueda2=""; $busqueda3=""; }
	$busqueda1.=$busqueda2.$busqueda3; 
} 

$cadbusca="SELECT * FROM historico WHERE ".$busqueda1." ORDER BY fechaHora DESC LIMIT ".$limite;

//echo $cadbusca."<br>";
?>
<table border="1px"  width="666px" >
<tbody>
	<tr>
		<th style='max-width:40px; min-width:40px;'>Fecha - Hora</th>
		<th style='max-width:80px; min-width:80px;'>Operación</th>
		<th style='max-width:40px; min-width:80px;'>Tablas</th>
		<th style='max-width:260px; min-width:300px;'>Cambios</th>
	</tr>
<?php
	$Resultado=mysql_query($cadbusca, $link);
	$i=1;
	while ($MostrarFila = mysql_fetch_array($Resultado)) {
	  	echo "<tr>";
		echo "<td align='center'>".$MostrarFila['fechaHora']."</td>";
		echo "<td>".$MostrarFila['operacion']."</td>";
		echo "<td>".$MostrarFila['tabla']."</td>";
		switch(trim($MostrarFila['tabla'])) {
			case 'expediente': 
				echo "<td>OPERADOR: ".$MostrarFila['cedulaOp']." - Expediente: ".$MostrarFila['numExp']." - ".$MostrarFila['cambios']."...</td>";
				break;
			case 'documento' : 
				echo "<td>OPERADOR: ".$MostrarFila['cedulaOp']." - Documento: ".$MostrarFila['numDoc']." - ".$MostrarFila['cambios']."...</td>";	
				break;							
			case 'tipoReq':				
			case 'requisiExp':
			case 'especialidad':
			case 'clavePer':
			case 'datosPer':
				echo "<td>OPERADOR: ".$MostrarFila['cedulaOp']." - ".$MostrarFila['cambios']."...</td>";	
		}
	   $i++;
	}
	echo "</tr>"; 
?>
</tbody>
</table>
