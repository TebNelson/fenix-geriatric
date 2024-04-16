<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformins.php";
require_once "ifexist.php";

$hc =""; $key =""; $tabla =""; $area=""; $cmdText=""; $row=""; $query="";

if (!isset($_COOKIE['hc']) && !isset($_POST['hc'])){ // no tenemos hc
	header('Location: principal.php');
	exit;
}

if (isset($_POST['hc'])){
	$hc =$_POST['hc'];
}

if (isset($_GET['hc'])){
	$hc =$_GET['hc'];
}

if (isset($_COOKIE['hc']) && !isset($_POST['hc'])){
	$hc =$_COOKIE['hc'];
}

if ($hc == "") { // si no es residente actual go
	header('Location: principal.php');
	exit;
}

if (isset($_GET['key'])){
	setcookie('key', $_GET['key']);
	$key = $_GET['key'];
}

if (isset($_COOKIE['key']) && !isset($_GET['key'])){
	$key = $_COOKIE['key'];
}

switch ($key){
	case 1: $tabla = "informes_sociales"; break;
	case 2:
	$tabla = "evoluciones";
		if (isset($_GET["area"])){
			$area = $_GET["area"];
			setcookie('area_evol', $area);
		}else{
			if (isset($_COOKIE['area_evol'])) $area = $_COOKIE['area_evol'];
		}
	break;
	case  4: $tabla = "familiares"; break;
	case  5: $tabla = "epicrisis"; break;
	case  6: $tabla = "interconsultas"; break;
	case  7: $tabla = "signos_vitales"; break;
	case  8: $tabla = "pae"; break;
	case 10: $tabla = "semestrales_clínica_médica"; break;
	case 11: $tabla = "semestrales_psiquiatría"; break;
	case 12: $tabla = "semestrales_nutrición"; break;
	case 13: $tabla = "semestrales_trabajo_social"; break;
	case 14: $tabla = "semestrales_kinesiología"; break;
	case 15: $tabla = "semestrales_recreación"; break;
	case 17: $tabla = "semestrales_enfermería"; break;
	case 'vt': $tabla = "visitas"; break;
	default: $tabla = ""; $titulo = ""; break;
}

if (isset($tabla) && !isset($titulo)){
	$titulo = str_replace('_', ' ' , $tabla);
	$titulo = ucfirst($titulo);
}

if (isset($tabla)){
	setcookie('tabla', $tabla);
}

if (!isset($tabla) && isset($_COOKIE['tabla'])){
	$tabla = $_COOKIE['tabla'];
}

###############################   EPICRISIS           #############################################

if ($tabla == 'epicrisis' && isset ($_POST['hc'])){
	$sql_baja = "update residentes set egreso_fecha ='". fechaymd ($_POST['egreso_fecha'])."' where hc = $hc";
	$sql_cancelar_prescripciones = "update prescripciones set hasta =curdate() where hc=$hc";

	$con = conectar();

	if ( ! $query = mysql_query($sql_baja, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		exit("Error al intentar registrar epicrisis.");
	}
	
	if ( ! $query_prescrip = mysql_query($sql_cancelar_prescripciones, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	}

	setcookie('hc');
	setcookie('key');
	setcookie('tabla');
}

####################################################################################################

echo "<html><head><script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>";
echo "<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>";
echo "<script language='JavaScript' src='js/sto.js'></script>";
echo "<title>". TITULO ."</title></head>";
echo "<body oncontextmenu='return false' bgcolor='#eeeeee' style='margin:30px;margin-right:50' onload=\"sto(" . $_COOKIE['timeout'] .");\">";
echo "<h3>Nuevo registro $titulo<hr></h3>";

if ($tabla == ""){
	echo "</body></html>";
	exit;
}

require "permisos.php";

if (check_permisos($key)){
	if ( $tabla == "familiares" && if_exist($hc, "hc", "familiares")){
		$msg_e =  "<script language='javascript'>window.location.replace('editfliar.php')</script>";
		exit($msg_e);
	}
	
	if (! getFormIns($tabla, 'residente.php')) {
		if ($tabla == "familiares" && strstr(mysql_error(), "Duplicate entry")){
		$msg_err = "Ya existe registro de familiar responsable del residente actual. ".
               "<span onclick='window.location.replace(\"residente.php\")' ".
							 "style='cursor:pointer; color:blue'> Volver a HMSU</span> ";
		} else {
		$msg_err = "Error de datos, se envió información de error a soporte técnico. ".
               "<span onclick='window.location.replace(\"residente.php\")' ".
							 "style='cursor:pointer; color:blue'> Volver a HMSU</span> ";
		}
		exit($msg_err);
	}

	echo "<div style='position:absolute; top:0px; right:45px; z-index:1'>";
	echo "<img style='height:90px; width:90px' src='fotos/" . $_COOKIE['hc'] . ".jpg'><br><b>";
	echo residente_nombre_completo( $_COOKIE['hc']);
	echo "</b></div>";
	
	if (isset($_POST ['hc'])){ // despues de insert regresa
		echo "<script language='javascript'>window.location.replace('residente.php')</script>";
	}

} else {
	echo "<p style=\"position:absolute; top: 200; left:200; color:#cc3333\">El área a la que usted pertenece 
				(" . $_COOKIE['usr_area']. ") no realiza registros de  $titulo.<br>
				Consulte con Administración si su área ha sido mal asignada.</p>";
	echo "<script language='javascript'>sto_volver()</script>";
}	

echo "</body></html>";
?>