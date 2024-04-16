<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";

$continuar = "";

$sql = "SELECT ".
       "if(length(concat(r.apellido, ' ' , r.nombre))> 20, concat(r.apellido, ' ' , left(r.nombre,1),'.'), concat(r.apellido, ' ', r.nombre )) as Residente, ".
			 "if(length(concat(m.medicamento, ' ', pm.presentación, ' ', pm.dosis))> 30, concat(left(concat(m.medicamento, ' ', pm.presentación, ' ', pm.dosis),30), ''), ".
			 "concat(m.medicamento, ' ', pm.presentación, ' ', pm.dosis)) as Medicación, ".
			 "left(p.prescripto_por, 25) as prescripto_por ".
			 "FROM residentes as r INNER JOIN prescripciones as p ON r.hc = p.hc INNER JOIN presentaciones_medicamentos as pm ON " .
			 "p.id_presentación_medicamento  =pm.id INNER JOIN medicamentos as m ON m.id = pm.id_medicamento where p.desde > (curdate() - 2) ".
			 "and p.hasta > curdate() and (isnull(egreso_fecha) or egreso_fecha = '0000-00-00') order by Residente, desde desc limit 4;";

$con = conectar();

if ( ! $query = mysql_query($sql, $con)){
$texto = mysql_error();
trigger_error($texto ,E_USER_WARNING);
exit("Error en la consulta de datos de nuevas prescripciones.");
}

$retrows=mysql_num_rows($query);

unset($sql);

if ($retrows == 4) { // mostramos solo 5 registros
		$continuar = "sigue ...&nbsp;<span onclick=\"window.location.replace('consultas/nuevasprescripciones.php')\" style='cursor:pointer'> Ver todas >> </span>";
}

?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="js/sto.js"></script>
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<style>
span{ font-weight:500; color: #3C7EEE; font:Arial, Helvetica, sans-serif;}
</style>
<title><?=TITULO?></title>
</head>

<body oncontextmenu='return false' bgcolor="#eeeeee" style="margin-top:0px; margin-left:0px; margin-right:0px; margin-bottom:0px">

<table width='100%' align='center' cellspacing='0' cellpadding='1' border='1' style="position:relative; top:0px; height:50%">
<tr>
<th colspan='3'><img src="images/date_d.gif" >&nbsp; Prescripciones recetadas en las últimas 48 horas</th>
<tr>
<th width='33%'>&nbsp;Residente</th>
<th width='33%'>&nbsp;Medicación</th>
<th width='33%'>&nbsp;Prescripto por</th>

<? 
$x=0;

while($row = mysql_fetch_array($query)){?>
<tr>
	<td style="text-align: left">&nbsp;<?=substr ($row['Residente'], 0, 23)?>    </td>
	<td style="text-align: left">&nbsp;<?=substr ($row['Medicación'], 0, 26)?>   </td>
	<td style="text-align: left">&nbsp;<?=substr ($row['prescripto_por'],0,20)?> </td>
</tr>
<? 
$x++;
}

while ($x < 4){
?>
<tr>
<td style="text-align:left">&nbsp;</td>
<td style="text-align:left">&nbsp;</td>
<td style="text-align:left">&nbsp;</td>
</tr>

<?
$x++;
}

?>

<tr>
<th colspan='3'  style="text-align: right"><?=$continuar?>&nbsp;</th>
</tr>
</table>

<?			
//////////////////////////  interconsutlas 48 hs //////////////////////
		
$sql = "SELECT if(length(concat(r.apellido, ' ' , r.nombre))> 20,  ".
       "concat(r.apellido, ' ' , left(r.nombre,1)), concat(r.apellido, ' ', r.nombre )) as Residente, ".
			 "i.hora_turno, i.lugar FROM residentes as r INNER JOIN interconsultas as i ON r.hc = i.hc ".
			 "WHERE i.día_turno = curdate() and (isnull(egreso_fecha) or egreso_fecha = '0000-00-00') ".
			 "order by i.hora_turno limit 4;";

if ( ! $query = mysql_query($sql, $con)){
$texto = mysql_error();
trigger_error($texto ,E_USER_WARNING);
exit("Error en la consulta de datos de nuevas interconsultas.");
}

$retrows=mysql_num_rows($query);
unset($sql);
if ($retrows == 4) { // mostramos solo 5 registros
		$continuar = "sigue ...&nbsp;<span style='cursor:pointer' onclick=\"window.location.replace('consultas/interconsultas.php')\"> Ver todas >> </span>";
} else {
	$continuar = "";
}
?>

<table width='100%' align='center' cellspacing='0' cellpadding='1' border='1' style="position:relative; top:2px;height:50%">
<tr><th colspan='3'><img src="images/date_d.gif">&nbsp; Interconsultas del dia</th></tr>
<tr>
<th width='33%'>&nbsp;Residente</th>
<th width='33%'>Lugar</th>
<th width='33%'>&nbsp;&nbsp;Hora</th></tr>

<? 
$x=0;

while($row = mysql_fetch_array($query)){?>
<tr>
<td style="text-align: left" class='td1'>&nbsp;<?=$row['Residente']?>&nbsp;</td>
<td style="text-align: left" class='td2'>&nbsp;&nbsp;
<?=$row['lugar']?>

</td>
<td style="text-align: center" class='td2'>&nbsp;&nbsp;
<?=$row['hora_turno']?></td></tr>
<? $x++; }

while ($x < 4){
?>
<tr>
<td style="text-align: left">&nbsp;</td>
<td style="text-align: left">&nbsp;</td>
<td style="text-align: left">&nbsp;</td>
</tr>

<?
$x++;
}
?>

<tr>
<th colspan='3' style="text-align: right"><?=$continuar?>&nbsp;</th>
</tr>
</table>
</body></html>