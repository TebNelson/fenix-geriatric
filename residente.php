<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require_once "getformread.php";

$hc=""; $key=""; $tabla=""; $area=""; $cmdText=""; $row=""; $query=""; $disabled="";

if (isset($_COOKIE['usr_area'])){
	$area_usr = $_COOKIE['usr_area'];
}

if ($area_usr == 'Cl�nica M�dica' || $area_usr== 'Psiquiatr�a' || $area_usr== 'Direcci�n'){
	$area_prescribe =1;
}else { # anula la suspensi�n de medicamento desde el cliente.
	$area_prescribe =0;
	$disabled = "disabled";
}

if (!isset($_COOKIE['hc']) && !isset($_POST['hc'])){ // no tenemos hc - primera entrada
	header('Location: principal.php');
	exit;
}

if (isset($_POST['hc'])){ // tenemos hc
	setcookie('hc', $_POST['hc']);
	$hc =$_POST['hc'];
}

if (isset($_COOKIE['hc']) && !isset($_POST['hc'])){ // tenemos hc desde cookie - no primera
	$hc =$_COOKIE['hc'];
}

if($hc ==""){
	header("Location: principal.php");
	exit;
}

if (isset($_GET['key'])){ // pide algun dato de lectura
	setcookie('key', $_GET['key']);
	$key = $_GET['key'];
}

if (isset($_COOKIE['key']) && !isset($_GET['key'])){
	$key = $_COOKIE['key'];
}

