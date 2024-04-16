<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";

$sql_contar_os = "select count(hc) as total, concat('\n<span style=\"cursor:pointer; color:blue\" ".
                 "onclick=\"window.location.replace(\'rtes-pami.php?os=',obra_social,'\')\">',obra_social,'</span>\n') ".
								 "as obra_social from residentes where egreso_fecha='0000-00-00' group by obra_social order by obra_social;";

$con = conectar();

if ( ! $query_os = mysql_query($sql_contar_os, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ../principal.php');
	exit;
}

?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" bgcolor="#eeeeee" style="margin:30px">
<h3>Listado de residentes agrupados por obra social<hr></h3>
<div style="position:relative; top:-10px">
<input type="button" value="Imprimir" onClick="window.print()">
<input type="button" value="Menú principal" onclick="window.location.replace('../principal.php')">
</div>
Seleccione la obra social para ver el listado de los residentes actuales pertenecientes a esa obra social:
<table width='100%' align='center' cellspacing='0' cellpadding='1' border=1 bordercolor='#FFFFFF'>
<tr><th>Obra social</th><th>Total residentes</th></tr>

<?
while ($rorws = mysql_fetch_array($query_os)){
	echo "<tr><td>" . $rorws['obra_social'] . "</td><td style='text-align:right; width:100px'>" . $rorws['total'] ."</tr>";   
}
?>

</table>
<?
if (isset($_GET['os'])) {
	$os = $_GET['os'];
	$sql = "Select concat(apellido, ', ', nombre )as residente, fecha_ingreso, obra_social, afiliado_número, ".
	       "habitación from residentes where obra_social='$os' and egreso_fecha='0000-00-00' order by obra_social, residente;";
	$img = "../images/bluearrow.gif";
	grid ($sql, "Residentes $os ", 'principal.php', $img);
}
?>

</body></html>