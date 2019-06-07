<?php
//Verbindung zur Datenbank herstellen
require_once("db.php");
?>
<!DOCTYPE html>
<html>
<head>
<title <?php echo "Aufgabe1" ?>;></title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="container">

<?php
$artikelGruppe = ["Kleidung", "Heimwerker", "Kosmetik", "Lebensmittel"];

if (isset($_GET["gruppe"])) {
	$gruppe = $_GET["gruppe"];
	if (!array($gruppe, $artikelGruppe));
}

echo "<div class='float-md-left'><ul class='list-group'>";
foreach ($artikelGruppe as $value) {
	echo "<li class='list-group-item'><a href='?gruppe=$value'>$value</a></li>";
}
echo "</ul></div>";
echo "<div class='float-sm-left'><ul class='list-group'>";
?>

<?php
$li = $db-> prepare("SELECT artikelName from artikel WHERE artikelGruppe = ?");
$li->execute([$gruppe]);

while ($row = $li->fetch()) {
	echo "<li class='list-group-item'>$row[artikelName]</li>";
}
echo "</ul></div>";

?>

</div>
</body>
</html>