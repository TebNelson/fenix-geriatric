<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "const.php"; 
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:40px; margin-right:30px; margin-top:25px">
<h3>Ingresos y egresos de residentes en el semestre<hr></h3>
<div style="position:relative; top:-10">
<input type="button" value="Imprimir" onClick="window.print()">
<input type="button" value="Cerrar" onClick="window.location.replace('../principal.php')">
</div>

<?php
require_once "grid.php";

$img = "../images/bluearrow.gif";
$sql = "Select hc, concat(apellido, ', ', nombre) as Residente, fecha_ingreso as ingreso, ".
       "floor(((to_days(curdate()) - (floor((floor(((to_days(curdate())- 10) - to_days(fecha_nacimiento)) / 365)) / 4 ))) ".
			 " - to_days(fecha_nacimiento)) / 365) as edad, obra_social, habitación from residentes  where (egreso_fecha = '0000-00-00' ".
			 "or isnull(egreso_fecha)) and fecha_ingreso > date_sub(curdate(), interval 6 month) ".
			 "order by apellido, fecha_ingreso;";


grid ($sql, "Listado residentes ingresados en los últimos 6 meses:",'', $img);

/**********************************************************************************************************/

$sql = "Select hc, concat(apellido, ', ', nombre) as Residente, fecha_ingreso as ingreso, ".
       "egreso_fecha as egreso, floor(((to_days(curdate()) - (floor((floor(((to_days(curdate())- 10) - ".
			 "to_days(fecha_nacimiento)) / 365))/4)  ) ) - to_days(fecha_nacimiento)) / 365) as edad, ".
			 "obra_social from residentes where egreso_fecha > date_sub(curdate(), interval 6 month) order by Residente;";

grid ($sql, "Listado residentes egresados en los últimos 6 meses:",'', $img);

?>

</body>
</html>