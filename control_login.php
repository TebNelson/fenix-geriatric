<?php
//////////////////////// enviar cabeceras //////////////////////////////////////////////////////
$ahora = gmdate('D, d M Y H:i:s') . ' GMT';
header("Content-Language: ES-AR");
header('Pragma: no-cache'); // HTTP/1.0
header('Expires: 0'); // rfc2616 - Section 14.21
header('Last-Modified: ' . $ahora);
header("Author: Esteban Gómez");
header("Copyright: Esteban Gómez (c) 2006 ");

require_once "abm.php";

////////////////////////   CONtrOL DE LOGIN        //////////////////////////////////////////////

if (!isset($_COOKIE['logon']) || $_COOKIE['logon'] =="") {
	$err_txt  = "Intento de acceso fallido desde ".  $_SERVER['REMOTE_ADDR'] ;
	$err_txt .=  " SIN LOGON a ". $_SERVER['SCRIPT_NAME']  . ".";
	trigger_error($err_txt ,E_USER_WARNING);		
	header ("Location: ../index.php");
	exit();
}

/////////////// cerrar la sesión controlando el tiempo, con el timeout ////////////////////////

if (isset($_COOKIE['ultimo_acceso']) && intval($_COOKIE['ultimo_acceso']) > 0){
	$ua = $_COOKIE['ultimo_acceso']; 
} else{
	$ua = time();
}

setcookie("ultimo_acceso", time());

$segundos_inactividad = intval(( intval(time()) - intval($ua) + 1));

$segundos_timeout = (intval($_COOKIE['timeout']) * 60);

if ( $segundos_inactividad > $segundos_timeout ){ // excedió el timeout
	$emsg  = "Expiró su tiempo de inactividad de ".  ($segundos_timeout / 60) ." minutos. "; 
	$emsg .= "Deber reiniciar el sistema. Disculpe las molestias ocasionadas. ";
	$emsg .= "<input type='button' onclick='window.close()' value='Cerrar'>";

	while (list($key) = each($_COOKIE)){
		setcookie($key); unset ($_COOKIE[$key]);
	}

	exit($emsg);
}
?>