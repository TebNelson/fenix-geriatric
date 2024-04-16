<?php 
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformins.php";
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:60px; margin-right:50px; margin-top:35px">
<h3>Cronograma de actividades<hr></h3>
<? getFormIns("actividades", "cronograma.php")?><!--
<input type='button' value='Cronograma' onclick="window.location.replace('cronograma.php')">
<input type='button' value=' Menú principal' onclick="window.location.replace('../principal.php')">-->
</body>
</html>

<? 
if (isset($_POST ['fecha_actividad']) && $_POST ['fecha_actividad'] <> "") // despues de insert regresa
		echo "<script language='javascript'>window.location.replace('cronograma.php')</script>";
?>