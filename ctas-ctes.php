<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "error-volver.php";
require_once "grid.php"; 
require_once 'selectresidentes.php';

if (isset($_GET['vertodo']) && $_GET['vertodo']==1) $vertodo = true;
else $vertodo = false;

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

$hc=0;

if (isset($_POST['hc']))
$hc = $_POST['hc'];
elseif (isset($_GET['hc']))
$hc = $_GET['hc'];

####################################################################################################################

if($hc){
	$sql= "select * from cuentas_corrientes where hc=$hc and ".
				"fecha >= (date_sub(curdate(), interval (dayofmonth(curdate()) -1) day)) order by fecha;";

	$link_todo    = "<span onclick=\"window.location.replace('ctas-ctes.php?hc=$hc&vertodo=1')\" ".
									"style='cursor:pointer; color: #3333FF; text-decoration:underline'>Mostrar histórico</span>";
	$ocultar_todo = "<span onclick=\"window.location.replace('ctas-ctes.php?hc=$hc&vertodo=0')\" ".
									"style='cursor:pointer; color: #3333FF; text-decoration:underline'>Ocultar histórico</span>";
	
	$sql_saldo_anterior = "select saldo from cuentas_corrientes where hc=$hc and fecha < ".
												"(date_sub(curdate(), interval (dayofmonth(curdate()) -1) day)) ".
												"order by id desc limit 1;";
	
	$con = conectar();
	
	if ( ! $query = mysql_query($sql, $con)) {
			$texto = mysql_error();
			trigger_error($texto ,E_USER_WARNING);
	}
	
	if ( ! $query_saldo = mysql_query($sql_saldo_anterior, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	}
	
	$row_saldo_anterior = mysql_fetch_row($query_saldo);
	$saldo_anterior = $row_saldo_anterior[0];
	
	if ($saldo_anterior > 0){
		$saldo_anterior_debito = $saldo_anterior;
		$saldo_anterior_credito = 0;
	} else {
		$saldo_anterior_debito = 0;
		$saldo_anterior_credito = $saldo_anterior;
	}
}?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">	
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:70px; margin-right:70px; margin-top:35px">
<h3>Cuenta corriente residente: 
<span style="color:#3333FF"><?=residente_nombre_completo($hc)?></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span style="position:absolute; right:80px "><?=ucfirst($meses[date('m')-1]) . ' ' . date('Y')?></span><hr></h3>
<div style="position:absolute; top:2; right:1; z-index:1">
<form action="" method="post" name="residentes" id="residentes">

<? select_residentes(); ?>
	
</form>
</div>

<?
if (!$hc){
 echo "<p>Seleccione residente ... </p>\n";
 echo "<input type='button' value='Listado de saldos' onClick=\"window.location.replace('listasaldos.php')\"\n>";
 echo "<input type='button' value='Menú principal' onClick=\"window.location.replace('../principal.php')\">\n";
 echo "</body></html>";
 exit;
}
?>

<div style="position:relative; top:-15">
<input type="button" value="Registar débito"  onClick="window.location.replace('debitos.php?hc=<?=$hc?>')">
<input type="button" value="Registar crédito" onClick="window.location.replace('creditos.php?hc=<?=$hc?>')">
<input type='button' value='Listado de saldos' onClick="window.location.replace('listasaldos.php')">
<input type="button" value="Menú principal"   onClick="window.location.replace('../principal.php')">
<table width='99%' align='center' cellspacing='0' cellpadding='1' border=1 bordercolor='#FFFFFF' style="position:relative; top:10 ">
<tr>
	<th width="5%">&nbsp Id </th>
	<th width="13%">&nbsp Fecha </th>
	<th width="12%">&nbsp Compr. Nº: </th>
	<th width="40%">&nbsp Concepto </th>
	<th width="10%">&nbsp Debe </th>
	<th width="10%">&nbsp Haber </th>
	<th width="15%">&nbsp Saldo </th>
</tr>
<tr>
	<td style="text-align: left;">&nbsp;</td>
	<td style="text-align: center;">&nbsp;</td>
	<td style="text-align: right;">&nbsp;</td>
	<td style="text-align: left;">&nbsp;<b>Saldo mes anterior</b></td>
	<td style="text-align: right;"><? printf("%01.2f", ($saldo_anterior_debito))?></td>
	<td style="text-align: right;"><? printf("%01.2f", ($saldo_anterior_credito))?></td>
	<td style="text-align: right;"><? printf("%01.2f", ($saldo_anterior))?></td>
</tr>
<? 
$suma_debito  = 0;
$suma_credito = 0;

while($rows = mysql_fetch_array($query)) {

	if ($rows['debito_credito'] == 'débito'){
		$debito  = doubleval($rows['importe']);
		$credito = "";
		$suma_debito += doubleval($debito);
	} else {
		$debito  = "";
		$credito = doubleval($rows['importe']);
		$suma_credito += doubleval($credito);
	}?>
	<tr>
		<td style="text-align: right;">&nbsp;<?=$rows['id']?></td>
		<td style="text-align: center;">&nbsp;<?= fechadmy($rows['fecha'])?></td>
		<td style="text-align: right;">&nbsp;<?=$rows['comprobante']?></td>
                <?php
                # cambiar color de letra si campo tiene comentario
                if ($rows['comentario']<> '')
                  $color_comentario = '#0000ff';
                else
                  $color_comentario = '';
                ?>
		<td style="text-align: left; cursor:pointer; color:<?=$color_comentario?>" title='<?=$rows['comentario']?>'>&nbsp;<?=$rows['concepto']?></td>
		<td style="text-align: right;">&nbsp;<? printf("%01.2f", ($debito))?></td>
		<td style="text-align: right;">&nbsp;<? printf("%01.2f", ($credito))?></td>
		<td style="text-align: right;">&nbsp;<?=$rows['saldo']?> </td>
	</tr>
<? }?>
<!-------------------------------- TOTALES SALDOS ------------------------------------------->
<tr>
	<th colspan=4 style="text-align:center">&nbsp;Totales: (saldo negativo representa importe a favor de residente)</th>
	<th style="text-align: right"><? printf("%01.2f", ($suma_debito + $saldo_anterior_debito))?></th>
	<th style="text-align: right"><? printf("%01.2f", ($suma_credito + $saldo_anterior_credito))?></th>
	<th style="text-align: right"><? printf("%01.2f", ($suma_debito - $suma_credito + $saldo_anterior))?></th>
</tr>
</table>
</div>

<? if ($hc)?>
<IMG style="position:absolute; top:0; left:0; height:50px; width:50px" src="../fotos/<?=$hc?>.jpg">
<span style="position:absolute; top:60px; right:75;font-weight:bold; size:20px; font-size:20px">
<h3>Saldo: $<? printf("%01.2f", ($suma_debito - $suma_credito + $saldo_anterior))?></h3>
</span>
<?
if ($vertodo){
	$sql = "select * from cuentas_corrientes where hc = $hc order by id;";
	echo "<br>";
	grid ($sql, "Movimientos históricos de cuenta");
	echo $ocultar_todo;
} else {
 echo $link_todo;
}
?>

</body></html>