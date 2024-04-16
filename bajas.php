<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require_once "getformread.php";

setcookie("hc"); 

$area = ""; $key="";

if (isset($_COOKIE['usr_area'])){
	if ($_COOKIE['usr_area'] == 'Clínica Médica' || $_COOKIE['usr_area'] == 'Psiquiatría')
		$area_prescribe = 1;
	else
		$area_prescribe = 0;
}

if (!isset($_COOKIE['hc_eg']) && !isset($_POST['hc_eg'])){ 
	header('Location: principal.php');
	exit;
}

if (isset($_POST['hc_eg'])){ // tenemos hc
	setcookie('hc_eg', $_POST['hc_eg']);
	$hc_eg =$_POST['hc_eg'];
}

if (isset($_COOKIE['hc_eg']) && !isset($_POST['hc_eg'])){ // tenemos hc desde cookie - no primera
	$hc_eg =$_COOKIE['hc_eg'];
}

if (isset($_GET['key'])){ // pide algun dato de lectura
	setcookie('key', $_GET['key']);
	$key = $_GET['key'];
}

if (isset($_COOKIE['key']) && !isset($_GET['key'])){
$key = $_COOKIE['key'];
}

if ($hc_eg == ""){
	header("Location: principal.php");
}

switch ($key){ // nombramos tablas y titulos para mostrar.
	case 1: $tabla = "informes_sociales"; break;
	case 2:
	$tabla = "evoluciones";
		if (isset($_GET["area"])){
			$area = $_GET["area"];
			setcookie('area_evol', $area);
		}else{
			if (isset($_COOKIE['area_evol']))
				$area = $_COOKIE['area_evol'];
			else
				$area = "Clínica Médica";
		}
	break;
	case  3: $tabla = "prescripciones";	break;
	case  4: $tabla = "familiares"; break;
	case  5: $tabla = "epicrisis"; break;
	case  6: $tabla = "interconsultas"; break;
	case  7: $tabla = "signos_vitales"; break;
	case  8: $tabla = "pae"; break;
	case 10: $tabla = "semestrales_clínica_médica"; break;
	case 11: $tabla = "semestrales_psiquiatría"; break;
	case 12: $tabla = "semestrales_nutrición"; break;
	case 13: $tabla = "semestrales_trabajo_social"; break;
	case 14: $tabla = "semestrales_kinesiología"; break;
	case 15: $tabla = "semestrales_recreación"; break;
	case 17: $tabla = "semestrales_enfermería"; break;
	case "vt": $tabla = "visitas"; break;
	default: $tabla = ""; $titulo = ""; break;
}

if (isset($tabla) && !isset($titulo)){
	$titulo = str_replace('_', ' ' , $tabla);
	$titulo = ucfirst($titulo);
}

if (isset($tabla)){
	setcookie('tabla', $tabla);
}

if (!isset($tabla) && isset($_COOKIE['tabla'])){
	$tabla = $_COOKIE['tabla'];
}

$cmdText ="Select r.hc, concat(r.apellido, ' ' , r.nombre) as nombre, date_format(r.fecha_ingreso, '%d-%m-%y')as ingreso, " .
          " r.documento_tipo, r.documento_número, r.lugar_nacimiento, 	".
          "date_format(r.fecha_nacimiento, '%d-%m-%y') as fecha_nacimiento, r.estado_civil, ".
          "r.cónyuge_nombre, r.número_hijos, r.obra_social, r.afiliado_número, r.habitación, ".
          "date_format(r.egreso_fecha, '%d-%m-%y') as egreso, e.motivo from residentes as r, ".
					"epicrisis as e where r.hc = e.hc and r.hc = $hc_eg;";

$con = conectar();

