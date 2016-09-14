<?php
include_once("conexion.php");
$link=conectarse();
mysql_query("SET NAMES 'ISO-8859-1'");
/* ****** */
require_once('class.ezpdf.php');
$pdf = new Cezpdf('a4');
$pdf->selectFont('../fonts/Courier.afm');
$pdf->ezSetCmMargins(1,1,1.5,1.5);

$query = "SELECT `datosPer`.*,`clavePer`.* FROM (`datosPer` INNER JOIN `clavePer` ON `clavePer`.`loginPer`=`datosPer`.`cedulaPer` AND `clavePer`.`tipoPer`=2) ORDER BY loginPer ASC";
$Resultado = mysql_query($query, $link) or die(mysql_error());
$MostrarFilas = mysql_num_rows($Resultado);

$ixx = 0;
while($datatmp = mysql_fetch_assoc($Resultado)) { 
	$ixx = $ixx+1;
	$data[] = array_merge($datatmp, array('num'=>$ixx));
}
$titles = array(
				'loginPer'=>'<b>Cedula/Login</b>',
				'nombre'=>'<b>Nombre del Operador</b>',
				'tipoPer'=>'<b>Nivel de Seguridad</b>',
				'telefono'=>'<b>Telefono</b>'
			);
$options = array(
				'shadeCol'=>array(0.9,0.9,0.9),
				'xOrientation'=>'center',
				'width'=>500
			);
			
			
			function ros_logo(&$pdf,$x,$y,$height,$wl=0,$wr=0){
  $pdf->saveState();
  $h=100;
  $factor = $height/$h;
  $pdf->selectFont('../fonts/Helvetica-Bold.afm');
  $text = 'SISGEAC';
  $ts=100*$factor;
  $th = $pdf->getFontHeight($ts);
  $td = $pdf->getFontDecender($ts);
  $tw = $pdf->getTextWidth($ts,$text);
  $pdf->setColor(0.6,0,0);
  $z = 0.86;
  $pdf->filledRectangle($x-$wl,$y-$z*$h*$factor,$tw*1.2+$wr+$wl,$h*$factor*$z);
  $pdf->setColor(1,1,1);
  $pdf->addText($x,$y-$th-$td,$ts,$text);
  $pdf->setColor(0.6,0,0);
  $pdf->addText($x,$y-$th-$td,$ts*0.1,'http://www.unefa.edu.ve/apure');
  $pdf->restoreState();
  return $height;
}

ros_logo($pdf,150,$pdf->y-100,80,150,200);
$pdf->selectFont($mainFont);			
$pdf->ezText("\n\n\n", 40);			
			
			
$txttit = "<b>pablo.e.pulido@gmail.com</b>\n";
$txttit.= "Reporte de Operadores. \n";

$pdf->ezText($txttit, 12);
$pdf->ezTable($data, $titles, '', $options);
$pdf->ezText("\n\n\n", 10);
$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"), 10);
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n", 10);
$pdf->ezStream(); 
?>