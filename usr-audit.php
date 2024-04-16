<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require "error-volver.php";

if ($_COOKIE['usr_area'] != 'Dirección' && $_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administración'){
	$err_msg = "El área a la que Ud. pertenece - <b>".$_COOKIE['usr_area']."</b>- no tiene privilegios para ".
            "auditar usuarios. <br>Consulte con <b>Administración</b> si su área ha sido mal asignada.";
	error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'principal.php', 5000);
	exit;
}

$posreg    = 0;
$posregant = 0;
$sigdis    = 0;
$id_sesion = 0;
$antdis    = 0;

if (isset($_GET['posreg']))
	$posreg =intval( $_GET['posreg']) + 13;

if (isset($_GET['posregant']))
	$posreg =intval( $_GET['posregant']);

if ($posreg < 13) {
	$posregant = 0; 
	$antdis = "disabled";
} else { 
	$posregant = $posreg - 13;  
}

if (isset($_GET['id_sesion'])) $sigdis = "disabled";

if (isset($_GET['id_sesion'])){
	$where = "u.logon = us.logon and us.id= " .$_GET['id_sesion'];
	$concat = "concat('') as ver";
	$limit="0,13";
	$disabled = "";
	$antdis = "disabled";
} else {
	$where = "u.logon = us.logon";
	$concat = "concat('<input type=\"button\" value=\"Detalle\" onClick=\"window.location.replace(\'usr-audit.php?posreg=". 
          (intval($posreg) - 13) ."&id_sesion=', us.id ,'\')\">') as ver";
	$disabled = "disabled";
	$limit = "$posreg,13";
}

if ($posreg > contar_registros_sesiones() - 12) $sigdis="disabled";
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' 
onload="sto(<? echo $_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" bgcolor="#eeeeee" style="margin:30px">
<h3>Detalle de acciones de usuario ordenado por fecha y hora:<hr></h3>
<div style="position:relative; top: -0; width:100%">
<input type="button" value="Ver sesiones" 
onclick="window.location.replace('usr-audit.php?posreg=<?=$posreg + 13?>&posregant=<?=$posreg?>')" <?=$disabled?>>
<input type="button" value="<< Anterior"  
onclick="window.location.replace('usr-audit.php?posregant=<?=$posregant?>')" <?=$antdis?>>
<input type="button" value="Siguiente >>" 
onclick="window.location.replace('usr-audit.php?posreg=<?=$posreg?>')" <?=$sigdis?>>
<input type="button" value="Filtrar usuario" onClick="window.location.replace('usr-acciones.php')">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="Menú principal" onclick="window.location.replace('principal.php')">
</div>
<div style="position:relative; top: 5 ;width:100%">

<?php
$sql = "select us.id, ip_origen, date_format(us.fecha, '%d/%m/%Y  -  %H:%i:%s') as 'fecha y hora de incio', ".
       "concat(u.apellido, ', ', u.nombre) as nombre, u.área, $concat from usuarios as u, usuarios_sesiones as us ".
			 "where $where order by id desc, nombre limit $limit;";

$img = "images/bluearrow.gif";
$resgrid = grid ($sql, "Sesiones de usuario", "", $img);
?>

</div>
<div style="position:relative; top:8; width:100%">

<?php
if (isset($_GET['id_sesion'])){
	$id_sesion = $_GET['id_sesion'];
	$sql ="select	hora,	tabla,	acción,	id_registro from	usuarios_auditoría where 	id_sesión = $id_sesion order by id";
	grid ($sql, "Acciones de usuario", "No se registran acciones de usuarios en la sesión solicitada.", $img);
}
?>

</div>
</body></html>