switch ($key){ // nombramos tablas y titulos para mostrar.
	case 1: $tabla = "informes_sociales"; break;
	case 2: $tabla = "evoluciones"; 
		if (isset($_GET["area"])){
			$area = $_GET["area"];
			setcookie('area_evol', $area);
		}else{
			if (isset($_COOKIE['area_evol'])) $area = $_COOKIE['area_evol'];
			elseif (isset($_COOKIE['usr_area'])) $area = $_COOKIE['usr_area'];
			else $area = "";}break;
	case  3: $tabla = "prescripciones"; $titulo="Prescripciones Actuales"; break;
	case  4: $tabla = "familiares"; break;
	case  5: $tabla = "epicrisis"; break;
	case  6: $tabla = "interconsultas"; break;
	case  7: $tabla = "signos_vitales"; break;
	case  8: $tabla = "pae"; break;
	case 10: $tabla = "semestrales_cl�nica_m�dica"; break;
	case 11: $tabla = "semestrales_psiquiatr�a"; break;
	case 12: $tabla = "semestrales_nutrici�n"; break;
	case 13: $tabla = "semestrales_trabajo_social"; break;
	case 14: $tabla = "semestrales_kinesiolog�a"; break;
	case 15: $tabla = "semestrales_recreaci�n"; break;
	case 17: $tabla = "semestrales_enfermer�a"; break;
	case 18: $tabla = "prescripciones_anteriores"; $titulo="Prescripciones Anteriores"; break;
	case 'vt': $tabla = "visitas"; break;
	case 'di': $tabla = "residentes"; break;
	default: $tabla = "";  $titulo = ""; break;
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

$cmdText ="Select hc, concat(apellido, ' ' , nombre) as nombre, date_format(fecha_ingreso, '%d-%m-%Y')as ingreso, ".
          "documento_tipo, documento_n�mero, lugar_nacimiento, date_format(fecha_nacimiento, '%d-%m-%Y') as fecha_nacimiento, ".
          "estado_civil, c�nyuge_nombre, n�mero_hijos, �ltima_ocupaci�n,  �ltima_residencia, obra_social, ".
          "afiliado_n�mero, habitaci�n, ".
					"floor(((to_days(curdate()) - (floor((floor(((to_days(curdate())- 10) - to_days(fecha_nacimiento)) / 365)) / 4 )))".
			    " - to_days(fecha_nacimiento)) / 365) as edad ".
					"from residentes where hc = $hc and (isnull(egreso_fecha) or egreso_fecha = '0000-00-00');";

$con = conectar();

if ( ! $query = mysql_query($cmdText, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: principal.php');
	exit();
}

$row = mysql_fetch_array($query);
$hb = $row['habitaci�n'];
# no hay datos del paciente. Salir.
if (!$retrows = mysql_num_rows($query)){
	header('Location: principal.php');
	exit;
}

?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='JavaScript' src="js/coolmenus3.js"></script>
<script language='javascript' src="js/sto.js"></script>	
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<style>
.dp_t{ text-align:left; font-weight:bold; text-indent:8 px; background-color:#DDDDEE}
</style>
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto(<? echo $_COOKIE['timeout']?>); stt_usr('<?=usr_nombre_completo($_COOKIE['logon']) . ' (' . $_COOKIE['usr_area'] . ')'?>')" bgcolor="#eeeeee">

<div style="position:absolute; top:0;">
<script language="JavaScript1.2" src="js/menuHCResidentes.js"></script>
</div>

<!-------------------------           datos                 ----------------------------------- -->

<div style="position:relative; top: 30px">
<table width='100%'>
<tr>	
<td style="width:20%; text-align:center" valign="middle">
<img style="height:128px; width:130px; position:relative; top:1; left:10" src="fotos/<?= $hc . '.jpg'?>">
<td>
<table width='99%' border=1 cellspacing=0 cellpadding=1 align="center">
<tr>
<td class="dp_t">
Paciente:
<td style='font-size:10pt; font-weight:bold'>
&nbsp;<?= $row['nombre'] ?>
<td class="dp_t" >
Historia M�dica Social Unica N�:
<td style="text-align:center">
<?=$row['hc']?>&nbsp;
<tr>
<td class="dp_t">
Ingreso:
<td  style="text-align:center">
<?=$row['ingreso']?>&nbsp;
<td class="dp_t">
<?=$row['documento_tipo']?>:&nbsp;
<td  style="text-align:center">
<?=$row['documento_n�mero']?>&nbsp;  
<tr>
<td class="dp_t">
Fecha nacimiento:
<td  style="text-align:center">
<?=$row['fecha_nacimiento'] ?>&nbsp;
<td class="dp_t">
Lugar de nacimiento:
<td>
<?=$row['lugar_nacimiento']?>&nbsp;
<tr>
<td class="dp_t">
Obra social:
<td>
 <?=strtoupper( $row['obra_social'] )?> &nbsp;
<td class="dp_t">
N�mero afiliado Obra Social:
<td  style="text-align:center">
<?=$row['afiliado_n�mero']?>&nbsp;
<tr>
<td class="dp_t">
<span style="cursor:pointer;" onClick="window.location.replace('consultas/habitaciones.php')">
Edad:
</span>
<td  style="text-align:center">
<?=$row['edad']?>&nbsp;a�os.
<td class="dp_t">
Estado Civil:
<td>
<?=$row['estado_civil']?>&nbsp;
<tr>
<td class="dp_t">
Conyuge:
<td>
<? echo $row['c�nyuge_nombre']?>&nbsp;	
<td class="dp_t">
Hijos:
<td  style="text-align:center">
<? if ($row['n�mero_hijos']) echo $row['n�mero_hijos']?>&nbsp;
<tr>
<td class="dp_t">
Ultima ocupaci�n:&nbsp;
<td>
<? echo $row['�ltima_ocupaci�n']?>&nbsp;
<td class="dp_t">
Habitaci�n:
<td>
<? echo $row['habitaci�n'] ?>&nbsp;
</table>
</tr>
</table>
</div>

<!-------------------------------   selector       ----------------------------------->

<div style="position:relative; top:30px; left:23px; z-index:0">
<form action="residente.php" method="post" name="residentes" id="residentes">

<?
require_once 'selectresidentes.php';
select_residentes();
?>

</form>
</div>

<div style="position:relative;top:20px;width:100%;left:23;right:25">

<?php
################################  mostrar resumen inicial   ########################################

if ($tabla == "") {# no hay seleccionado datos mostramos resumen inicial
	echo "<iframe frameborder='0' src='sintesis-hmsu-rte.php?hc=$hc&hab=$hb'" . 
	     " style='WIDTH:96%; HEIGHT:58%'></iframe>";
	echo "</div></body></html>";
	exit;
}

################################     crear string sql                 #####################################

if ($tabla == 'evoluciones'){
	if ($area == 'Todas'){
		$sql = "select fecha, �rea, evoluci�n, observaciones, profesional_actuante from evoluciones where hc=$hc order by id desc ";
	}else {
		$sql = "select �rea, fecha, evoluci�n, observaciones, profesional_actuante ".
					 "from $tabla where hc=$hc and �rea='$area' order by id desc ";
	}
} elseif ($tabla == 'prescripciones_anteriores'){
	$sql = "select concat(m.medicamento, ' ', pm.presentaci�n, ' ', pm.dosis) as medicaci�n, p.regular, p.desde, ".
				 "p.hasta, p.d�as, p.horarios, p.v�a, p.observaciones, p.prescripto_por, pc.m�dico_actuante as cancelada_por, ".
				 "pc.motivo as motivo_de_cancelaci�n, pc.observaciones as observaciones_cancelaci�n from prescripciones as p ".
				 "inner join presentaciones_medicamentos as pm on p.id_presentaci�n_medicamento = pm.id inner join medicamentos as m " .
				 "on pm.id_medicamento = m.id left join prescripciones_canceladas as pc on p.id = pc.id_prescripci�n ".
				 "where p.hc = $hc and p.hasta < curdate() order by m.medicamento;";
				 //echo $sql; exit;
} elseif ($tabla == 'prescripciones') {
	if ($area_usr == 'Cl�nica M�dica' || $area_usr =='Psiquiatr�a' || $area_usr =='Direcci�n')	$disa = "";
	else $disa = "disabled";
	$sql = "select p.id, concat(m.medicamento, ' ', pm.presentaci�n, ' ', pm.dosis) as medicaci�n,  p.regular, ".
					"p.desde, p.hasta, p.d�as, p.horarios, p.v�a, p.observaciones, p.prescripto_por, " .
					"concat('\n<form method=\"post\" action=\"nueva-prescripcion/cancelprescrip.php\" name=\"cp\" ".
					" onSubmit=\"return confirmarcancelp(', '". 	$area_prescribe ."', ',\'' , m.medicamento, '\')\" $disabled>\n".
					"<input type=\"hidden\" name=\"id\" value=\"',p.id,'\">\n".
					"<input type=\"hidden\" name=\"medicamento\" value=\"', m.medicamento, ' ' , pm.presentaci�n, ' ' , pm.dosis ,'\">".
					"<input type=\"submit\" " . $disa . " value=\"Cancelar\">\n</form>\n') as cancelar from prescripciones as p ".
					"inner join presentaciones_medicamentos as pm on p.id_presentaci�n_medicamento = pm.id ".
					"inner join medicamentos as m on pm.id_medicamento = m.id where p.hc = $hc and p.hasta >= curdate() ".
					"order by p.id desc;";
					 //trigger_error($sql ,E_USER_WARNING);
} elseif ($tabla == "residentes") {
	$sql = "select * from $tabla where hc=$hc ";
}	else {
	$sql = "select * from $tabla where hc=$hc order by id desc";
}

######################################     FIN SQL   ####################################################
######################################mostRAR CONSULTAS   ################################################

if (!isset($sql) || !isset($tabla)) exit; 

if ($tabla == "prescripciones" || $tabla == "signos_vitales" || $tabla == "prescripciones_anteriores") {
	$img = "images/bluearrow.gif";
	grid ($sql, $titulo . ' ' . $area, "No hay datos actuales para su consulta de $titulo.", $img);
} else {
	if ($tabla == "evoluciones" && $area <> "Todas" ){
		$sqlt = "Select count(id) from $tabla where hc =$hc and �rea = '$area';";
	}elseif ($tabla == "evoluciones" && $area == "Todas" ){
		$sqlt = "Select count(id) from $tabla where hc =$hc;";
	}elseif ($tabla <> "residentes") {
		$sqlt = "Select count(id) from $tabla where hc =$hc;";
	} elseif ($tabla == "residentes"){
		$sqlt = "Select count(hc) from $tabla where hc =$hc;";
	}

	$query34 = mysql_query( $sqlt, $con);
	$row = mysql_fetch_row($query34);
	$ult_reg = $row[0] ;
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
		echo "<input type='button' value=' << Primero' onclick=\"window.location.replace('residente.php?y=0')\" ". $disabled[0] .">";
		echo "<input type='button' value=' < Anterior' onclick=\"window.location.replace('residente.php?y=".($y-1)."')\"". $disabled[1] .">";
		echo "<input type='button' value='Siguiente >' onclick=\"window.location.replace('residente.php?y=".($y+1)."')\"". $disabled[2] .">";
		echo "<input type='button' value='Ultimo >> '  onclick=\"window.location.replace('residente.php?y=".($ult_reg - 1)."')\"". $disabled[3] .">";
		echo "<span style='color:" . ERROR_COLOR . "; position:absolute; right:35px'>Registro " . ($y +1 ) ." de  " . ($ult_reg) . "</SPAN>";
	}

if ($tabla <> "epicrisis") { # limpiar valor de tabla si viene de consultar pacientes de baja.
	$resultado_consulta = getFormRead($sql . " limit $y,1;", $titulo);
	#if ($resultado_consulta == 2) echo " $titulo.";
} else {
	echo "<iframe frameborder='0' src=\"sintesis-hmsu-rte.php?hc=$hc&hab=$hb\" ".
	     "style='WIDTH:96%; HEIGHT:305px'></iframe>";
	echo "</div></body></html>";
	exit;
}

	if ($ult_reg > 1) {
		echo "<input type='button' value=' << Primero'
		onclick=\"window.location.replace('residente.php?y=0')\" ". $disabled[0] .">
		<input type='button' value=' < Anterior'
		onclick=\"window.location.replace('residente.php?y=".($y-1)."')\"". $disabled[1] .">
		<input type='button' value='Siguiente >'
		onclick=\"window.location.replace('residente.php?y=".($y+1)."')\"". $disabled[2] .">
		<input type='button' value='Ultimo >> '
		onclick=\"window.location.replace('residente.php?y=".($ult_reg - 1)."')\"". $disabled[3] .">
		<span style='color:" . ERROR_COLOR ."; position:absolute; right:35px'>Registro " . ($y + 1 ) ." de  " . ($ult_reg) . "</SPAN>";
	}
} 
?>

</div>

</body>
</html>