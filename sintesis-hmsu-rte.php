<?
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";

$imc = "s/d"; # valor incial de imc

$con = conectar();
if (isset($_GET['hc'])) $hc = $_GET['hc']; else $hc=0;

$sql_pac_hab = "Select apellido from residentes where hc <> $hc and egreso_fecha = '0000-00-00' and habitación = " . $_GET['hab'];
$sql_fliar   = "Select responsable, parentesco  from familiares where hc=$hc order by id desc limit 1;";
$sql_sv      = "Select date_format(fecha,'%d-%m-%y') as fecha,diastólica,sistólica,pulso,temperatura,peso,talla from signos_vitales where hc=$hc order by id desc limit 1;";
$sql_evol_cm = "select date_format(fecha,'%d-%m-%Y') as fecha,evolución,profesional_actuante from evoluciones where hc=$hc and área='Clínica Médica' order by id desc limit 1;";
$sql_evol_ps = "select date_format(fecha,'%d-%m-%Y') as fecha,evolución, profesional_actuante from evoluciones where hc=$hc and área='Psiquiatría' order by id desc limit 1;";
$sql_evol_ts = "select date_format(fecha,'%d-%m-%Y') as fecha,evolución,profesional_actuante from evoluciones where hc=$hc and área='Trabajo Social' order by id desc limit 1;";
$sql_evol_nt = "select date_format(fecha,'%d-%m-%Y') as fecha,evolución, profesional_actuante from evoluciones where hc=$hc and área='Nutrición' order by id desc limit 1;";
$sql_pae     = "Select date_format(fecha,'%d-%m-%Y') as fecha,acción_enfermería from pae where hc=$hc order by id desc limit 1;";
$sql_vst     = "Select date_format(fecha,'%d-%m-%Y') as fecha,visitas, actitud_residente from visitas where hc=$hc  order by id desc limit 1;";

if (
(!$query_rte_hab = mysql_query ($sql_pac_hab,$con))  ||
(!$query_fliar   = mysql_query ($sql_fliar,$con))    ||
(!$query_sv      = mysql_query ($sql_sv, $con))      ||
(!$query_evol_cm = mysql_query ($sql_evol_cm, $con)) ||
(!$query_evol_ps = mysql_query ($sql_evol_ps, $con)) ||
(!$query_evol_ts = mysql_query ($sql_evol_ts, $con)) ||
(!$query_evol_nt = mysql_query ($sql_evol_nt, $con)) ||
(!$query_pae     = mysql_query ($sql_pae, $con))     ||
(!$query_vst     = mysql_query ($sql_vst, $con))) 
{
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
}

$aFliar = mysql_fetch_array ($query_fliar);
$aSvt   = mysql_fetch_array ($query_sv);
$aEcm   = mysql_fetch_array ($query_evol_cm);
$aEps   = mysql_fetch_array ($query_evol_ps);
$aEts   = mysql_fetch_array ($query_evol_ts);
$aEnt   = mysql_fetch_array ($query_evol_nt);
$aPae   = mysql_fetch_array ($query_pae);
$aVst   = mysql_fetch_array ($query_vst);

if ( ($aSvt['peso'] > 0) &&  ($aSvt['talla'] > 0) ) {
	$imc = ($aSvt['peso'] / ($aSvt['talla'] * $aSvt['talla']));
}
?>
<html>

<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language="JavaScript1.2" src="js/coolmenus3.js"></script>
<script language='javascript' src="js/sto.js"></script>	
<title><?=TITULO?></title>
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<style>
.dp_t{ text-align:right; font-weight:bold}
</style>
</head>
<body oncontextmenu='return false' 
onload="sto(<? echo $_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" 
bgcolor="#eeeeee" style="margin:0px">

<div id="sv" style="width:200px; background-color:#FFddFF; position:relative; top:0; padding:5px; HEIGHT: 100%;">
	<p>
	<table table width='100%' align='center' cellspacing='0' cellpadding='3' border=1>
	<tr><th colspan="2" style='color:  #003366'>Signos vitales <?=$aSvt['fecha']?></th></tr>
	<tr><td>Pulso</td><td  style="width:50%; text-align:right"><?=$aSvt['pulso']?>&nbsp;</td></tr>
	<tr><td>Diast&oacute;lica</td><td  style="width:50%; text-align:right"><?=$aSvt['diastólica']?>&nbsp;</td></tr>
	<tr><td>Sist&oacute;lica</td><td  style="width:50%; text-align:right"><?=$aSvt['sistólica']?>&nbsp;</td></tr>
	<tr><td>Temperatura</td><td  style="width:50%; text-align:right"><?=$aSvt['temperatura']?>&nbsp;</td></tr>
	<tr><td>Peso</td><td  style="width:50%; text-align:right"><?=$aSvt['peso']?>&nbsp;</td></tr>
	<tr><td>Talla</td><td  style="width:50%; text-align:right"><?=$aSvt['talla']?>&nbsp;</td></tr>
	<tr><td>Ind. M Corp.</td><td  style="width:50%; text-align:right"><? printf("%01.2f", $imc)?>&nbsp;</td></tr>
	</table>

