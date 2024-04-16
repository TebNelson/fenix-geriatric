<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" 
style="margin-left:5px; margin-right:4px; margin-top:2px">

<?php
$sql = "SELECT concat(r.apellido , ' ' , r.nombre) as Residente, i.hora_turno, i.interconsulta, ".
       "i.lugar, i.preparación FROM residentes as r INNER JOIN interconsultas as i ON ".
			 "r.hc = i.hc WHERE i.día_turno = curdate() and (isnull(egreso_fecha) or ".
			 "egreso_fecha = '0000-00-00') order by i.hora_turno;";

grid ($sql, "Listado de Interconsultas del día.");

?>
<input type="button" value="Imprimir" onClick="window.print()" style="width:100px">
<input type='button' value=' Salir ' onclick='window.location.replace("../nuevas-prescripciones.php")'>

</body>
</html>