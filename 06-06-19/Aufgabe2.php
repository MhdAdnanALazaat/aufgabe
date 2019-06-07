<?php
// Sql Data conecet
require_once("db.php");
// Orginal if
if( isset($_POST["suche"])){
	// if 1
	if ( isset($_POST["selected"])) {
		$selected=$_POST["selected"];
	}else {
		$selected="kleidung";
	}//Ende if selected

	// if 2
	if ( empty($_POST["von"])== false)  {
		$min = (float) str_replace(", ", ".",$_POST["von"]);
	}else {
		$min = 0;
	}//Ende if von

	// if 3
	if ( empty($_POST["bis"]) == false) {
	$max= (float) str_replace(",",".",$_POST["bis"]);
	}else{
		$max=100000;
	}//Ende if bis



	}else{
		$selected="kleidung";
		$mix=0;
		$max=100000;
	}//Ende if

?>
<!DOCTYPE html>
<html>
<head>
<title <?php echo "Aufgabe2" ?>;></title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<div class="row"></div>
<form method="post" class="from-list" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
<?php
$artikelGruppe=["Kleidung","Lebensmittel","Heimwerker","Kosmetik"];
	echo  "Gruppe :" . "<br>" ."<select name='selected'>" ;
	foreach ($artikelGruppe as $valeue ) {
		if ($selected==$valeue) {
			echo  "<option value=$valeue selected>$valeue</option>";
		}else{
			echo  "<option value=$valeue>$valeue</option>";
		}//if Ende
	}//Foreach Ende
echo "</select><br>";
?>
<input type="text" name="von">
<br>
<input type="text" name="bis">
<br>
<input type="submit" name="suche">
</form>
<?php
$sql="SELECT artikelName,artikelPreis FROM artikel WHERE 
artikelGruppe = :selected AND artikelPreis BETWEEN :min AND :max ORDER BY artikelName";
$stmt=$db->prepare($sql);
$stmt->bindparam(":selected",$selected);
$stmt->bindparam(":min",$min);
$stmt->bindparam(":max",$max);
$stmt->execute();
echo "<div class='float-sm-left'>";
echo "<ul class='list-group'>";
while($row=$stmt->fetch()){
	echo "<li class='list-group-item'>" . $row["artikelName"] . " " . number_format($row["artikelPreis"], 2, ",", "." . "</li>"."<br>");
}// while Ende
echo "</ul>";
echo "</div>";
?>
</div>
</body>
</html>