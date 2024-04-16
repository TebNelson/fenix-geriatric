<?
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');

require_once "errorhand.php";
require_once "control_login.php";

$continuar ="";

if (isset($_COOKIE['usr_area']))  {
	$usr_area = $_COOKIE['usr_area'];
}

if (isset($_COOKIE['logon']))
	$nuevos = contar_mensajes_nuevos($_COOKIE['logon']);
else
	$nuevos= 0;

if ($nuevos == -1) $error_contar_mensajes =1; 
else  $error_contar_mensajes =0; 

if ($nuevos == -1){
	$status = "Error al obtener mensajes nuevos. ";
	$error_contar_mensajes =1; 
} else {
	$error_contar_mensajes =0;
	if ($nuevos > 0)
		$status = "Ud. tiene $nuevos mensaje/s sin leer. ";
	else
		$status = "Ud. no tiene mensajes sin leer. ";
}
?>
<html>

<head>
  <title><?=TITULO?></title>
  <script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
  <script language='javascript' src="js/sto.js"></script>
  <script language='javascript'> window.status='<?=$status?>'</script>
  <link rel='stylesheet' type='text/css' href='estilos/estilos.css'>

  <style>
    span{ font-weight:500; color: #3C7EEE; font:Arial, Helvetica, sans-serif;}
  </style>
</head>

<body oncontextmenu='return false' bgcolor="#eeeeee">

<!--------------------------               CABECERA      ---------------------------------------------->

<table cellpadding=4 cellspacing="0" id="cabecera" style="WIDTH:100%; background-color:#3399FF">
<td style="color: #FFFFFF ; vertical-align: bottom; font-size:11px; font-weight:normal">
&nbsp;&nbsp;Sesión de trabajo:
<b><?=usr_nombre_completo($_COOKIE['logon'])?></b>&nbsp;
<?=" - Area: $usr_area  "  ?>
<td width="40%" style="color: #FFFFFF; vertical-align: bottom; font-size:11px; text-align: right;">
<?=$texto_hoy ?>&nbsp;&nbsp;
<b style="cursor:pointer;" 
onClick="centrar_ayuda('help/marco.php', 750, 450)">| Ayuda</b>
</td></tr></table>

<!--------------------------                 CUERPO     ---------------------------------------------->

<table border="0" cellPadding="4" cellSpacing="2" 
style="WIDTH:100%; height:96%; position:relative; top:1px;" align="center">
<tr>

<!----------------------------------           izquierda              --------------------------------->

<td valign="top" width="15%">
<? require_once ('colizq.php') ?>

<!-------------------------------------    centro                    ---------------------------------> 

<td valign="top" width="58%" style="text-align:center">
<iframe frameborder='1' src="mensajes/recep.php" style="WIDTH:100%; HEIGHT:35%"></iframe>
<iframe frameborder='1' src="nuevas-prescripciones.php" style="WIDTH:100%;HEIGHT:62%;position:relative; top:5px"></iframe>

<!----------------------------            Derecha                           -------------------------->

<td valign="top" width="25%">
<? require_once 'colder.php' ?>
</td>
</tr>
<tr bgcolor='Gray'><td colspan='3'  style='color:#ffffff'>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
IP cliente:</b>&nbsp;<?=$_SERVER['REMOTE_ADDR']?>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Inicio de sesión:</b>&nbsp;<?=$_COOKIE['usr_ini_sesion'] ?>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Ultimo acceso:&nbsp;&nbsp;</b><?=date('H:i:s')?>
<b>&nbsp;<img src="images/bullet.gif" width="6" height="6" align="baseline">
Inicio anterior:</b>&nbsp;<?=usr_ultima_sesion($_COOKIE['logon'])?>
&nbsp;&nbsp;&nbsp;
<span style="cursor:pointer; color:#FFFFFF; font-weight:bold; position:absolute; right:10px" onclick="if(confirm('¿Confirma que desea cerrar la sesión de trabajo?')) window.location.replace('cerrarsesion.php')" title="Finaliza la sesión del usuario actual y cierra la ventana de trabajo.">
<img src="images/close.gif" width="16" height="16" align="absmiddle">
</span>

</td>
</tr>
</table>
</body>
</html>