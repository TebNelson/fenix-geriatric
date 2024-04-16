<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "error-volver.php";
require_once "getformupd.php";

$vAreas = array('Gerencia',
                'Dirección',
								'Administración',
								'Secretaría',
								'Clínica Médica',
								'Psiquiatría',
								'Trabajo Social',
								'Enfermería');

$z = count ($vAreas);

$auth = 0;

for ($i=0; $i < $z; $i++){
if ($_COOKIE['usr_area'] == $vAreas[$i]){
	$auth= true;
	break;
}	
}	

if (!$auth){
$err_msg= "El área a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b>- no tiene privilegios de edición de datos de familiares.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";

error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'residente.php', 5000);
exit;
}

if (!isset($_COOKIE['hc']) || $_COOKIE['hc'] == ""){
header('Location: principal.php');
exit;
}

echo "<html><head><script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>";
echo "<script language='JavaScript' src='js/sto.js'></script>";
echo "<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>";
echo "<title>". TITULO ."</title>";
echo "</head><body oncontextmenu='return false' bgcolor='#eeeeee' style='margin: 30,60,0,90' onload=\"sto(" . $_COOKIE['timeout'] . ");\">";
echo "<h3>Edición de datos: FAMILIARES<hr></h3>";
echo "<div style='position:absolute; top:100; right:59'>";
echo "<img style='height:80px; width:80px' src='fotos/" . $_COOKIE['hc'] . ".jpg'><br>".residente_nombre_completo($_COOKIE['hc'])."</div>";

getFormUpd("familiares", "hc=". $_COOKIE['hc'], 'residente.php');

if (isset($_POST ['hc'])){
echo "<script language='javascript'>window.location.replace('residente.php?key=4')</script>";
}

echo "</body></html>";
?>
