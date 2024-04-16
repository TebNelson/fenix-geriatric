<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";

if (isset($_POST['pwd1']) && isset($_POST['pwd2'])){
	if (strlen(trim($_POST['pwd1']) > 5)   &&  strlen(trim($_POST['pwd2']) > 5) )  {
		if (trim($_POST['pwd1'])  ==  $_POST['pwd2']) {
			require_once "abm.php";
			$sql = "update usuarios set pass = password('".$_POST['pwd1']."') where logon = '".$_POST['logon']."'";
			$con = conectar();
			if (! mysql_query($sql, $con)){
				trigger_error("Error al cambiar clave de usuario ". $_POST['logon'] , 512);
			}
			//echo $sql;
			header("Location: usr-edit.php?logon=" . $_POST['logon'] . "&cmb=1");
			exit;
		}
	}
}

header("Location: index.php");
exit;
?>