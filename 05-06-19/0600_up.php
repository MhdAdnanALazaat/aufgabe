<?php
       //Absoluter Pfad
      $pfad=__DIR__;
      $ordner="upload";
      //Wenn Button gedrückt wurde
      if(  isset($_POST["senden"])   ){
          /* foreach ($_FILES["datei"] as $key=>$value) {
               echo "$key : $value <br>";
           }*/

           $dateiname=$_FILES["datei"]["name"];

          $dateiname=$_FILES["datei"]["name"];
           //
           $alt=array("ö","Ö","ä","Ä","ü","Ü","ß"," ");
           $neu=array("oe","Oe","ae","Ae","ue","Ue","ss","_");
           $dateiname=str_replace($alt,$neu,$dateiname);

           move_uploaded_file($_FILES["datei"]["tmp_name"], "$pfad/$ordner/$dateiname");

      }

      if ( isset($_GET["delete"] ) ) {
      	$dateiname=$_GET["delete"];
      	// Wenn Datei existiert , wird sie geloscht
      	if ( file_exists("$pfad/$ordner/$dateiname")) {
      		unlink("$pfad/$ordner/$dateiname");
      	}
      }


   ?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8">
    <title><?php echo "php-kurs"; ?></title>
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       
    <!--Schriften von Google-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!--eigener Stylesheet-->
    <link rel="stylesheet" type="text/css" href="s.css">
</head>
<body>
       <div class="container-fluid">
      <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
        <br>
          <input type="file" class="form-control-file" name="datei" placeholder="Suchbegriff"><br>

          <input type="submit" class="form-control" name="senden" value="Upload">

      </form>

<?php
$ordnerinhalt=opendir("$pfad/$ordner");
//var_dump($ordnerinhalt);
while ($datei=readdir($ordnerinhalt)) {
	if ($datei !="." && $datei !="..") {
	echo $datei." ";
	echo filesize("$pfad/$ordner/$datei");
	echo "<a href='?delete=$datei'>delete</a>";
	echo "<br>";	

}// IF ENDE


	
}// while Ende
?>

       </div>



</body>
</html>