<?php
#
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "headers.php";
require_once "errorhand.php";
require_once "abm.php";
require_once "newsesion.php";

#############                 COMPROBAR SI TIENE LOS 3 MINUTOS DE FREEZE     ##############

if (isset($_COOKIE["welc-ad-oc"])){ # tres minutos de espera despues de intentos de login
  $msg_e  = "<html><head></head><body style='margin:90px; font-family:sans-serif;'>";
  $msg_e .= "<p>Se superaron los intentos de ingreso desde su ubicación, ip #: <b>" . 
            $_SERVER['REMOTE_ADDR'];
  $msg_e .= "</b>. Confirme sus datos de ingreso, aguarde unos minutos e inténtelo nuevamente.";
  $msg_e .= "Gracias y disculpe las molestias ocasionadas.</p></body></html>";
  exit($msg_e);
}

####################         intento de ingreso     #######################################
if (isset($_POST['usr']) && isset($_POST['pwd'])) { 
  if (isset($_POST['logtrunsec'] ) && $_POST['logtrunsec'] <> crypt(date('YmdH'), 'es')) {
    $err_txt  = "Intento de acceso fallido desde ".  $_SERVER['REMOTE_ADDR'] ;
    $err_txt .=  " con javascript desahabilitado.";
    trigger_error($err_txt ,E_USER_WARNING);
    $err_msg_exit = "Debe habilitar la secuencia de comandos javascript ";
    $err_msg_exit .= "en su explorador de internet para ingresar al sistema."; 
    exit($err_msg_exit);
  }

  if (trim($_POST['usr']) == "" || trim($_POST['pwd']) == "") {
    $err_txt  = "Intento de acceso fallido desde ".  $_SERVER['REMOTE_ADDR'] ;
    $err_txt .=  " con valores de login en blanco.";
    trigger_error($err_txt ,E_USER_WARNING);
    require_once ('login.php');  // repetir el login
    exit;
  } else {
    if($auth = check_login($_POST['usr'], $_POST['pwd'])){ //  si envia datos, controlarlos
    header("Location: principal.php");
    exit;
    }else {
      $auth = false;
      $err_txt  = "Intento de acceso fallido desde ".  $_SERVER['REMOTE_ADDR'] ;
      trigger_error($err_txt ,E_USER_WARNING);
      require_once ('login.php');  // repetir el login
      exit;
    }
  } 
} else {
 require_once "login.php";
 exit;
}

########################    LOGUEADO OK - REDIRIGIR A MENU #######################################

if (isset($_COOKIE['logon'])  && trim($_COOKIE['logon']) <> "") {
  include_once ('principal.php'); // redirigir  a pagina principal
  exit;
}

###################################    FUNCIONES  ################################################

function check_login($usr, $pwd) 
{
  # if (isset($_COOKIE['logon'])) return false;

  $cmdText = "select logon, área, minutos_timeout, acceso_remoto " .
             "from usuarios where logon='$usr' and pass=password('$pwd') and activo='si';";
	
  if (! $con = conectar()) return false;

  if ( ! $query = mysql_query($cmdText, $con)){
    $texto = mysql_error();
    trigger_error($texto ,E_USER_WARNING);	 
    return false;
  }

  $row = mysql_fetch_array($query);

  if (!$retrows = mysql_num_rows($query)) { // login incorrecto
    while (list($key) = each($_COOKIE)) setcookie($key);
    return false;
  }
  
# acceso remoto		
  if (strstr ($_SERVER['REMOTE_ADDR'], '192.168.0.') || $_SERVER['REMOTE_ADDR'] == '127.0.0.1') $lan = true;
  else $lan = false;

  if (!$lan && $row['acceso_remoto'] == 'no') {	
    while (list($key) = each($_COOKIE)){
      setcookie($key);
    }
    return false;
  }

  $sesion_id = newsesion($row['logon']);

  if (!$sesion_id){
    echo ("Error de acceso. Imposible continuar. No fue posible registrar la sesión de usuario.");
    trigger_error("Imposible registrar inicio de sesión de usuario.",E_USER_WARNING);

    while (list($key) = each($_COOKIE)){
      setcookie($key);
    }
    return false;
  }
# sets cookies de control
  setcookie('logon', $row['logon']); // id de usuario
  setcookie('usr_area', $row['área']);
  setcookie('timeout', $row['minutos_timeout']);
  setcookie('usr_ini_sesion', date('H:i:s') );
  setcookie('sesion_id', $sesion_id);

  return true;
}

exit();



/*
set_include_path
(PHP 4 >= 4.3.0, PHP 5)

set_include_path --  Establece la opción de configuración include_path 
Descripción
string set_include_path ( string nueva_ruta_inclusion )


Establece la opción de configuración include_path durante la duración del script. Devuelve el valor antiguo de include_path en caso de éxito, o FALSE en caso de fallo. 

Ejemplo 1. Ejemplo de set_include_path()

<?php
// Funciona a partir de PHP 4.3.0
set_include_path('/inc');

// Funciona en todas las versiones de PHP
ini_set('include_path', '/inc');

Ejemplo 2. Añadir a la ruta de inclusión

Haciendo uso de la constante PATH_SEPARATOR es posible extender la ruta de inclusión independientemente del sistema operativo. 

En este ejemplo agregamos /usr/lib/pear al final del valor include_path actual. 

<?php
$ruta = '/usr/lib/pear';
set_include_path(get_include_path() . PATH_SEPARATOR . $ruta);
*/
?>