<HR>
	<p><b  style='color:  #003366'>Comparten habitación:</b><br>
  	<?
	while ($rtes_hab = mysql_fetch_array($query_rte_hab))
		echo $rtes_hab['apellido'] . ' '; 
	?>
	</p>
	
	<br> <HR>
	
	<p>
	<b style='color:  #003366'>Familiar responsable:</b><br>	
	<?=$aFliar['responsable']?><br>
	<b>Parentesco</b>: <?=$aFliar['parentesco']?>
	<br>&nbsp;<br>
	</p>

<br> <HR>

	<p><b b  style='color:  #003366'>Ultimas Visitas:</b><br>
	<b>Fecha:</b> <?=$aVst ['fecha']?><br>
	<b>Visita:</b> <?=$aVst ['visitas']?><br>
	<b>Actitud rte.: </b><?=$aVst ['actitud_residente']?>
	</p>
</div>

<!---------------------------           fin col izq              --------------------------------------->

<div class="evol_s" id="evoluciones" style="position:absolute; top:0px; left:215px; border-color: #CCCCCC; border-width:1; border-spacing:3 px">
	
	<div style="width:100%; background-color:#3399FF; height:30 px; vertical-align:bottom; text-align:center; font-weight:bold; font-size:14">
		<span style="color:#FFFFFF; position:relative;top:8 px ">Síntesis de Historia Médica Social Unica</span>
	</div>
	
	<div style="background-color:#DDDDEE;">
		<p style="font-weight:bold; color: #003366;">
		<img src="images/bluearrow.gif" width="13" height="13">
		&nbsp;Ultima evoluci&oacute;n Cl&iacute;nica M&eacute;dica:</p>
  	<b>&nbsp;&nbsp;Fecha:</b> <?=$aEcm['fecha']?>
  	<p><b>&nbsp;&nbsp;Evoluci&oacute;n:</b>
 		<blockquote style="text-align:justify"><?=$aEcm['evolución']?></blockquote></p>
		<b>&nbsp;&nbsp;Evolucionó:</b>	<?=$aEcm['profesional_actuante']?>
		<br>&nbsp;<br>
	</div>	

	<p style="font-weight:bold; color:  #003366;">
	<img src="images/bluearrow.gif" width="13" height="13">
	&nbsp;Ultima evoluci&oacute;n Trabajo Social:</p>
  &nbsp;&nbsp;<b>Fecha:</b> <?=$aEts['fecha']?><br>
  <p><b>&nbsp;&nbsp;Evoluci&oacute;n:</b><br>
		<blockquote style="text-align:justify"><?=$aEts['evolución']?></blockquote></p>
	&nbsp;&nbsp;<b>Evolucionó</b>:
		<?=$aEts['profesional_actuante']?>
  </p>
	
	<div style="background-color:#DDDDEE">
		<p style="font-weight:bold; color:  #003366;">
		<img src="images/bluearrow.gif" width="13" height="13">&nbsp;Ultima evoluci&oacute;n Psiquiatr&iacute;a:</p>
  	&nbsp;&nbsp;<b>Fecha</b>: <?=$aEps['fecha']?><br>
  	<p><b>&nbsp;&nbsp;Evoluci&oacute;n:</b>
		<blockquote style="text-align:justify"><?=$aEps['evolución']?></blockquote></p>
		&nbsp;&nbsp;<b>Evolucionó</b>:
		<?=$aEps['profesional_actuante']?>
		<br>&nbsp;<br>
  </div>
	
		<p style="font-weight:bold; color:  #003366;">
		<img src="images/bluearrow.gif" width="13" height="13">&nbsp; 
		Ultima evoluci&oacute;n Nutrici&oacute;n:</p>
  	&nbsp;&nbsp;<b>Fecha: </b><?=$aEnt ['fecha']?><br>
  	<p><b>&nbsp;&nbsp;Evoluci&oacute;n:</b>
		<blockquote style="text-align:justify"><?=$aEnt ['evolución']?></blockquote>
		&nbsp;&nbsp;<b>Evolucionó:</b><?=$aEnt ['profesional_actuante']?>
  	</p>
	
	<div style="background-color:#DDDDEE">
	<p style="font-weight:bold; color:  #003366;">	
	<img src="images/bluearrow.gif" width="13" height="13">&nbsp; 
	Plan de acci&oacute;n de enfermer&iacute;a:</p>
	&nbsp;&nbsp;<b>Fecha: </b>
	<?=$aPae ['fecha']?><br>
	&nbsp;<br>
	&nbsp;<b>Plan de acci&oacute;n de enfermer&iacute;a (PAE) :</b><br>   
	<blockquote style="text-align:justify"><?=$aPae ['pae']?></blockquote>
	<br>&nbsp;<br>
	</div>
	
</div>
</body>
</html>