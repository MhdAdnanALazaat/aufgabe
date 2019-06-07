<?php
require_once("classes/fpdf.php");
require_once("db.php");
$pdf=new FPDF;
// seite Hinzufugen
$pdf->ADDPage();
// schrigt definieren
$pdf->SETFont("Arial","B",11);

$sql="SELECT * FROM artikel ORDER BY artikelName";
     $x=$db->query($sql);
     $lineHeight=10;
           while($row=$x->fetch()) 
{  
// Schreibt in eine zelle
// 

$pdf->Cell(80,$lineHeight,utf8_decode( $row["artikelGruppe"]),0,0);	
$pdf->Cell(80,$lineHeight,utf8_decode( $row["artikelPreis"]),0,0);
$pdf->Cell(80,$lineHeight,utf8_decode( $row["artikelName"]),0,1);
}
$pdf->Cell(80,20,"Hallo",0,0);
$pdf->Cell(80,20,"Leute",0,1);

$pdf->Output("test.pdf","I");
?>