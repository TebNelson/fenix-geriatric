<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "newsesion.php";

$error_clave_actual= false; $error="";

if (isset($_POST['pwd_actual']) && trim($_POST['pwd_actual']) <> "" ){
if (usr_chk_pwd($_COOKIE['logon'], trim($_POST['pwd_actual'])) ){
	$error_clave_actual = false;
	if (usr_cambiar_pwd($_COOKIE['logon'], trim($_POST['pwd_nueva']))){
		$error = false;
			$id_audit = auditoria("usuarios", "cambió contraseña usuario", $_COOKIE['logon']);
	}else{
		$error=true;
	}
} else {
	$error_clave_actual = true;
}
}
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<script language='javascript'>
function vf_pwd()
{
	var valor_campo = document.frm_pwd.pwd_actual.value;
	valor_campo = valor_campo.replace(/^\s*|\s*$/g,"");
	if (valor_campo.length < 6){
	alert("Ingrese su contraseña actual de al menos 6 caracteres.");
	document.frm_pwd.pwd_actual.value="";
	document.frm_pwd.pwd_actual.focus();
	return false;
	}
	var valor_campo = document.frm_pwd.pwd_nueva.value;
	valor_campo = valor_campo.replace(/^\s*|\s*$/g,"");
	if (valor_campo.length < 6){
	alert("Ingrese su contraseña nueva con al menos 6 caracteres.");
	document.frm_pwd.pwd_nueva.value="";
	document.frm_pwd.pwd_nueva.focus();
	return false;
	}
	var valor_campo = document.frm_pwd.pwd_nueva_confirm.value;
	valor_campo = valor_campo.replace(/^\s*|\s*$/g,"");
	if (valor_campo.length < 6){
	alert("Confirme su contraseña nueva con al menos 6 caracteres.");
	document.frm_pwd.pwd_nueva_confirm.value="";
	document.frm_pwd.pwd_nueva_confirm.focus();
	return false;
	}
	var campo1 = document.frm_pwd.pwd_nueva_confirm.value.replace(/^\s*|\s*$/g,"");
	var campo2 = document.frm_pwd.pwd_nueva.value.replace(/^\s*|\s*$/g,"");
	if (campo1 != campo2 ){
	alert ("Las contraseñas no coinciden.");
	document.frm_pwd.pwd_nueva_confirm.value = "";
	document.frm_pwd.pwd_nueva.value = "";
	document.frm_pwd.pwd_nueva.focus();
	return false;
	}
}
</script>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>);"
bgcolor="#eeeeee" style="margin:90px">
<h3>Establecer nueva contraseña: <hr></h3>
La longitud mínima de password es de 6 caracteres.
<div style="position:relative; left:90; top:40">
<? 
if ($error_clave_actual) {
	echo "<br><b style='color:#CC3333'>La contraseña actual proporcionada no es correcta.</b>" ;
} else {
	if ($error) 
		echo "<b style='color:#CC3333'>Error al intentar modifcar la contraseña actual.</b>";
}

if (isset($_POST['pwd_actual'] ) &&  !$error && $_POST['pwd_actual'] <> "" && !$error_clave_actual)
	echo "<b>La nueva contraseña se guardó correctamente</b>";
else{

?>
<form action="#" method="post" name="frm_pwd" onSubmit="return vf_pwd()">
<table width="348" border="0">
<tr>
	<td colspan="2">&nbsp;</td>

</tr>
<tr>
	<td width="165">Contraseña actual:&nbsp;</td>
	<td width="173"><input name="pwd_actual" type="password"></td>
</tr>
<tr>
	<td>Nueva contraseña:&nbsp;</td>
	<td><input name="pwd_nueva" type="password" maxlength="20"></td>
</tr>
<tr>
	<td>Confirmar nueva contraseña:</td>
	<td><input name="pwd_nueva_confirm" type="password" maxlength="20"></td>
</tr>
<tr>
	<td colspan="2" style="text-align:center">
	<input type="submit" value="Cambiar contraseña" maxlength="20"><? } // que ganas de complicar no??>
	<input type="button" value=" Salir " onClick="window.location.replace('principal.php')"></td>
</tr>
</table>
</form>
</div>
</body>
</html>