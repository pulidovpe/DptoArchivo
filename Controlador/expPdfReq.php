<?php
include_once("conexion.php");
$link=conectarse();
mysql_query("SET NAMES 'ISO-8859-1'");
/* ****** */
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
$pdf->SetAutoPageBreak(1,20);
$pdf->AddPage();
$pdf->SetLeftMargin(15);
$pdf->Image('../Imagenes/unefa.gif',30,15,-200);
// Set font
$pdf->SetFont('Arial','B',10); //<-- Tipo de letra arial, Bold, tamaño 20
$pdf->write(5,"                                                                REPÚBLICA BOLIVARIANA DE VENEZUELA                                                                                                          MINISTERIO DEL PODER POPULAR PARA LA DEFENSA                                                                                               UNIVERSIDAD NACIONAL EXPERIMENTAL POLITÉCNICA                                                                                                                           DE LA FUERZA ARMADA                                                                                                                                                                   UNEFA                                                                                                                                                        NUCLEO APURE - SEDE SAN FERNANDO" );  // <-- Cadena a escribir
$pdf->Ln(6);
// Carga real de los Datos
$cadbusca="SELECT * FROM requisiExp ORDER BY codReqExp,codTipoExp ASC";
$Resultado=mysql_query($cadbusca, $link);
$pdf->Ln(10);
$pdf->SetFont('Arial','B',8);
$pdf->Cell(185,6,"REQUISITOS POR TIPO DE EXPEDIENTE.",1,1,'L');
$pdf->Cell(10,6,"COD",1,0,'C');
$pdf->Cell(165,6,"DESCRIPCION",1,0,'C'); 
$pdf->Cell(10,6,"TIPO",1,0,'C');
while($MostrarFila = mysql_fetch_array($Resultado)) {     
	$pdf->SetFont('Arial','',8);
	$pdf->Ln();
	$pdf->Cell(10,6,$MostrarFila['codReqExp'],1,0,'L');
	//Convierto a minusculas, luego a tipo Titulo y la recorto
	$descrip = ucwords(strtolower($MostrarFila['descripcion']));
	$pdf->Cell(165,6,substr($descrip, 0, 118)."..",1,0,'L');
	$pdf->Cell(10,6,$MostrarFila['codTipoExp'],1,0,'L');    
}
$pdf->Output();
?>