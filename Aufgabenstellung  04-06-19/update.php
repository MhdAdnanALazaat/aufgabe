<?php
require_once ("db.php");
	if( isset( $_GET["update"]) ){
	$LandID=(int)$_GET["update"];

}else {

	if ( isset( $_POST["update"] )) {
	$LandID=(int)$_POST["LandID"];
}else {
	exit("كس امو خربان");
}

}

// update start
// Wenn Formular abges
if ( isset( $_POST["update"])) {

   $Land=htmlspecialchars(trim($_POST["Land"]));
   $Flaeche=htmlspecialchars(trim($_POST["Flaeche"]));
   $Einwohner=htmlspecialchars(trim($_POST["Einwohner"]));
   $Region=htmlspecialchars(trim($_POST["Region"]));
   $Hauptstadt=htmlspecialchars(trim($_POST["Hauptstadt"]));
   $BIP=htmlspecialchars(trim($_POST["BIP"]));
   

}//update Ende

$sql="UPDATE laender SET 
	Land=:Land,
	Flaeche=:Flaeche,
	Einwohner=:Einwohner,
	Region=:Region,
	Hauptstadt=:Hauptstadt,
  BIP=:BIP
	WHERE LandID=:LandID
	";

	$stmt=$db->prepare($sql);
   $stmt->bindparam(":LandID",$LandID);
   $stmt->bindparam(":Land",$Land);
   $stmt->bindparam(":Flaeche",$Flaeche);
   $stmt->bindparam(":Einwohner",$Einwohner);
   $stmt->bindparam(":Region",$Region);
   $stmt->bindparam(":Hauptstadt",$Hauptstadt);
   $stmt->bindparam(":BIP",$BIP);
   $stmt->execute();
   


?>





<?php
//Zum Begullen das Formulars
$sql="SELECT * FROM laender
WHERE LandID=:LandID";

$stmt=$db->prepare($sql);
$stmt->bindparam(":LandID",$LandID);
$stmt->execute();
// Keine Schleife notig , da nur 1 Artikel abgefragt wird 
$row=$stmt->fetch();

?>
<!DOCTYPE html>
<html>
<head>
   <title><?php  echo "php_kurs"; ?></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="css/style.css" media="screen">

</head>
<body>
<div class="container">
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">

	   LandID<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["LandID"] ?>"
       name="LandID" readonly><br>



       Land Name<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["Land"] ?>" 
       name="Land"><br>

        Flaeche<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["Flaeche"] ?>" 
       name="Flaeche"><br>

       Einwohner<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["Einwohner"] ?>" 
       name="Einwohner"><br>

       Hauptstadt<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["Hauptstadt"] ?>" 
       name="Hauptstadt"><br>

       Region<br>
       <input type="text" class="form-control" 
       value="<?php echo $row["Region"] ?>" 
       name="Region"><br>
       BIP<br>
       <input type="text" class="form-control"
       value="<?php echo number_format($row["BIP"],2,",","");?>"
       name="BIP" 
       ><br>
       

      
       <input  href="insert_data.php" type="submit" class="form-control" name="update" value="spichern">

   </form>
</div>
</body>
</html>