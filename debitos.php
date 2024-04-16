<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "newsesion.php";
require_once "error-volver.php";
require_once "selecthtml.php";

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

if (isset($_GET['hc'])) $hc = $_GET['hc'];
elseif (isset($_POST['hc'])) $hc=$_POST['hc'];

if(isset($_POST['deb-cred']) && isset($_POST['concepto_debito'])){
	if(trim($_POST['concepto_debito']) <> ""){
		$deb_cred        = $_POST['deb-cred'];
		$concepto_debito = $_POST['concepto_debito'];
		$con = conectar();
		$sql = "insert into conceptos_ctas_ctes (debito_credito, concepto) values('$deb_cred','$concepto_debito');";

		if ( ! $query = mysql_query($sql, $con)){
			$texto = mysql_error();
			trigger_error($texto ,E_USER_WARNING);
		} 
	}
}

if(isset($_POST['fecha']) && isset($_POST['importe'])){
	$fecha       = fechaymd($_POST['fecha']);
	$comprobante = $_POST['comprobante'];
	$concepto    = $_POST['concepto'];
	$importe     = str_replace (',', '.', $_POST['importe']);
	$saldo       = saldo_cta_cte($hc) + $importe;
        $comentario  = $_POST['comentario'];
	$sql = "insert into cuentas_corrientes (hc,fecha,comprobante,debito_credito, concepto, importe, saldo, comentario) ".
	       "values($hc,'$fecha', $comprobante, 'débito', '$concepto', $importe, $saldo, '$comentario');";
	$con = conectar();
	
	if ( ! $query = mysql_query($sql, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	} else {
			auditoria("débitos ctas. ctes.", "insertó", mysql_insert_id());
	}
	
	header("Location: ctas-ctes.php?hc=$hc");
}
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">	
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<script language='javascript'>
function vf_wf(){
	 if ( !isDate(document.wf.fecha.value ) ){
		 var msg='¡ATENCION! \n El Campo \'fecha\' debe contener \nun valor de fecha válida (dd-mm-aaaa).';
		 alert (msg);
		 document.wf.fecha.focus();
		 return false;
	}
	 var val= document.wf.fecha.value;
	 val = val.replace(/^\s*|\s*$/g,"");
	 if ( val.length < 1 ){
		 var msg='¡ATENCION! \n El Campo \'fecha\' es obligatorio.';
		 alert (msg);
		 document.wf.fecha.focus();
		 return false;
	}
	 if ( !isNum(document.wf.comprobante.value) ){
		 var msg='¡ATENCION! \n El Campo \'comprobante\' debe contener un número entero.';
		 alert (msg);
		 document.wf.comprobante.select();
		 document.wf.comprobante.focus();
		 return false;
	}
	 var val= document.wf.comprobante.value;
	 val = val.replace(/^\s*|\s*$/g,"");
	 if ( val.length < 1 ){
		 var msg='¡ATENCION! \n El Campo \'comprobante\' es obligatorio.';
		 alert (msg);
		 document.wf.comprobante.focus();
		 return false;
	}
	
	 var val= document.wf.concepto.value;
	 val = val.replace(/^\s*|\s*$/g,"");
	 if ( val.length < 1 ){
		 var msg='¡ATENCION! \n El Campo \'concepto\' es obligatorio.';
		 alert (msg);
		 document.wf.concepto.focus();
		 return false;
	}
	 var val= document.wf.concepto.value;
	 val = val.replace(/^\s*|\s*$/g,"");
	 if  (val.length > 60){
		 var msg='¡ATENCION! \n El campo \'concepto\' excede la longitud\n máxima permitida de 60 caracteres.';
		 alert (msg);
		 document.wf.concepto.select();
		 document.wf.concepto.focus();
		 return false;
	}
	 if ( !isReal(document.wf.importe.value) ){
		 var msg='¡ATENCION! \n El Campo \'importe\' debe contener un valor numérico.';
		 alert (msg);
		 document.wf.importe.select();
		 document.wf.importe.focus();
		 return false;
	}
	 var val= document.wf.importe.value;
	 val = val.replace(/^\s*|\s*$/g,"");
	 if ( val.length < 1 ){
		 var msg='¡ATENCION! \n El Campo \'importe\' es obligatorio.';
		 alert (msg);
		 document.wf.importe.focus();
		 return false;
	}
}
</script>
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:120px; margin-right:90px; margin-top:65px">
<IMG style="position:absolute; top:0; left:0; height:70px; width:70px" src="../fotos/<?=$hc . '.jpg'?>">
<h3>Registro de débito: <span style="color:#3333FF"><?=residente_nombre_completo($hc)?>	</span><hr></h3>
<form method='post' action='' name='wf' onsubmit='return vf_wf()'>
<table width='100%' cellspacing='1' cellpadding='2' align='center'>
<tr><th colspan=2><img src='imagenes/cuad_ver.gif' width='8' height='8' hspace='3'>Nuevo registro Cuentas corrientes</th></tr>
<tr><th  align='right' width="90px">&nbsp; fecha  *:</th>
<td><input name='fecha' value='<?= date('d-m-Y')?>' size='10' readOnly style='text-align:center'>&nbsp;&nbsp;(formato dd-mm-aaaa)
</td></tr>
<tr><th  align='right'>&nbsp; comprobante Nº *:</th>
<td><input name='comprobante' value='' size='12'  style='text-align:right'>
</td></tr>
<tr><th  align='right'>concepto débito *:</th>
<td>

<?
if (isset($_POST['concepto_debito']) && trim($_POST['concepto_debito']) <> "")
	$cpto_deb =$_POST['concepto_debito'];
else
	$cpto_deb = "";

$sql = "Select concepto, concepto from conceptos_ctas_ctes where debito_credito='débito' order by concepto;";
selectHTML($sql, 'concepto', 1, '', '', '', $cpto_deb, '')

?>

</td></tr>
<tr><th  align='right'>&nbsp; importe  *:</th>
<td><input name='importe' value='' size='12'  style='text-align:right'>
</td></tr>
<tr><th>Comentario</th><td><textarea name='comentario'></textarea></td>
</table>
<div style="position:relative; top:7px;">
<input type="hidden" name="hc" value="<?=$hc?>">
<input type="submit" value="Ingresar registro">
<input type="button" value="Menú de cuentas corrientes"   onClick="window.location.replace('ctas-ctes.php?hc=<?=$hc?>')">
</div>
</form>
<br><br>
<form action="" name="frm_concepto" method="post">
<p>Si no dispone de un concepto de débito adecuado puede agregar un valor aquí:<br>
Agregar concepto de débito: 
<input name="concepto_debito" size="30" maxlength="60">
<input type="hidden" name="deb-cred" value="débito">
<input type="hidden" name="hc" value="<?=$hc?>">
<input type="submit" value="Registar">
</form>
</p>
</body>
</html>