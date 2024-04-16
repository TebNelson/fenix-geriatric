<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require "error-volver.php";

////////////////////////////////////  permisos /////////////////////////////////////////////////////////////////////////////////////

$vAreas = array('Gerencia', 'Dirección', 'Administración', 'Secretaría');
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
					. $_COOKIE['usr_area']."</b>- no tiene privilegios de edición de fotografía.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";
error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'residente.php', 5000);
exit;
}

///////////////////       solicita desde una hc                   //////////////////////////////////////

if (!isset($_COOKIE['hc']) || $_COOKIE['hc'] == ""){
	header ("Location: principal.php");
	exit;
}

//////////////////    upload    -  verificar y guardar    ///////////////////////////////////////////////////

$newfile = $_SERVER["DOCUMENT_ROOT"] . "/fotos/" .  $_COOKIE['hc'] .".jpg";
$err_msg ="";

if (isset($_FILES['foto']) && is_uploaded_file($_FILES['foto']['tmp_name']) && 
   ($_FILES['foto']['size'] <= 15000 && $_FILES['foto']['type'] == "image/jpeg")){
	if (copy($_FILES['foto']['tmp_name'], $newfile)){
		unlink ($_FILES['foto']['tmp_name']);
		header ("Location: residente.php");
		exit;
	} else {
		$err_msg = "<span style='color:#cc3333'>Error al copiar fotografía.</span>";
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js">dontback()</script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:60px">
<h3>Seleccione la nueva fotografía:<hr></h3>
<?=$err_msg?>
<div style="position:relative; top:30; left:30">
Residente: <b><?=residente_nombre_completo($_COOKIE['hc'])?></b>
<form action='upldfoto.php' method='post' enctype="multipart/form-data">
	<input type='file' name='foto'>
	<input type="hidden" name="MAX_FILE_SIZE" value="15000">
	<input type='submit' value='Enviar'>
	<input type="button" value="Salir" onClick="window.location.replace('residente.php')">
</form>
</div>
<small style=" position:absolute; bottom:30px">
La imagen de fotograf&#237;a debe escanearse en 130 x 130 píxeles, 
formato jpg, definición de 75 dpi.<br>
Máximo tamaño de archivo aceptado: 15 Kbytes.<br>
Si no logra enviar la fotografía compruebe que el formato 
de la misma sea con extensión .jpg
y el tamaño de archivo no supere los 15 Kbytes.<br> 
Gracias.
</small></body></html>