<?php
require_once ("db.php");

if ( isset($_POST["suche_senden"])){
  //Was uber scuhfied kommt
  $suche="%".htmlspecialchars($_POST["suche"])."%";
}else{
// beim ersten aufruf (ohne Formular)
  $suche="%%";
}
?>







<?php
require_once ("db.php");

if (isset($_POST["senden"] ) ) {

   $landID=htmlspecialchars(trim($_POST["landID"]));
   $land=htmlspecialchars(trim($_POST["land"]));
   $flaeche=htmlspecialchars(trim($_POST["flaeche"]));
   $flaeche=str_replace(",",".",$flaeche);
   $einwohner=htmlspecialchars(trim($_POST["einwohner"]));
   $einwohner=str_replace(",",".",$einwohner);
   $region=htmlspecialchars(trim($_POST["region"]));
   $hauptstadt=htmlspecialchars(trim($_POST["hauptstadt"]));
   $BIP=htmlspecialchars(trim($_POST["BIP"]));
   $BIP=str_replace(",",".",$BIP);

   $sql="INSERT INTO laender
   (LandID,Land,Flaeche,einwohner,Region,Hauptstadt,BIP)
   VALUES
   (:landID,:land,:flaeche,:einwohner,:region,:hauptstadt,:BIP)";
    

   //verwenden wir prepare , wenn der User etwas bearbeiten möchte
   $stmt=$db->prepare($sql);
   $stmt->bindparam(":landID",$landID);
   $stmt->bindparam(":land",$land);
   $stmt->bindparam(":flaeche",$flaeche);
   $stmt->bindparam(":einwohner",$einwohner);
   $stmt->bindparam(":region",$region);
   $stmt->bindparam(":hauptstadt",$hauptstadt);
   $stmt->bindparam(":BIP",$BIP);
   $stmt->execute();

   //seite gleich neu laden , damit nur ein mal die Insert durchgesetzt wurde
   header("location:".$_SERVER["PHP_SELF"]);


   //wenn der Link zum löschen geklickt wurde



}

   if(isset($_GET["delete"])){
       $landID=(int)$_GET["delete"];
       $sql="DELETE FROM laender WHERE LandID=:landID";
       $stmt=$db->prepare($sql);
       $stmt->bindparam(":landID",$landID);
       $stmt->execute();
       header("location:".$_SERVER["PHP_SELF"]);
   }
 


?>
<!DOCTYPE html>
<html>
   <head>
<title><?php  echo "php_kurs"; ?></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style1.css" media="screen">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<style>
.active-pink input[type=text] {
border-bottom: 1px solid #f48fb1;
box-shadow: 0 1px 0 0 #f48fb1;
}

h6 {
  text-align: center;

}
.form-control-borderless {
    border: none;
}

.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}

.form-cotrol {
  background-color: red;
  display: block;
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #6306ff63;;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;

}

hr {
    margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 17px solid rgba(224, 0, 0, 0.1);
}
th{
       background-color: lightgreen;
       font-size: 20px;
       border: 1.5px solid white;
       text-align: center;
       color: white;
   }
   h1{
       color: lightgreen;
       font-size: 30px;
       padding: 5px;
       margin: 5px;
   }

   table td{
       background-color: lightblue;
       color: white;
       border: 1.5px solid white;
       text-align: center;
       padding: 1px;
       margin: 2px;


   a {
   text-decoration: none;
   }
</style>
   </head>
   <body>
    <div class="container">
<div class="row justify-content-center">
<div class="col-12 col-md-10 col-lg-8">
                            
<form  class="card card-sm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<div class="card-body row no-gutters align-items-center">
<div class="col-auto">
<i class="fas fa-search h4 text-body"></i>
 </div>
                                  
<div class="col">
                                        
    <input type="text" class="form-control form-control-lg form-control-borderless" name="suche" placeholder="Suche" aria-label="Search"><br>
</div>
 <div class="col-auto">
    <button name="suche_senden" value="suche" class="btn btn-sm btn-success" type="submit">suche</button>
</div>
                                    
</div>
</form>
</div>
                      
</div>
<?php
 $sql="SELECT * FROM laender
 WHERE Land LIKE :suche
 OR Hauptstadt LIKE :suche
 OR Region LIKE :suche";

 $stmt=$db->prepare($sql);
 $stmt->bindparam(":suche",$suche);
 $stmt->execute();

$output="";
$counter=0;
 while( $row=$stmt->fetch() ) {
 $output.= $row["Land"]." ".$row["Region"]." ".$row["Hauptstadt"]." "."<br>";
  $counter++;

}

echo "$counter Ergebnisse gefounden !"."<br>";

echo  $output  ;
?>
   <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
       Land ID<br>
       <input type="text" class="form-control" name="landID"><br>
       Land<br>
       <input type="text" class="form-control" name="land"><br>
       Flaeche<br>
       <input type="text" class="form-control" name="flaeche"><br>
       Einwohner<br>
       <input type="text" class="form-control" name="einwohner"><br>
       Region<br>
       <input type="text" class="form-control" name="region"><br>
       Hauptstadt<br>
       <input type="text" class="form-control" name="hauptstadt"><br>
       BIP<br>
       <input type="text" class="form-control" name="BIP"><br>

       <input class="btn btn-secondary btn-lg btn-block" type="submit"  name="senden" value="spichern"><hr>

   </form>
           <?php

          $sql="SELECT * FROM laender";
          $x=$db->query($sql);

         echo "<table><tr>
         <th>ID</th>
         <th>Land</th>
         <th>Fleache</th>
         <th>Einwohner</th>
         <th>Region</th>
         <th>Hauptstadt</th>
         <th>BIP</th>
         <th>Action</th>
         </tr>";
       while($row=$x->fetch()) {
           echo "<td>" . $row["LandID"].
           "</td><td>" . $row["Land"].
           "</td><td>" . $row["Flaeche"].
           "</td><td>" . $row["Einwohner"].
           "</td><td>" . $row["Region"].
           "</td><td>" . $row["Hauptstadt"].
           "</td><td>" . $row["BIP"].
           "</td><td>" . "<a  class='btn btn-primary btn-sm' href='?delete=".$row["LandID"]."'>delete</a>
               <a  class='btn btn-secondary btn-lg active'   href='update.php?update=".$row["LandID"]."'>update</a><br>".
           "</td></tr>";

       }
       echo "</table>";

          ?>


      
  

</div>

   </body>
</html>