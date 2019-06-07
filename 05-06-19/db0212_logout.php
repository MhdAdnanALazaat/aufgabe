<?php
session_start();
session_destroy();
//Wenn die Session leer ist, dann niemand angemeldet
//Weiterleitung zu Logout und weiter zum Login
header("location:db0210_login.php");


?>
