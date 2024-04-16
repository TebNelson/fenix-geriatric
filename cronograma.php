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
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" 
bgcolor="#eeeeee" style="margin-left:20px; margin-right:20px; margin-top:25px">
<h3>Cronograma de actividades.<hr></h3>

<?php
$sql = "select *, concat('<form action=\'editar.php\' method=\'post\'><input type=\'hidden\' ".
       "name=\'id\' value=\'',id,'\'><input type=\'submit\' value=\'Editar\'></form>') as editar ".
			 "from actividades where fecha_actividad >=curdate() order by fecha_actividad limit 30;";
grid ($sql, "Cronograma de actividades.", "No se registran actividades agendadas.");
?>

<input type='button' value=' Agendar actividad' onclick="window.location.replace('agendar.php')">
<input type="button" value="Imprimir" onClick="window.print()">
<input type='button' value=' Menú principal' onclick="window.location.replace('../principal.php')">

<?
if (isset($_GET['ant'])){
	echo "<p style=\"cursor: pointer; color: #0066CC\" ".
	      "onClick=\"window.location.replace('cronograma.php')\">Ocultar actividades anteriores</p>";
	$sql = "select fecha_actividad, actividad, lugar, organizado_por, concurrentes, ".
	       "acompañantes from actividades where fecha_actividad < curdate() order by fecha_actividad desc limit 30;";
	grid ($sql, "Actividades anteriores a la fecha (hasta últimas 30)", "No se registran actividades anteriores.");
} else {
	echo "<p style=\"cursor: pointer; color: #0066CC\" ".
	      "onClick=\"window.location.replace('cronograma.php?ant=1')\">Ver actividades anteriores >></p>";	
}
?>
</body></html>