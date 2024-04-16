<?
require_once "abm.php";

if (isset($_GET['err-bajas']) && $_GET['err-bajas']==1)	
	$txt_error_bajas= "<span style='color:#CC3333'>Hubo un error al consultar residente egresado.</span>\n";
else
	$txt_error_bajas = "";
?>
<h4 style='background-color:#dddddd'>Historias M&#233;dicas:</h4>
<table cellPadding=0 cellSpacing=0 border="0">
<tr>
<th height=20>
<img src="images/addressGo.gif" width="18" height="18" align="absmiddle"> 
Residentes actuales
<tr>
<td>
<form action="residente.php" method="post" name="residentes" id="residentes">

<?
require_once 'selecthtml.php';

$cmdText = "Select hc, concat(apellido, ' ', Nombre) as residente from residentes where isnull(egreso_fecha) or egreso_fecha = '0000-00-00'	order by apellido;";

selectHTML($cmdText, 'hc', 9, "residentes.submit();");

///////////////////////////// no permitir ingreso de pacientes si no es del area autoriz ////////////////////////////

$vAreas = array('Gerencia', 'Dirección', 'Administración', 'Secretaría', 'Trabajo Social', 'Supervisión Enfermería', 'Enfermería');
$z = count ($vAreas);

for ($i=0; $i < $z; $i++){ 
	if ($_COOKIE['usr_area'] == $vAreas[$i]){
		$disa= "";
		break;
	}	else {
		$disa= "disabled";
	}
}	

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

?>

<input type="submit" value="Ver datos" title="Ver datos del paciente seleccionado." 
style="position:relative; top:3">&nbsp;
<input type="button" value="Nuevo" <?=$disa?> onClick="window.location.replace('altaresidente.php')" style="position:relative; top:3; width:65px" >
</form>
<tr>
<td>&nbsp;
<tr>
<th>
<img src="images/addressGo.gif" width="18" height="18" align="absmiddle"> Pacientes egresados
<tr>
<td>
<form action="bajas.php?key=5" method="post" name="bajas" id="bajas">

<?
require_once 'selecthtml.php';
$cmdText = "Select hc, concat(apellido,' ',nombre) as residente from residentes where egreso_fecha > '0000-00-00' order by apellido;";

selectHTML($cmdText, 'hc_eg', 1);

echo $txt_error_bajas;
?>

<input type="submit" value="Ver datos" style="position:relative; top:2px;width:140px" name="Buscar">
</form>
<tr>
<td>&#160;
<tr>
<th>
<img src="images/addressGo.gif" width="18" height="18" align="absmiddle"> Cumpleaños:
</th>
<tr>
<td>

<?php
//////////////////////////////////////////////////////////////////

$sql = 
"Select 
	concat(apellido, ', ', nombre) as residente, 
	fecha_nacimiento 
from 
	residentes 
where
	(isnull(egreso_fecha) or egreso_fecha = '0000-00-00')
and 
	month(fecha_nacimiento)=month(curdate())
and
	dayofmonth(fecha_nacimiento)=dayofmonth(curdate())
order by residente;";
#	
$con = conectar();

if(!$query = mysql_query($sql, $con)){
	$texto =   mysql_error();
	trigger_error($texto ,E_USER_WARNING);
 	return false;
}

$x=1;

if (!$retrows = mysql_num_rows($query)){ 
		echo "Hoy no se registran cumpleaños.\n";
}else{
	while ($rows = mysql_fetch_array($query)){
		echo "<img src='images/bullet.gif' width='8' height='8' align='baseline'>&nbsp;";
		echo $rows['residente'] . "<br>\n";
		$x++;
		if ($x ==3) break;
	}
	while($x < 1){
		echo "<br>";
		$x++;
	}
}
?>
<!--
<tr>
<td>&nbsp;
<tr>
<th>
<img src="images/addressGo.gif" width="18" height="18" align="absmiddle">&nbsp;Detalles sesi&#243;n:
<tr>
<td style="position:relative; top:8px; text-align: left">
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
IP orig:</b>&nbsp;<?=$_SERVER['REMOTE_ADDR']?><br>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Inicio de sesión:</b>&nbsp;<?=$_COOKIE['usr_ini_sesion'] ?><br>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Ultimo acceso:&nbsp;&nbsp;</b><?=date('H:i:s')?><br>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Inicio ant.:</b>&nbsp;<?=usr_ultima_sesion($_COOKIE['logon'])?>-->
</table>