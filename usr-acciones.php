<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require_once "selecthtml.php";
require_once "error-volver.php";

if ($_COOKIE['usr_area'] != 'Dirección' && $_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administración'){
$err_msg= "El área a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b> - no tiene privilegios de consulta de acciones de usuario.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";

error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'residente.php', 5000);
exit;
}

if (isset($_POST['logon']))
$logon = $_POST['logon'];
else
$logon = "";

if (isset($_POST['limit']))
	$limit = $_POST['limit'];
else
	$limit=100;

?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' 
onload="sto(<? echo $_COOKIE['timeout']?>); 
stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" 
bgcolor="#eeeeee" style="margin:20px">
<h3>Usuario:<hr></h3>
<form name="frm-filtro" action="" method="post">
<?php
selectHTML("Select logon, concat(apellido, ', ', nombre) from usuarios", 'logon', 1, '', '', '', $logon)
?>
100<input type='radio' name='limit' value='100'>
500<input type='radio' name='limit' value='500'>
1000<input type='radio' name='limit' value='1000'>
<input type="submit" value="Auditar" style='width:100px'>
<input type="button" value="Volver auditor&#237;a" onclick="window.location.replace('usr-audit.php')">
&nbsp;&nbsp;&nbsp;
<input type="button" value="Volver menú principal" onclick="window.location.replace('principal.php')">
</form>
<?php
$sql = "select us.id as 'sesión id', us.ip_origen, ".
       "date_format(us.fecha, '%d/%m/%Y  -  %H:%i:%s') as 'fecha y hora de incio', ua.hora, ".
			 "if(ua.acción <> '', ua.acción ,'inició sesión') acción, ua.tabla, ua.id_registro ".
			 "from usuarios as u inner join usuarios_sesiones as us on u.logon = us.logon ".
			 "left join usuarios_auditoría as ua on us.id = ua.id_sesión where	u.logon = '$logon' ".
			 "order by us.id desc, ua.hora desc limit $limit;";
 
$img="images/bluearrow.gif";
$resgrid = grid ($sql, "Sesiones y acciones de usuario", "", $img);
?>
</body></html>