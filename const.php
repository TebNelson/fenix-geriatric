<?php

if (!defined("SERVER")){
  define("SERVER", "localhost"); # mysql_connect
  define("USR", "root");         # mysql_connect
  define("PWD", "");             # mysql_connect
  define("DB", "fenix");         # mysql_select_db
  define("TITULO", "Fenix");
  define("CARPETA_WWW", $_SERVER['DOCUMENT_ROOT']);	 # path de disco en sistema local 
  define("ARCHIVO_LOG",  CARPETA_WWW . "/log/error.txt"); #  errores (sacarlo del servidor).
  define("ERROR_COLOR", "#CC3333");
  # define("MYSQL_DUMP", "C:\FoxServ\mysql\bin\mysqldump.exe ");
}

?>