if ( ! $query = mysql_query($cmdText, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: principal.php?err-bajas=1');
	exit;
}

$row = mysql_fetch_array($query);

if (!$retrows = mysql_num_rows($query)){ 
	header('Location: principal.php');
	exit;
} else {
	$residente_nombre = $row['nombre'];
}

?>	
<html>

<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language="JavaScript1.2" src="js/coolmenus3.js"></script>
<script language='javascript' src="js/sto.js"></script>
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<style>
.dp_t{ text-align:left; font-weight:bold;}
</style>
<title><?=TITULO?></title>
</head>

<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:0,0,0,0">

<div style="position:absolute; top:0; z-index:0; width:100%; height:35; background-color:#3399FF"></div>

<div style="position:relative; top:0; z-index:1">
<script language="JavaScript1.2" src="js/menuBajas.js"></script>
</div>

<!-- -----------------------        datos                  -------------------------------------------- -->

<div style="position:relative; top: 60px;">
<h5 style=" text-align:center; color:#990000; text-decoration:underline">PACIENTE EGRESADO - (SOLO CONSULTA) </h5>
<table width="95%" align="center">
<tr>	
	<td width="18%" style="width:18%; text-align:center">
		<img style="position: relative; top:0px; left:0px; height:135Fpx; width:130px" src="/fotos/<? echo $hc_eg . '.jpg'?>">
	<td>
		<table width='100%' border=1 bordercolor="#FFFFFF" cellspacing=0 cellpadding=1 align="center">
			<tr>
				<td class="dp_t">
					Paciente:&nbsp;
				<td style='font-size:10pt'>
					<? echo $row['nombre']?>&nbsp;
				<td class="dp_t" >
					Historia Médica Social Unica Nº:&nbsp;
				<td>
					<? echo $row['hc']?>&nbsp;
			<tr>
				<td class="dp_t">
					Ingreso:&nbsp;
				<td>
					<? echo $row['ingreso']?>&nbsp;
				<td class="dp_t">
					Egreso:&nbsp;
				<td>
					<? echo $row['egreso']?>&nbsp; 
			<tr>
				<td class="dp_t">
					Fecha nacimiento:&nbsp;
				<td> 
					<? echo $row['fecha_nacimiento']?>&nbsp;
				<td class="dp_t">
					Lugar de nacimiento:&nbsp;
				<td>
					<? echo $row['lugar_nacimiento']?>&nbsp;
			<tr>
				<td class="dp_t">
					Obra social:&nbsp;
				<td>
					 <? echo strtoupper( $row['obra_social'] )?> &nbsp;
				<td class="dp_t">
					Número afiliado Obra Social:&nbsp;
				<td>
					<? echo $row['afiliado_número']?>&nbsp;
			<tr>
				<td class="dp_t">
					Ultima habitación&nbsp;antes del egreso:
				<td>
					<? echo $row['habitación']?>&nbsp;
				<td class="dp_t">
					Estado Civil:&nbsp;
				<td>
					<? echo $row['estado_civil']?>&nbsp;
			<tr>
				<td class="dp_t">
					Conyuge:&nbsp;
				<td>
					<? echo $row['cónyuge_nombre']?>&nbsp;	
				<td class="dp_t"> 
					Hijos:&nbsp;
				<td>
					<? if($row['número_hijos']) echo $row['número_hijos']?>&nbsp;
			<tr>
				<td class="dp_t">
					Documento:&nbsp;
				<td>
					<? echo $row['documento_número']?>&nbsp;
				<td class="dp_t">
					Motivo de egreso:&nbsp;
				<td>
					<? echo $row['motivo'] ?>&nbsp;
		</table>
	</tr>
</table>

</div>

<div style="position: relative; top: 70px; width:95%; left:20; right:20">

<?php
if ($tabla == ""){
	exit("</div><hr style='position: absolute; top: 35px' size='3'></body></html>");
}

if ($tabla == 'evoluciones') {
	if ($area == 'Todas') 
		$sql = "select fecha, área, evolución, observaciones, profesional_actuante from $tabla where hc=$hc_eg order by id desc ";
	else
		$sql = "select fecha, evolución, observaciones, profesional_actuante from $tabla where hc=$hc_eg and área= '$area' order by id desc ";
}elseif ($tabla == 'prescripciones') {
	$sql = "select p.id, concat(m.medicamento, ' ', pm.presentación, ' ', pm.dosis) as medicación, p.regular, p.desde, ". 
	       "p.hasta, p.días, p.horarios, p.vía, p.observaciones, p.prescripto_por from prescripciones as p ".
				 "inner join presentaciones_medicamentos as pm on p.id_presentación_medicamento = pm.id ".
				 "inner join medicamentos as m on pm.id_medicamento = m.id where p.hc = $hc_eg order by p.id desc ";
} else { 
	$sql = "select * from $tabla where hc=$hc_eg order by id desc ";
}

if (!isset($sql) || !isset($tabla)) exit; 

if ($tabla=="prescripciones" || $tabla == "signos_vitales") {
	grid ($sql, $titulo . ' ' . $area, "No hay datos actuales para su consulta de $titulo.");
} else {
	if ($tabla == "evoluciones" && $area <> "Todas" ){
		$sqlt = "Select count(id) from $tabla where hc =$hc_eg and área = '$area';";
	}elseif ($tabla == "evoluciones" && $area == "Todas" ){
		$sqlt = "Select count(id) from $tabla where hc =$hc_eg;";
	}elseif ($tabla <> "residentes") {
		$sqlt = "Select count(id) from $tabla where hc =$hc_eg;";
	} elseif ($tabla == "residentes"){
		$sqlt = "Select count(hc) from $tabla where hc =$hc_eg;";
	}

	$query34 = mysql_query( $sqlt, $con);
	$row = mysql_fetch_row($query34);
	$ult_reg = $row[0];
	$y=0;
	if (isset($_GET['y'])) $y = $_GET['y'];
	if ($y < 0) $y =0;

	if ($ult_reg < 2) {
		$disabled = array("disabled","disabled","disabled","disabled");
	} else {
		switch ($y){
			case 0:             $disabled = array("disabled", "disabled", "", ""); break;
			case ($ult_reg-1):  $disabled = array("", "", "disabled", "disabled"); break;
			default:            $disabled = array("","","",""); break;
		}
	}
	if ($ult_reg > 1) {
		echo "<input type='button' value=' << Primero' onclick=\"window.location.replace('bajas.php?y=0')\" ". $disabled[0] .">";
		echo "<input type='button' value=' < Anterior' onclick=\"window.location.replace('bajas.php?y=".($y-1)."')\"". $disabled[1] .">";
		echo "<input type='button' value='Siguiente >' onclick=\"window.location.replace('bajas.php?y=".($y+1)."')\"". $disabled[2] .">";
		echo "<input type='button' value='Ultimo >> '  onclick=\"window.location.replace('bajas.php?y=".($ult_reg - 1)."')\"". $disabled[3] .">";
		echo "<span style='color:" . ERROR_COLOR . "; position:absolute; right:10px'>Registro " . ($y +1 ) ." de  " . ($ult_reg) . "</SPAN>";
	}

	getFormRead($sql . " limit $y,1;", $titulo);

	if ($ult_reg > 1) {
		echo "<input type='button' value=' << Primero'  onclick=\"window.location.replace('bajas.php?y=0')\" ". $disabled[0] .">";
		echo "<input type='button' value=' < Anterior'  onclick=\"window.location.replace('bajas.php?y=".($y-1)."')\"". $disabled[1] .">";
		echo "<input type='button' value='Siguiente > ' onclick=\"window.location.replace('bajas.php?y=".($y+1)."')\"". $disabled[2] .">";
		echo "<input type='button' value='Ultimo >> '   onclick=\"window.location.replace('bajas.php?y=".($ult_reg - 1)."')\"". $disabled[3] .">";
		echo "<span style='color:" . ERROR_COLOR . "; position:absolute; right:10px'>Registro " . ($y +1 ) ." de  " . ($ult_reg) . "</SPAN>";
	}
} 

?>

</div>
</body>
</html>