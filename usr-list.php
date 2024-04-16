<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require "error-volver.php";

if ($_COOKIE['usr_area'] != 'Direcci�n' && $_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administraci�n'){
$err_msg= "El �rea a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b> - no tiene privilegios para consultar datos de usuarios.<br>".
					"Consulte con <b>Administraci�n</b> si su �rea ha sido mal asignada.";
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
<body oncontextmenu='return false' style="margin:30px" bgcolor="#eeeeee"
onload="sto(<?=$_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')"  >
<h3>Listado y edici�n de usuarios:<hr></h3>
<div style="position:relative; top:-5px; right:-405px">
	<input type="button" value='Agregar nuevo usuario' onClick="window.location.replace('usr-add.php')">
	<input type="button" value="Volver men� principal" onclick="window.location.replace('principal.php')">
</div>

<?php
$sql = "select concat(apellido, ', ', nombre) as nombre, �rea, domicilio, tel�fonos, ".
       "horario, concat('<input type=\'button\' value=\'Editar\' ".
			 "onClick=\"window.location.replace(\'usr-edit.php?edit=1&logon=', logon ,'\')\">') as Editar ".
			 "from usuarios order by nombre;";
grid ($sql, "Usuarios del sistema", "No se registran usuarios a�n en el sistema.");
?>

</body></html>