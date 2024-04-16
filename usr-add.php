<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformins.php";
require_once "grid.php";
require_once "error-volver.php";

if ($_COOKIE['usr_area'] != 'Dirección' && $_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administración'){
$err_msg= "El área a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b> - no tiene privilegios para agregar nuevos usuarios.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";
	error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'principal.php', 5000);
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
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" bgcolor="#eeeeee" style="margin:20,20,0,20">
<h3>Usuario: <hr></h3>

<?php
$sql = "select logon, concat(apellido, ', ', nombre) as nombre, domicilio, teléfonos, área, matricula, horario, ".
       "activo, minutos_timeout, acceso_remoto from usuarios order by nombre;";

getFormIns('usuarios', 'principal.php');

if (isset($_POST['logon']) && $_POST['logon']<>""){
	echo "<script language='javascript'>window.location.replace('usr-list.php')</script>";
}
?>

</body></html>