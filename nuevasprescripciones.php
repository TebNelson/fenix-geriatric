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
bgcolor="#eeeeee" style="margin-left:5px; margin-right:5px; margin-top:0px">

<?php
$sql = "SELECT concat(r.apellido, ' ', r.nombre) as Residente, ".
       "concat(m.medicamento, ' ', pm.presentación, ' ', pm.dosis) as Medicación, ".
			 "p.prescripto_por FROM residentes as r INNER JOIN prescripciones as p ON r.hc = p.hc ".
			 "INNER JOIN presentaciones_medicamentos as pm ON p.id_presentación_medicamento  =pm.id ".
			 "INNER JOIN medicamentos as m ON m.id = pm.id_medicamento where p.desde > (curdate() - 2) ".
			 "and p.hasta > curdate() and (isnull(egreso_fecha) or egreso_fecha = '0000-00-00') ".
			 "order by r.apellido, desde desc limit 50;";

grid ($sql, "Listado de prescripciones recetadas en las últimas 48 horas.", , '');
?>

<input type="button" value="Imprimir" onClick="window.print()">
<input type='button' value=' Cerrar ' onclick='window.location.replace("../nuevas-prescripciones.php")'>
</body>
</html>