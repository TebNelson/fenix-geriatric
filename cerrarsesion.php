<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "headers.php";
require_once "errorhand.php";

while (list($key) = each($_COOKIE)){
	setcookie($key); unset ($_COOKIE[$key]);
}
include "login.php";
exit;
?>