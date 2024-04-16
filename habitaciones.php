<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";

$habit="";

$sql="Select concat(apellido, ' ', nombre) as residente, habitación from residentes ".
     "where egreso_fecha = '0000-00-00' or  isnull(egreso_fecha) order by habitación, apellido;";

$con = conectar();

if ( ! $query = mysql_query($sql, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ../principal.php');
	exit();
}

$retrows=mysql_num_rows($query);

?>
<html>

<head>
  <script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
  <script language='javascript' src="../js/sto.js"></script>
  <link rel='stylesheet' type='text/css' href='../estilos/estilos.css'>
  <title><?=TITULO?></title>
</head>

<body oncontextmenu='return false' bgcolor="#eeeeee" style="margin:15px" onload="sto_sub(<? echo $_COOKIE['timeout']?>);">
<h3>Habitaciones:</h3>
<img src="../images/plano.jpg" height="354">
<br>

<input type="button" value="Agregar plano" onClick="window.location.replace('../upldplano.php')" style="width:100px">
<input type="button" value="Refrescar pantalla" onClick="javascript:document.location.reload()"  style="width:100px">
<input type="button" value="Imprimir" onClick="window.print()" style="width:100px">
<input type="button" value="Pantalla inicial" onClick="window.location.replace('../principal.php')"       style="width:100px">

<div id="lista_rtes" style="position:absolute; right:15px; top:49px; height:240px">
<b>Habitación - residentes:</b><br>
<select size="22" style="width:200px; position:relative; top:4px; left:0">

<?
while ($row = mysql_fetch_array($query)){

if ($row['habitación'] < 10) $espacio ='&nbsp;&nbsp;'; else  $espacio ='&nbsp;';
$html = $espacio;

if ($row['habitación'] <> $habit){
  $html .= $row['habitación'] .  "-";
  $html .= $row['residente'];
} else {
  $html .= "&nbsp;&nbsp;&nbsp;&nbsp;";
  $html .= $row['residente'] . "<br>\n";
}

echo "<option value=''>$html</option>";
$habit = $row['habitación'];
}
?>

</select>
</div>
</body>
</html>