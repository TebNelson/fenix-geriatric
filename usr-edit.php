<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "getformupd.php";
require_once "grid.php";
require_once "error-volver.php";

$logon = "";

if (isset($_GET['cmb'])){
	$msg = "La contraseña se modificó correctamente.";
} else {
	$msg = "";
}

if ($_COOKIE['usr_area'] != 'Dirección' && $_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administración'){
$err_msg= "El área a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b> - no tiene privilegios para editar datos de usuarios.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";

	error_volver('estilos/estilos.css','js/sto.js',$err_msg, 'principal.php', 5000);
	exit;
}
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<script language='javascript'>
function vf_pwd()
{
	var valor_campo = document.frm_pwd.pwd1.value;
	valor_campo = valor_campo.replace(/^\s*|\s*$/g,"");
	if (valor_campo.length < 6){
	alert("Ingrese su contraseña nueva con al menos 6 caracteres.");
	document.frm_pwd.pwd1.value="";
	document.frm_pwd.pwd1.focus();
	return false;
	}
	var valor_campo = document.frm_pwd.pwd2.value;
	valor_campo = valor_campo.replace(/^\s*|\s*$/g,"");
	if (valor_campo.length < 6){
	alert("Confirme su contraseña nueva con al menos 6 caracteres.");
	document.frm_pwd.pwd2.value="";
	document.frm_pwd.pwd2.focus();
	return false;
	}
	var campo1 = document.frm_pwd.pwd1.value.replace(/^\s*|\s*$/g,"");
	var campo2 = document.frm_pwd.pwd2.value.replace(/^\s*|\s*$/g,"");
	if (campo1 != campo2 ){
	alert ("Las contraseñas no coinciden.");
	document.frm_pwd.pwd2.value = "";
	document.frm_pwd.pwd1.value = "";
	document.frm_pwd.pwd1.focus();
	return false;
	}
}
</script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>); 
stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" 
bgcolor="#eeeeee" style="margin:20,20,0,20">
<h3>Usuario:<hr></h3>

<?php
if (isset($_GET['logon']))  $logon = $_GET['logon'];

if (isset($_POST['logon'])) $logon = $_POST['logon'];

getFormUpd("usuarios", "logon='$logon'", "usr-list.php");

if (isset($_POST['logon']))
			echo "<script language='javascript'>window.location.replace('usr-list.php')</script>";
?>
<form action="usr-cmb-pass.php" method="post" name="frm_pwd" onsubmit='return vf_pwd()' style="position: absolute; left:100px">
<b>Cambiar contraseña:</b><br>
Nueva contraseña: &nbsp;<input type='password' name='pwd1'><br>
Repetir contraseña: <input type='password' name='pwd2'><br>
<input type="submit" value="Cambiar contraseña">
<input type="hidden" name="logon" value="<?=$logon?>" /> <?="<span style='color: cc3333'>$msg </span>\n "?>
</form>
</body>
</html>