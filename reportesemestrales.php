<?php

ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');

require_once "errorhand.php";
require_once "control_login.php";

$aSemestrales = 
array(
		"semestrales_clínica_médica",
		"semestrales_psiquiatría",
		"semestrales_trabajo_social", 
		"semestrales_enfermería", 
		"semestrales_kinesiología",
		"semestrales_nutrición",
		"semestrales_recreación"
		);

$sql= "Select hc, concat(apellido, ' ', nombre) as residente from residentes ".
      "where egreso_fecha = '0000-00-00' or isnull(egreso_fecha) order by apellido";

$con = conectar();

if ( ! $query = mysql_query($sql, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ../principal.php');
	exit;
}

?>
<html>

<head>
  <title><?=TITULO?></title>
  <script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
  <script language='javascript' src="../js/sto.js"></script>
  <link rel='stylesheet' type='text/css' href='../estilos/estilos.css'>

  <style>
    .td_f{ text-align: center}
  </style>

</head>

<body oncontextmenu='return false' bgcolor="#eeeeee" style="margin:40px" onload="sto_sub(<? echo $_COOKIE['timeout']?>);">
<h3>Ultimo examen semestral de residentes por área (desde el <?=date('d-m-Y', time() -15552000 )?> a la fecha).<hr></h3>
<table width='99%' align='center' cellspacing='0' cellpadding='1' border=1 bordercolor='#FFFFFF'>
<tr>
<th>Residente

<?php
$n = count ($aSemestrales);

for ($i=0; $i < $n; $i++)
	echo "<th>" . trim(ucfirst( str_replace('_',' ',str_replace('semestrales_', '', $aSemestrales[$i])))). "</th>";
?>

</tr>

<?php
#####################################################################################################
while ($row = mysql_fetch_array($query)){
	echo "<tr><td>". $row['residente'] ."&nbsp;</td>\n";
	
	for ($i=0; $i < $n; $i++){
		$sql_s = "Select date_format(fecha, '%d-%m-%Y') as fecha 	from " . $aSemestrales[$i] . " where ".
		         "hc =" . $row['hc'] . " and fecha >'2005/07/01' order by id desc limit 1;";	
		if ( ! $query_s = mysql_query($sql_s, $con)){
			$texto = mysql_error();
			trigger_error($texto ,E_USER_WARNING);
			header('Location: ../principal.php');
			exit();		
		}
		$row_fecha = mysql_fetch_array($query_s);
		echo "<td class='td_f'>". $row_fecha['fecha']  ."&nbsp;</td>\n";
	}
	echo "</tr>\n";
}
#####################################################################################################
?>
<tr>
<th colspan='8'>&nbsp;
</th></tr></table>
<input type="button" value="Imprimir" onClick="window.print()">
<input type='button' value=' Cerrar ' onclick='window.location.replace("../principal.php")'>
</bpdy></html>