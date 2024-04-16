<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<title><?=TITULO?></title>
<style>a:hover{ font-weight:600}</style>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style="margin:0px;">
<div style="position: relative; top:0; left:0; right:0; width:100%; height:20 px; background-color: #999999;text-align:center;">
<h2 style='color:#ffffff;'>Temas de ayuda</h2>
</div>

<div style="margin:7px">
<h3><a href="derecha.php#hmsu"  target="mainFrame">Historia m&eacute;dica social &uacute;nica:</a></h3>
<ul>
<li><a href="derecha.php#adres" target="mainFrame">Agregar nuevo residente: datos
		personales, fotograf&iacute;a</a></li>
  <li><a href="derecha.php#infsoc" target="mainFrame">Informes sociales</a></li>
  <li><a href="derecha.php#df"     target="mainFrame">Datos de familiares, responsables y apoderados</a></li>
  <li><a href="derecha.php#evol"   target="mainFrame">Evoluciones</a></li>
  <li><a href="derecha.php#esem"   target="mainFrame">Exámenes semestrales</a></li>
  <li><a href="derecha.php#prc"    target="mainFrame">Prescripciones</a></li>
  <li><a href="derecha.php#sv"     target="mainFrame">Signos vitales</a></li>
  <li><a href="derecha.php#pae"    target="mainFrame">Plan de acci&oacute;n de enfermer&iacute;a</a></li>
  <li><a href="derecha.php#ic"     target="mainFrame">Interconsultas</a></li>
  <li><a href="derecha.php#vst"    target="mainFrame">Visitas</a></li>
  <li><a href="derecha.php#ec"     target="mainFrame">Epicrisis</a></li>
</ul>
<h3><a href="derecha.php#au" target="mainFrame">Administraci&oacute;n de  usuarios:</a></h3>
<ul>
<li><a href="derecha.php#to" target="mainFrame">Timeout de inactividad</a></li>
  <li><a href="derecha.php#up" target="mainFrame">&Aacute;reas de usuarios y permisos</a></li>
  <li><a href="derecha.php#cc" target="mainFrame">Cambiar contrase&ntilde;as</a></li>
  <li><a href="derecha.php#nu" target="mainFrame">Agregar nuevo usuario</a></li>
  <li><a href="derecha.php#edus" target="mainFrame">Editar, permitir acceso remoto,
  		modificar timeout de inactividad</a></li>
  <li><a href="derecha.php#audus" target="mainFrame">Auditoria de actividad
  		de usuarios</a></li>
  <li><a href="derecha.php#ds" target="mainFrame">Detalle de sesiones y actividades</a></li>
  <li><a href="derecha.php#desact" target="mainFrame">Desactivar usuarios</a></li>
</ul>
<h3><a href="derecha.php#aler" target="mainFrame">Alertas de pantalla inicial:</a></h3>
<ul>
<li><a href="derecha.php#48" target="mainFrame">Prescripciones de las &uacute;ltimas
48 horas</a></li>
  <li><a href="derecha.php#aic" target="mainFrame">Interconsultas del d&iacute;a</a></li>
  <li><a href="derecha.php#cron" target="mainFrame">Cronograma de actividades diarias</a></li>
  <li><a href="derecha.php#mn" target="mainFrame">Mensajes nuevos</a></li>
</ul>
<h3><a href="derecha.php#mi" target="mainFrame">Mensajer&iacute;a interna:</a></h3>
<ul>
<li><a href="derecha.php#act" target="mainFrame">Actualizar lista de mensajes recibidos</a></li>
  <li><a href="derecha.php#leer" target="mainFrame">Leer mensajes</a></li>
  <li><a href="derecha.php#esc" target="mainFrame">Redactar y enviar mensajes</a></li>
  <li><a href="derecha.php#elim" target="mainFrame">Eliminar mensajes</a></li>
  <li><a href="derecha.php#melim" target="mainFrame">Ver mensajes eliminados</a></li>
</ul>
<h3><a href="derecha.php#infores" target="mainFrame">Informes de residentes:</a></h3>
<ul>
<li><a href="derecha.php#ract" target="mainFrame">Listado de residentes actuales</a></li>
  <li><a href="derecha.php#ie" target="mainFrame">Listado de ingresos y egresos del
semestre</a></li>
  <li><a href="derecha.php#plano" target="mainFrame">Plano de distribuci&oacute;n
de habitaciones</a></li>
  <li><a href="derecha.php#os" target="mainFrame">Listado de residentes por obra
social</a></li>
</ul>
<h3><a href="derecha.php#if" target="mainFrame">Informes de profesionales:</a></h3>
<ul>
<li><a href="derecha.php#aevol" target="mainFrame">Listado de residentes sin evolucionar en los &uacute;ltimos 30 d&iacute;as por &aacute;rea</a></li>
  <li><a href="derecha.php#cumpes" target="mainFrame">Informe de cumplimiento de
  		Ex&aacute;menes Semestrales por &Aacute;reas</a></li>
  <li><a href="derecha.php#cad" target="mainFrame">Cronograma de actividades diarias</a></li>
</ul>
<h3><a href="derecha.php#accenf" target="mainFrame">Acciones de enfermer&iacute;a:</a></h3>
<ul>
<li><a href="derecha.php#renf" target="mainFrame">Consultar reportes diarios de enfermer&iacute;a
por turno</a></li>
  <li><a href="derecha.php#redenf" target="mainFrame">Redactar reporte diario de enfermer&iacute;a</a></li>
  <li><a href="derecha.php#prs" target="mainFrame">Consultar listado de prescripciones</a> </li>
</ul>
<h3><a href="derecha.php#fmc" target="mainFrame">Farmacia:</a></h3>
<ul>
<li><a href="derecha.php#vdm" target="mainFrame">Vadem&eacute;cum: agregar y editar lista de drogas disponibles para prescripci&oacute;n</a></li>
  <li><a href="derecha.php#dsem" target="mainFrame">Lista demanda de medicaci&oacute;n
semanal</a></li>
</ul>
<h3><a href="derecha.php#ccr" target="mainFrame">Cuentas corrientes de residentes:</a></h3>
<ul>
<li><a href="derecha.php#cec" target="mainFrame">Consultar estado de cuenta de residentes</a></li>
  <li><a href="derecha.php#adeb" target="mainFrame">Agregar d&eacute;bitos y cr&eacute;ditos</a></li>
  <li><a href="derecha.php#acdc" target="mainFrame">Agregar conceptos de d&eacute;bitos y cr&eacute;ditos</a></li>
  <li><a href="derecha.php#slds" target="mainFrame">Listado de saldos</a></li>
</ul>
<h3><a href="derecha.php#rsd" target="mainFrame">Respaldo de datos: </a></h3>
<ul>
	<li>		<a href="derecha.php#rsd" target="mainFrame">Respaldo de datos</a></li>
  <li><a href="derecha.php#rsd" target="mainFrame">Copia de escriban&iacute;a</a> </li>
</ul>
<h3><a href="derecha.php#close" target="mainFrame">Cerrar sesi&oacute;n de usuario</a></h3>
</div>
</body>
</html>