<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "error-volver.php";
require_once "getformupd.php";

$vAreas = array('Clínica Médica', 'Dirección');
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
					. $_COOKIE['usr_area']."</b>- no tiene privilegios de edición de datos de epicrisis.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";

error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'bajas.php', 5000);
exit;
}


if (isset($_COOKIE['hc_eg']) && $_COOKIE['hc_eg'] > 0 ){
	$hc = $_COOKIE['hc_eg'];
} else {
	header("Location:principal.php");
	exit;
}

echo "<html><head><script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>";
echo "<title>". TITULO ."</title>";
echo "<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>\n";
echo "<script language='JavaScript' src='js/sto.js'></script></head>\n";
echo "<body oncontextmenu='return false' bgcolor='#eeeeee' style= 'margin:30,30,20,60' onload=\"sto(" .$_COOKIE['timeout'] .");\">";
echo "<h3>Modifique los datos del paciente egresado que sean necesarios en el siguiente formulario:<hr></h3>";
echo "<div style='position:absolute; top:130; right:30'>";
echo "<img style='height:130px; width:130px' src='fotos/" .$hc . ".jpg'><br>". residente_nombre_completo($hc)."</div>";

getFormUpd("epicrisis", "hc=$hc", 'bajas.php');

if (isset($_POST ['hc'])){
echo "<script language='javascript'>window.location.replace('bajas.php?key=5')</script>";
}

echo "</body></html>";
