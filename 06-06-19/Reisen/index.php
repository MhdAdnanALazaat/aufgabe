﻿<!DOCTYPE html>
<html>
<head>
	<title <?php echo "Aufgabe3" ?>;></title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/print.css" media="print">

	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body>
<div class="container-fluid">
<img src="img/hg1.jpg" alt="Meer" id="bg">
<div id="wrapper">

<header>
<h1>Bye Reisen</h1>
<img src="img/header1.jpg" alt="Meer">
<ul id="socialmedia">

	<li><a href="http://www.facebook.com">
	<img src="img/facebook.png" alt="Facebook">
	</a></li>

	<li><a href="http://www.twitter.com">
	<img src="img/twitter.png" alt="twitter">
	</a></li>

</ul>
</header>

<section>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">angebote</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">services</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</section>

<section >

<?php
require_once "db.php";
$statement = $db->query("SELECT reisenHeader, reisenText, reisenBild FROM reisen");

while ($row = $statement->fetch()) {
	echo "<div class='card' style='width: 48rem;'>";
	echo"<h2 class='card-title'>$row[reisenHeader]</h2>
	<p class='card-text'>
	<img class='card-img-top' src='img/$row[reisenBild]'>
	$row[reisenText]
	</p>
</div>
";
}

?>
</section>

<section>
<?php
$statement = $db->query("SELECT werbungHeader, werbungText FROM werbung");

while ($row = $statement->fetch()) {
	echo "<div class='card' style='width: 48rem;'>";
	echo "<div class='werbung'>\n";
	echo "<h2>$row[werbungHeader]</h2>\n";
	echo "<h5>$row[werbungText]</h5>\n";
	echo "</div>";
	echo "</div>";

}
?>

</section>

<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">&copy; Copyright 2015 Bye Bye
    
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->


</div>
</body>
</html>