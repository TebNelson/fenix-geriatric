<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc'); 
require_once "errorhand.php";
require_once "control_login.php";
require_once "const.php";
?>
<html>
<head>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<title><?=TITULO?></title>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" 
style="margin-top:30px; margin-left:70px; margin-right:40px">
<h3>Listado de Prescripciones al <?=date('d-m-Y')?>.</h3>

<?php
$rte = "";

$sql = "SELECT r.hc, concat(r.apellido, ' ' , r.nombre) as residente, ".
       "concat(ucase(m.medicamento), ' ', pm.presentaci�n, ' ', pm.dosis) as medicaci�n, ".
			 "p.regular, p.d�as, replace(p.horarios, ',', ' - ') as horarios, p.v�a, date_format(p.desde, '%d-%m-%y') as desde, ".       
			 "date_format(p.hasta, '%d-%m-%y') as hasta, p.observaciones, p.prescripto_por FROM residentes as r ".
			 "INNER JOIN prescripciones as p ON r.hc = p.hc INNER JOIN presentaciones_medicamentos as pm ON ".
			 "p.id_presentaci�n_medicamento  =pm.id INNER JOIN medicamentos as m ON m.id = pm.id_medicamento ".
			 "where p.hasta >= curdate() and (isnull(egreso_fecha) or egreso_fecha = '0000-00-00') order by residente, medicaci�n;";

$con = conectar();

if ( ! $query = mysql_query($sql, $con)){
	$texto = mysql_error();
	trigger_error($texto ,E_USER_WARNING);
	header('Location: ../principal.php');
	exit();
}

$retrows=mysql_num_rows($query);

while($row = mysql_fetch_array($query)){
	if ($row['residente'] <> $rte){ // cabecera
		echo "<hr><p><img src='../fotos/" . $row['hc'].".jpg' width='40px' height='40px' >".
				 "&nbsp;<br><b><u>" .$row['residente'] . "</u></b><br><br>\n";
	}

	if (strstr($row['d�as'], 'todos')|| strstr($row['d�as'], $dias[date('w')])) $color = 'red'; else $color = 'blue';

	echo "<span style='position: relative; left: 20'>\n"; // lista medicamentos
	echo "<img src='../images/bullet.gif'>&nbsp;&nbsp;<b><u>";
	echo $row['medicaci�n']    ."</u></b></span><br>\n";
	echo "<span style='position: relative; left: 35'>\n";
	echo "<b>Modo: </b>"          . $row['regular']      ."&nbsp;&nbsp; | &nbsp;&nbsp;\n";
	echo "<b style='color: $color; cursor:pointer' title='Rojo: est� prescripto para el d�a de hoy.\n ";
	echo "Azul: no est� prescripto para el d�a de hoy.'>D�as: </b>". $row['d�as'] ;
	echo "&nbsp;&nbsp; | &nbsp;&nbsp\n";
	echo "<b>Horario: </b>"			  . $row['horarios']     ."&nbsp;&nbsp; | &nbsp;&nbsp\n";
	echo "<b>V�a: </b>"			      . $row['v�a']          ."<br>\n";
	echo "<b>Desde: </b>"			    . $row['desde']        ."&nbsp;&nbsp; | &nbsp;&nbsp\n";
	echo "<b>Hasta: </b>"			    . $row['hasta']        ."<br>\n";
	echo "<b>Observaciones: </b>"	. $row['observaciones']."<br>\n";
	echo "<b>Prescripto por:</b>" . $row['prescripto_por']."</span>&nbsp;<br><br>\n";	
	
	$rte = $row['residente'];
}
?>

<hr>
<div style="text-align: right">
<input type="button" value="Imprimir" onClick="window.print()" style="width:100px">
<input type="button" value="Menu principal" onClick="window.location.replace('../principal.php')">
</div>
</body>
</html>