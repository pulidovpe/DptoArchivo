<?php if(@session_start() == false){session_destroy();session_start();}
/*
 * Filtro de Expedientes para crear reporte PDF.
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

if(empty($_POST['limite'])) $limite = 100; 
else $limite = $_POST['limite'];
if(!empty($_POST['tipo'])) $busqueda1=" `expediente`.`codTipoExp` = '".trim($_POST['tipo'])."' ";
else $busqueda1="";
if(!empty($_POST['activo'])) $busqueda2=" `expediente`.`activo` = '".trim($_POST['activo'])."' ";
else $busqueda2="";
if(!empty($_POST['especial'])) $busqueda3=" `expediente`.`codEsp` = '".trim($_POST['especial'])."' ";
else $busqueda3="";
if(!empty($_POST['cedula'])) $busqueda4=" `datosPer`.`cedulaPer` = '".trim($_POST['cedula'])."' "; 
else $busqueda4="";
if(!empty($_POST['requisito'])) $busqueda5=" AND `expediente`.`reqpend` != 0 "; 
else $busqueda5="";

//Si todos los parámetros están vacios, no ejecuto ninguna búsqueda!
if(empty($busqueda1) && empty($busqueda2) && empty($busqueda3) && empty($busqueda4) && empty($busqueda5)) 
{
?>
	<SCRIPT LANGUAGE="Javascript" TYPE="text/javascript">
		alert("Debe escribir algun parametro!");
		//window.close();
		window.history.back();
	</SCRIPT>
<?php
} else {
	//Sino...
	if(!empty($busqueda1)) {
		if(!empty($busqueda2)) {
			if(!empty($busqueda3)) {
				if(!empty($busqueda4)) {
					$busqueda1.=" AND ".$busqueda2." AND ".$busqueda3." AND ".$busqueda4;// Todas las busquedas
					$busqueda2="";$busqueda3="";$busqueda4="";
				} else {
					$busqueda1.=" AND ".$busqueda2." AND ".$busqueda3;// Las busquedas 1,2,3
					$busqueda2="";$busqueda3="";
				}
			} else {
				if(!empty($busqueda4)) {
					$busqueda1.=" AND ".$busqueda2." AND ".$busqueda4; // Las busquedas 1,2,4 
					$busqueda2="";$busqueda4="";				
				} else {
					$busqueda1.=" AND ".$busqueda2;$busqueda2="";// Las busquedas 1,2
				}
			}
		} else {
			if(!empty($busqueda3)) {
				if(!empty($busqueda4)) {
					$busqueda1.=" AND ".$busqueda3." AND ".$busqueda4;// Las busquedas 1,3,4
					$busqueda3="";$busqueda4="";				
				} else {
					$busqueda1.=" AND ".$busqueda3;$busqueda3=""; // Las busquedas 1,3			
				} 
			} else {
				if(!empty($busqueda4)) {
					$busqueda1.=" AND ".$busqueda4; // Las busquedas 1,4				
					$busqueda4="";
				} // Solamente $busqueda1
			}
		}
	} else {
		if(!empty($busqueda2)) {
			if(!empty($busqueda3)) {
				if(!empty($busqueda4)) { 
					$busqueda1=$busqueda2." AND ".$busqueda3." AND ".$busqueda4; // Las busquedas 2,3,4
					$busqueda2="";$busqueda3="";$busqueda4="";				
				} else {
					$busqueda1=$busqueda2." AND ".$busqueda3; // Las busquedas 2,3
					$busqueda2="";$busqueda3="";
				}
			} else {
				if(!empty($busqueda4)) {
					$busqueda1=$busqueda2." AND ".$busqueda4; // Las busquedas 2,4
					$busqueda2="";$busqueda4="";				
				} else {
					$busqueda1=$busqueda2;$busqueda2=""; // Solamente $busqueda2
				}
			}
		} else {
			if(!empty($busqueda3)) {
				if(!empty($busqueda4)) {
					$busqueda1=$busqueda3." AND ".$busqueda4; // Las busquedas 3,4
					$busqueda3="";$busqueda4="";				
				} else {
					$busqueda1=$busqueda3; // Solamente $busqueda3
					$busqueda3="";
				}
			} else {
				if(!empty($busqueda4)) {
					$busqueda1=$busqueda4; // Solamente $busqueda4
					$busqueda4="";				
				} 
			}
		}
	}
	
	if(!empty($_POST['requisito'])) $busqueda1.=$busqueda5;
	//echo "Cadena ya armada: ".$busqueda1."<br>";	
	
	$cadbusca="SELECT `expediente`.`cedulaExp` , `expediente`.`codTipoExp` ,`expediente`.`reqpend` , `datosPer`.`nombre` , `especialidad`.`descripEsp` , `tipoReq`.`descripTExp` FROM 
	((`expediente` INNER JOIN `datosPer` ON `expediente`.`cedulaExp` = `datosPer`.`cedulaPer`) 
	INNER JOIN `especialidad` ON `expediente`.`codEsp` = `especialidad`.`codEsp`)
	INNER JOIN `tipoReq` ON `expediente`.`codTipoExp` = `tipoReq`.`codTipoExp` WHERE ".$busqueda1." ORDER BY `tipoReq`.`codTipoExp`,`expediente`.`cedulaExp` ASC LIMIT ".$limite;
	
	//echo "Cadena de busqueda completa:".$cadbusca."<br>";
	// Para los acentos
	mysql_query("SET NAMES 'ISO-8859-1'");

	$Resultado=mysql_query($cadbusca, $link);
	$cant =  mysql_num_rows($Resultado);
	if($cant<1) {	
	?>
		<SCRIPT LANGUAGE="Javascript" TYPE="text/javascript">
			alert("No existen registros archivados!");
			//window.close();
			window.history.back();
		</SCRIPT>
	<?php
	} else {
	
		// De aqui en adelante, se genera el pdf.  //
		ob_end_clean();
		
		define('FPDF_FONTPATH','font/');
		require('fpdf.php');
		class PDF extends FPDF
		{
		}
		$pdf=new PDF('P','mm','Letter');
		$pdf->Open();
		$pdf->AliasNbPages();
		$pdf->SetTopMargin(15);
		$pdf->SetLineWidth(0);
		$pdf->SetAutoPageBreak(0,20);
		$pdf->AddPage();
		$pdf->SetLeftMargin(15);
		$pdf->Image('../Imagenes/unefa.gif',30,15,-200);
		// Set font
		$pdf->SetFont('Arial','B',10); //<-- Tipo de letra arial, Bold, tamaño 20
		$pdf->write(5,"                                                                REPÚBLICA BOLIVARIANA DE VENEZUELA                                                                                                          MINISTERIO DEL PODER POPULAR PARA LA DEFENSA                                                                                               UNIVERSIDAD NACIONAL EXPERIMENTAL POLITÉCNICA                                                                                                                           DE LA FUERZA ARMADA                                                                                                                                                                   UNEFA                                                                                                                                                        NUCLEO APURE - SEDE SAN FERNANDO" );  // <-- Cadena a escribir
		$pdf->Ln(6);
		// Carga real de los Datos
		$var_tipoReq = 0;	
		while($MostrarFila = mysql_fetch_array($Resultado)) {			
			if($var_tipoReq != $MostrarFila['codTipoExp']) {							
				$pdf->Ln(10);
				$pdf->SetFont('Arial','B',8);
				if(!empty($_POST['requisito'])) {
					$pdf->Cell(184,6,"EXPEDIENTES DE ALUMNOS QUE TIENEN REQUISITOS POR ENTREGAR.",1,1,'L');
					$pdf->Cell(184,6,"TIPO DE EXPEDIENTE:  ".$MostrarFila['descripTExp'],1,1,'L');
				} else {
					$pdf->Cell(184,6,"TIPO DE EXPEDIENTE:  ".$MostrarFila['descripTExp'],1,1,'L');
				}
				$pdf->Cell(26,6,"CEDULA",1,0,'C');
				$pdf->Cell(79,6,"ALUMNO",1,0,'C'); 
				$pdf->Cell(79,6,"CARRERA",1,0,'C'); 
				$pdf->Ln(6);
				$var_tipoReq = $MostrarFila['codTipoExp'];
			}
			$pdf->SetFont('Arial','',8);
			$pdf->Cell(26,6,$MostrarFila['cedulaExp'],1,0,'L');
			$pdf->Cell(79,6,$MostrarFila['nombre'],1,0,'L');
			$pdf->Cell(79,6,$MostrarFila['descripEsp'],1,0,'L');		
			$pdf->Ln(6);
		}
		$pdf->Output();
		?>
		<SCRIPT LANGUAGE="Javascript" TYPE="text/javascript">
			//alert("No existen registros archivados!");
			window.close();
			window.history.back();
		</SCRIPT>
		<?php
	}
}
?>