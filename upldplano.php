<?
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc'); 
require_once "errorhand.php";
require_once "control_login.php";
require_once "newsesion.php";
require_once "error-volver.php";

////////////////////////////////////  permisos ///////////////////////////////////////////////////////////////////////////

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
					. $_COOKIE['usr_area']."</b>- no tiene privilegios de edición de plano de habitaciones.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";
	error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'principal.php', 5000);
	exit;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$err_msg = "";

$newfile = $_SERVER["DOCUMENT_ROOT"] . "/images/plano.jpg";

if (isset($_FILES['foto']) && ($_FILES['foto']['size'] > 716800) )
	$err_msg = "<p style='color:cc3333'>El tamañano de la imagen que intenta agregar ".
	           "(". $_FILES['foto']['size'] .") excede el tamaño máximo aceptado</p>";

if (isset($_FILES['foto']) && ($_FILES['foto']['type'] <> "image/pjpeg") )
	$err_msg .= "<p style='color:cc3333'>El tipo de imagen que intenta agregar ".
	            "(". $_FILES['foto']['type'] .") no corresponde al formato requerido(jpg).</p>";

if (isset($_FILES['foto']) &&
	is_uploaded_file($_FILES['foto']['tmp_name']) &&
	($_FILES['foto']['size'] <= 716800 &&
	 $_FILES['foto']['type'] == "image/pjpeg")){
	if (copy($_FILES['foto']['tmp_name'], $newfile)){
		unlink ($_FILES['foto']['tmp_name']);
		auditoria("ninguna", "modificó", "Plano habitaciones");
		header ("Location: consultas/habitaciones.php");
		exit;
	} 
}

?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<title><?=TITULO?></title>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:80px">
<h3>Seleccione la imagen del plano:<hr></h3>
<form action='upldplano.php?dd=0' method='post' enctype="multipart/form-data">
	<input type='file' name='foto' accept="image/jpeg">
	<input type="hidden" name="MAX_FILE_SIZE" value="716800">
	<input type='submit' value='Enviar'>
	<input type="button" value="Salir" onClick="window.location.replace('consultas/habitaciones.php')">
</form>

<?=$err_msg?>

<p style="position:absolute; bottom:50px ">
El croquis se mostrará en un tamaño de 550px de ancho x 410 px. de alto formato jpg, definición de 72 dpi.<br>
Máximo tamaño de archivo aceptado: 700 Kbytes.<br>
Si no logra enviar la imagen compruebe que el formato de la misma sea con extensión .jpg <br>
y el tamaño de archivo no supere los 700 Kbytes. Gracias.
</p>
</body></html>