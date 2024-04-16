<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:15px">
<h3>Listado Total de Residentes<hr></h3>

<?php
require_once "grid.php";

$sql = "Select hc, concat(apellido, ', ', nombre) as Residente, fecha_ingreso as ingreso, ".
       "concat(documento_tipo, ' Nº: ', documento_número) as documento, fecha_nacimiento, ".
       "floor(((to_days(curdate()) - (floor((floor(((to_days(curdate())- 10) - to_days(fecha_nacimiento)) / 365)) / 4 )))".
			 " - to_days(fecha_nacimiento)) / 365) as edad, obra_social, habitación ".
			 "from residentes where egreso_fecha = '0000-00-00' or isnull(egreso_fecha) order by apellido;";

grid ($sql, "Listado residentes actuales al " . date('d-m-Y'));
?>

<input type="button" value="Imprimir" onClick="window.print()" style="width:100px">
<input type="button" value="Cerrar" onClick="window.location.replace('../principal.php')">
</body></html>