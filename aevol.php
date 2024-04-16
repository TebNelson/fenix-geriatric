<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
require_once "grid.php";
require_once "error-volver.php";

$a_areas_evol = array('Dirección',
                      'Clínica Médica',
											'Psiquiatría',
											'Trabajo Social',
											'Nutrición', 'Kinesiologia',
											'Supervisión Enfermería',
											'Enfermería');
$num_areas = count($a_areas_evol);

$area_evoluciona = false;

for ($i=0; $i< $num_areas; $i++){
	if (trim($_COOKIE['usr_area']) == $a_areas_evol[$i]){
		$area_evoluciona = true;
		break;
	}
}

/*
if (!$area_evoluciona){
$msg_e = "<html><head>".
         "<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1))}</script>".
         "<link rel='stylesheet' type='text/css' href='../estilos/estilos.css'><script language=\"JavaScript\" ".
				 "src=\"../js/sto.js\"></script></head>\n".
         "<body oncontextmenu='return false' bgcolor='#eeeeee'>".
         "<p style=\"position:absolute; top: 150; left:100; color:#cc3333\">El área a la que usted pertenece ".
		     "(" . $_COOKIE['usr_area']. ") no realiza evoluciones de residentes.<br> ".
		     "Consulte con Administración si su área ha sido mal asignada.</p>".
         "<script language='javascript'>sto_volver_principal_sub()</script></body></html>";
exit($msg_e);
}*/

if (!$area_evoluciona){
$err_msg= "El área a la que Ud. pertenece - <b>" 
					. $_COOKIE['usr_area']."</b>- no realiza evoluciones de pacientes.<br>".
					"Consulte con <b>Administración</b> si su área ha sido mal asignada.";

error_volver('../estilos/estilos.css','../js/sto.js',$err_msg, '../principal.php', 5000);
exit;
}

if (!$area_evoluciona){
	header("Location: ../principal.php");
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
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin-left:80px; margin-right:60px; margin-top:35px">
<h3>Listado residentes a evolucionar área: <?=$_COOKIE['usr_area']?><hr></h3>
<div>

<?php
$con = conectar();

$sqlres = "Select hc, concat(apellido, ' ', nombre )as paciente, date_format(fecha_ingreso, '%d-%m-%Y') ".
          "from residentes where (egreso_fecha = '0000-00-00' or egreso_fecha is null) order by apellido;";

if ( ! $query_res = mysql_query($sqlres, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ../principal.php');
	exit();
}

$x=0;

echo "<table width='99%' align='center' cellspacing='0' cellpadding='1' border=1 bordercolor='#FFFFFF'>\n".
		 "<tr><th>Paciente</th><th>Ultima evolución área</th><th>Ingreso</th><th>Ir a evolución</th></tr>\n";

#################################################################################################################################
while ($rowres = mysql_fetch_row($query_res)){
	$sql = "Select fecha from evoluciones where hc=". $rowres[0] ." and 	área = '". $_COOKIE['usr_area'] ."' order by id desc limit 1";

	if ( ! $query = mysql_query($sql, $con)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		header('Location: ../principal.php');
		exit();	
	}

	$row= mysql_fetch_row($query);
	
	if( !( $row[0] > (date("Y-m-d") - 30))){
		echo  "<form action=\"../residente.php?key=2\" method=\"post\" name=\"frm-aevol\">\n".
					"	<tr>\n".
					"		<td>". $rowres[1] . "&nbsp;</td>\n".
					"		<td>". $row[0]    . "&nbsp;</td>\n".
					"		<td style='text-align:center'>". $rowres[2] . "&nbsp;</td>\n".
					"		<td style='text-align:center'>".
					"    <input type='hidden' name='hc' value='".$rowres[0] ."'>\n".
					"    <input type='submit' value='Evolucionar'>\n</td>\n".							
					"</tr></form>\n";
		$x++;
	}
} # fin while
####################################################################################################################################

echo "</table>";

if(!$x)
echo "No hay pacientes pendientes de evolución.<br>\n";
?>

<input type="button" value="Imprimir" onClick="window.print()" style="position:relative; top:10px">
<input type="button" value="Cerrar" onClick="window.location.replace('../principal.php')" style="position:relative; top:10px">
</div>
</body>
</html>