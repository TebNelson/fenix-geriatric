<?php

ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');

require_once "errorhand.php";
require_once "control_login.php";
require_once "fechadmy.php";

#######################    PERMISOS DE ENFERMERIA         ###################################

$disabled="";

if ($_COOKIE['usr_area'] == "Enfermería" || $_COOKIE['usr_area'] == "Supervisión Enfermería"){
  $insert=1;
} else {
  $insert=0;
}

#######################     VERIFICAR SI LLEGAN DATOS DEL FORM DE CONSULTA (FILtrO)  #########

if (isset($_POST['turno']) && isset($_POST['fecha'])){
  $fecha_ymd = fechaymd($_POST['fecha']);
  $fecha = $_POST['fecha'];
  $turno = $_POST['turno'];
  if ($turno == 'todos')
    $sql= "Select * from reportes_enfermería where fecha='$fecha_ymd' order by id";
  else
    $sql= "Select * from reportes_enfermería where fecha='$fecha_ymd' and
turno='$turno'";

} else {
  $fecha = date('d-m-Y');
	$turno = "todos";
  $fecha_ymd = fechaymd(date('d-m-Y'));
  $sql= "Select * from reportes_enfermería where fecha='$fecha_ymd' order by id";
}

$con = conectar();

if ( ! $query = mysql_query($sql, $con)){
  $texto = mysql_error();
  trigger_error($texto ,E_USER_WARNING);
  exit("Error en la consulta de datos de reportes de enfermería.");
}

$num_rows = mysql_num_rows($query);

# calcular dia anterior y posterior
$dia = substr($fecha, 0,2);
$mes = substr($fecha, 3,2);
$anio= substr($fecha, 6,4);
if ($dia==31 && $mes==12) $anio =  $anio++;
if ($dia=="01" && $mes=="01") $anio =  $anio--;
$fecha_rwd = date('d-m-Y', mktime(0,0,0, $mes, $dia-1, $anio));
$fecha_fwd = date('d-m-Y', mktime(0,0,0, $mes, $dia+1, $anio));
if ($fecha_fwd > date('d-m-Y')) $fecha_fwd = $fecha;
?>
<html>
<head>
	<title><?=TITULO?></title>
	<script language='javascript'>
		if (history.forward(1)){
			location.replace(history.forward(1));
		}
	</script>
	<script language='javascript' src="js/sto.js"></script>
	<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
</head>
<body oncontextmenu='return true' onload="sto(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:50px;">
<h3 style=" text-decoration: underline">
<img src="images/bluearrow.gif"> Reportes de Enfermería</h3>
<form action="" name="form1" method="post" onsubmit='return vf();'>
<b>Turno:</b> 
<input type="radio" name="turno" value="todos" checked>Todos</input>
<input type="radio" name="turno" value="mañana">Mañana</input>
<input type="radio" name="turno" value="tarde">Tarde</input>
<input type="radio" name="turno" value="noche">Noche</input>
&nbsp; | &nbsp;
<b>Fecha:&nbsp;</b>
<input type="text" name="fecha" value="<?= $fecha?>" size="10" style="text-align:center">
<br><input type="submit" value="Consultar" style='width:100px'>
<?php
if ($insert)
  echo "<input type='button' value='Nuevo reporte'
onClick='window.location.replace(\"repenfadd.php\")'  style='width:100px;'>";
?>&nbsp;
<input type="button" value="Cerrar"
onClick="window.location.replace('principal.php')"
style='width:100px;'>
</form>

<form action='reportenf.php' method='post' name='f_fecha'>
	<input type='hidden' name='fecha'>
	<input type='hidden' value='<?=$turno?>' name='turno'>
	<input type='hidden' name='filtro_diario' value='1'>
	<input type='button'
	onclick='f_fecha.fecha.value="<?=$fecha_rwd?>";f_fecha.submit()' value='<<'
	name='rwd'>
	<input type='button'
	onclick='f_fecha.fecha.value="<?=$fecha_fwd?>";f_fecha.submit()' value='>>'
	name='fwd'>
</form>

<div style='position:relative; top:25px; left:7px; right:0px'>

<?
if ($num_rows < 1){
  if (isset($fecha)) 
    echo "<p>No hay registros en la fecha solicitada y turno/s solicitados.</p>";
#
    echo "</div></body></html>";
    exit;
}

while ($row = mysql_fetch_array($query)){
  echo "<hr><br><p><img src='images/bullet.gif' width='8' height='8'
align='baseline'> <b>Fecha:</b> &nbsp;";
  echo fechadmy($row['fecha'])  . "&nbsp;\n";
  echo "<img src='images/bullet.gif' width='8' height='8' align='baseline'> <b>Turno:</b>&nbsp;";	
  echo $row['turno']            . "<br>\n";
  echo "<img src='images/bullet.gif' width='8' height='8' align='baseline'> <b>Reporte:</b>&nbsp;";	
  echo "<blockquote>";
  echo str_replace (chr(10) . chr(13), "<br>\n", $row['reporte'] ) . "<br>\n";
  echo "</blockquote>";
  echo "<img src='images/bullet.gif' width='8' height='8' align='baseline'> <b>Enfermeros de turno:</b>";
  echo $row['enfermeros_turno'] . "<br>\n";
  echo "<img src='images/bullet.gif' width='8' height='8' align='baseline'> <b>Enfermero actuante:</b> &nbsp;";	
  echo $row['enfermero_actuante'] . "</p>\n";
}

?>
<form action='reportenf.php' method='post' name='f_fecha2'>
	<input type='hidden' name='fecha'>
	<input type='hidden' value='<?=$turno?>' name='turno'>
	<input type='hidden' name='filtro_diario' value='1'>
	<input type='button'
	onclick='f_fecha2.fecha.value="<?=$fecha_rwd?>";f_fecha2.submit()' value='<<'
	name='rwd'>
	<input type='button'
	onclick='f_fecha2.fecha.value="<?=$fecha_fwd?>";f_fecha2.submit()' value='>>'
	name='fwd'>
	<input type="button" value="Cerrar"
onClick="window.location.replace('principal.php')"
style='width:100px;'>
</form>

</div>
</body>
</html>