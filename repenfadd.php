<? 
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformins.php";

if ($_COOKIE['usr_area'] <> 'Enfermería'  && $_COOKIE['usr_area'] <> 'Supervisión Enfermería' ){
	header ("Location: reportenf.php");
	exit;
}
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>);"
bgcolor="#eeeeee" style="margin:40px">
<h3>Registro de reporte de enfermería<HR></h3>

<?php
getFormIns("reportes_enfermería",'reportenf.php');

if (isset($_POST ['turno'])){ // despues de insert regresa
	echo "<script language='javascript'>window.location.replace('reportenf.php')</script>";
}
?>

</body>
</html>