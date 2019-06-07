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

<!DOCTYPE html>
<html>
<head>
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

	</style>
	 <title><?php  echo "php_kurs"; ?></title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<body>

<div class="container">
<br/>
<div class="row justify-content-center">
<div class="col-12 col-md-10 col-lg-8">
                            
		<form  class="card card-sm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<div class="card-body row no-gutters align-items-center">
<div class="col-auto">
<i class="fas fa-search h4 text-body"></i>
 </div>
                                  
<div class="col">
                                        
 		<input type="text" class="form-control form-control-lg form-control-borderless" name="suche" placeholder="Suchegroff" aria-label="Search"><br>
</div>
 <div class="col-auto">
		<button name="suche_senden" value="suche" class="btn btn-sm btn-success" type="submit">suche</button>
</div>
                                    
</div>
</form>
</div>
                      
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
echo $output;
?>

</div>
</body>
</html>
