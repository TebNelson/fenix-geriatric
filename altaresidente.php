<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformins.php";
#
################################# CONTROL DE PRIVILEGIOS #############################################

$vAreas = array('Gerencia', 'Dirección', 'Administración', 'Secretaría', 'Trabajo Social', 'Supervisión Enfermería', 'Enfermería');
$z = count ($vAreas);

$auth = 0;

for ($i=0; $i < $z; $i++){
	if (isset($_COOKIE['usr_area']) && $_COOKIE['usr_area'] == $vAreas[$i]){
		$auth= true;
		break;
	}	
}	

if (!$auth){
	$texto = "Intento de registro nuevo residente sin privilegios.";
	trigger_error($texto ,E_USER_WARNING);
	header ("Location: principal.php");
	exit;
}
#########################################################################################################3
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<?= $_COOKIE['timeout']?>)" bgcolor="#eeeeee">
<br>
<h3 align="center">Registro de ingreso nuevo residente<hr></h3>

<?
getFormIns('residentes', 'principal.php');

if (isset($_POST['apellido'])){
echo "<script language='javascript'>window.location.replace('principal.php')</script>";
}
?>

</body>
</html>