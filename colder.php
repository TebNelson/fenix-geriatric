<? 
$onmouseover = "onMouseOver=\"this.bgColor='#fefeee'\" onMouseout=\"this.bgColor='eeeeee'\"";
$actividades_hoy = contar_actividades_hoy();
?>
<table width="100%" height='100%'>
<tr>
<th><img src="images/addressGo.gif" width="16" height="16" align="absmiddle">&nbsp;Residentes
<tr>
<td <?=$onmouseover?>>
<img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/listadoresidentes.php')" 
title="Listado total de residentes en orden alfabético">Reporte residentes</span>
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/habitaciones.php')" 
title='Muestra un croquis de la residencia con el listado de residentes por cada habitación.'>Habitaciones</span>
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/rtes-pami.php')" 
title="Agrupa los residentes por obras sociales.">Pacientes obras sociales</span>
<tr>
<!--<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/ingresos.php')" 
title="Lista los pacientes ingresados y egresados de la institución en los últimos 6 meses.">Ingresos y derivaciones</span>-->
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('ctas-ctes/ctas-ctes.php')" 
title="Ingresa al menu de administración de débitos y créditos de residentes.">Cuentas corrientes</span>
<tr>
<th><img src="images/addressGo.gif" width="16" height="16" align="absmiddle">&nbsp;Profesionales
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/aevol.php')" 
title="Lista los pacientes que no han recibido evolución en los últimos treinta días para el área del usuario actual.">
Residentes a evolucionar</span>	
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/reportesemestrales.php')" 
title="Lista la fecha de realización del último exámen semestral por cada residente actual, o en blanco si no se le ha realizado aún.">Control de semestrales</span>
<tr>
<td <?=$onmouseover?> height="15px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('actividades/cronograma.php')" 
title="Lista las actividades pendientes de realización">Cronograma actividades</span>
<? if ($actividades_hoy)
echo "<span style='cursor:pointer; color:#CC3366'>($actividades_hoy)</span>";
?>
<tr>
<th><img src="images/addressGo.gif" width="16" height="16" align="absmiddle">&nbsp;Enfermería
<tr>
<td  <?=$onmouseover?> height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('reportenf.php')" 
title="Ingresa al menu de consulta y registro de reportes diarios de enfermería">Reporte Enfermería</span>
<tr>
<td <?=$onmouseover?>  height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('consultas/infpres.php')" 
title="Presenta un listado de todas las prescripciones actuales por cada paciente.">Prescripciones</span>
<tr>
<th><img src="images/addressGo.gif" width="16" height="16" align="absmiddle">&nbsp;Farmacia
<tr>
<td <?=$onmouseover?> ><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('medicacion/medicamentos.php')" 
title="Módulo de administración de farmacia y listado de medicamentos disponibles.">Vademécum</span>
<tr>
<td <?=$onmouseover?>><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('medicacion/demanda.php')" 
title="Lista la cantidad total de unidades por cada medicamento prescripto actualmente por semana.">Consumo semanal</span>
</tr>
<tr>
<th><img src="images/addressGo.gif" width="16" height="16" align="absmiddle">&nbsp;Usuarios
<tr>
<td <?=$onmouseover?> height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('usr-pwd.php')" title="Ingresa al módulo de cambio de contraseña del usuario actual. Se recomienda cambiarla la menos una vez al mes.">Cambiar contraseña</span>
<tr>
<td <?=$onmouseover?> height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('usr-add.php')" title="Permite registrar nuevos usuarios del sistema.">Agregar usuarios</span>
<tr>
<td <?=$onmouseover?> height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('usr-list.php')" title="Menú de edición de datos de usuarios actuales.">Editar datos de usuarios</span>
<tr>
<td <?=$onmouseover?> height="17px"><img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span style='cursor:pointer' onClick="window.location.replace('usr-audit.php')" title="Presenta un informe detallda de las acciones de todos los usuarios del sistema por cada sesión de trabajo.">Auditor&iacute;a	usuarios</span>  
<tr>
<td <?=$onmouseover?> height="17px" style="cursor:pointer">
<img src="images/bullet.gif" width="7" height="7" align="baseline">&nbsp;
<span onClick="window.location.replace('bkps/hacer-bkp.php')" title="Ingresa al módulo de respaldo de datos y copia de legalización de escribanía."> Respaldo de datos</span></td>
</table>