<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require_once "error-volver.php";

if ($_COOKIE['usr_area'] != 'Gerencia' && $_COOKIE['usr_area'] != 'Administración'){
	$err_msg= "El área a la que Ud. pertenece - <b>" 
					  . $_COOKIE['usr_area']."</b> - no tiene privilegios de registro de cuentas corrientes.<br>".
					  "Consulte con <b>Administración</b> si su área ha sido mal asignada.";
	error_volver('../estilos/estilos.css','../js/sto.js',$err_msg, '../principal.php', 5000);
	exit;
}

if (isset($_COOKIE['usr_area']) && $_COOKIE['usr_area'] <> "Administración" && $_COOKIE['usr_area'] <> "Gerencia"){
	header("Location: ../principal.php");
	exit;
}

$con = conectar();

$sql= "Select hc, concat('<span style=\'cursor:pointer; color:blue\' onclick=\"window.location.replace(\'ctas-ctes.php?hc=',hc,'\')\">',apellido, ' ', nombre, '</span>') as residente from residentes ".
      "where egreso_fecha = '0000-00-00' or isnull(egreso_fecha) order by apellido;";

if ( ! $query = mysql_query($sql, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ctas-ctes.php');
	exit();
}
#################################################################################################################33333
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">	
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:90px; margin-right:70px; margin-top:35px">
<h3>Lista de saldos cuentas corrientes residentes:<hr></h3>
<div style="position:relative;">
<table width='100%' align='center' cellspacing='0' cellpadding='1' border=1 bordercolor='#FFFFFF'>
<tr><th>Residente</th><th>Saldo</th></tr>

<?php
$total = 0;
#while
while ($rows = mysql_fetch_array($query)){
	$sql="select saldo from cuentas_corrientes  where hc=". $rows['hc'] ." order by id desc limit 1;";
	
	if ( ! $query_saldo = mysql_query($sql, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		header('Location: cta-cte.php');
		exit();	
	}
	
	$saldo =  mysql_fetch_array($query_saldo);
	echo "<tr><td>";
	echo $rows['residente'] . "</td><td style='text-align:right'>" . $saldo['saldo'] . "&nbsp;</td></tr>\n";
	$total += doubleval($saldo['saldo']);
}
# fin while
echo "\n<tr><th style='text-align:right'><b>Total:&nbsp;&nbsp;</b></th><th style='text-align:right'>$total</th></tr></table><br>\n";

$sql = "select concepto, sum(importe) as total ".
       "from cuentas_corrientes where debito_credito='débito' and if(month(curdate())=1, year(curdate())-1, year(curdate())) ".
       "and month(fecha)=(month(date_sub(curdate(), interval 1 month))) group by concepto;";

if (date('n')==1) $mes_ant= 11; else $mes_ant= date('m') -2;

grid($sql, "Consolidado de débitos " . $meses[$mes_ant] );
?>

<input type="button" value="<< Menú cuentas corrientes" onClick="window.location.replace('ctas-ctes.php')" 
style="position:relative; top:5px">
</div>
</body></html>