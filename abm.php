<?php
require_once "const.php";
require_once "fechadmy.php";

///////////////////////////////// algo de fechas //////////////////////////////////////////////////////////

$anio_actual = intval(date('Y'));

if (($anio_actual %4)== 0)
	$ultimo_dia_febrero=29;
else
	$ultimo_dia_febrero=28;
	
$a_ultimo_dia_mes = array(31, $ultimo_dia_febrero,31,30,31,30,31,31,30,31,30,31);
$meses            = array('enero','febrero','marzo','abril','mayo','junio','julio','agosto','setiembre','octubre','noviembre','diciembre');
$dias             = array('domingo','lunes','martes','miércoles','jueves','viernes','sábado');
$dias_cortos      = array('Dom','Lun','Mar','Mie','Jue','Vie','Sab');

if (date('n') == 1) 	$mes_anterior = 12;
else $mes_anterior = date('n') - 1;
	
if (date('n') == 12) $mes_posterior = 1;
else $mes_posterior = date('n') + 1;

$texto_hoy= ucfirst($dias[date('w')]) . ' ' . date('j') . ' de ' .  $meses[date('m')-1]  . ' de ' . date('Y');	
##########################################################################################################

function conectar()
{
	if (! $conn = mysql_connect (SERVER, USR, PWD)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		exit("Error de acceso a datos. Imposible ejecutar la aplicación.");
		return false;
	} 
	
	if (!mysql_select_db(DB, $conn)) {
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		exit("Error de acceso a datos. Imposible ejecutar la aplicación.");
		return false;
	}

	return $conn;
} 
##########################################################################################################

function escribir_archivo($target, $texto)
{
	if ($fp = fopen ($target, "a")) {
		fwrite ($fp, $texto);
	}else {
		$texto = "Error de apertura de archivo $target.";
		trigger_error($texto ,E_USER_WARNING);	
	}
	fclose($fp);
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function usr_chk_pwd($logon, $pwd) 
{
	$sql = "select logon from usuarios where logon='$logon' and pass=password('$pwd') and activo='si' limit 1;";

	if (! $con = conectar()) 
		return false;

	if (!$query = mysql_query($sql, $con)){
		$texto =   mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	 	return false;
	}

	if (mysql_num_rows($query))
		return true;
	
	return false;
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function usr_cambiar_pwd($logon, $new_pwd)
{
	$sql = "Update usuarios set pass = password('$new_pwd')  where logon='$logon' and activo='si';";

	if (! $con = conectar()) return false;

	if (!$query_upd = mysql_query($sql)) {
		$texto =   mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	 	return false;
	}
	return true;
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function usr_nombre_completo($logon)
{
	$sql = "select concat(apellido, ' ', nombre) as nombre from usuarios where logon = '$logon';";

	if (! $con = conectar()) return false;

	if (!$query = mysql_query($sql, $con)){
		$texto =   mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	 	return false;
	} 

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	$row = mysql_fetch_array ($query);
	return $row['nombre'];
}	
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function usr_ultima_sesion($logon)
{
	$sql = "select date_format(fecha, '%d/%m/%y  %H:%i') as fecha " .
	       "from usuarios_sesiones where logon = '$logon' order by fecha desc limit 2;";

	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	while($row = mysql_fetch_array ($query))
		$fecha = $row['fecha']; // no la actual
	
	return $fecha;
}	
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function contar_mensajes_nuevos($logon)
{
	$sql = "select count(para) as total from mensajes where para ='$logon' and leído ='no' and eliminado ='no';";

	if (! $con = conectar()) return false;

	if (!$query = mysql_query($sql, $con)) {
		$texto =   mysql_error();
		trigger_error($texto ,E_USER_WARNING);
	 	return -1;
	}

	if (!$retrows = mysql_num_rows($query)) 
		return 0;

	$row = mysql_fetch_array ($query);
	$total= $row['total'] ;
	
	return $total;
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function medicamento_nombre($id_medicamento)
{
	$sql = "select medicamento from medicamentos where id =$id_medicamento";
	
	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	$row = mysql_fetch_array ($query);
	return $row['medicamento'];
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function medicamento_nombre_completo($id_presentacion) 
{

	$sql = "select concat(ucase(m.medicamento), ' ', pm.presentación, ' ', pm.dosis) as medicamento ".
         "from medicamentos as m inner join presentaciones_medicamentos as pm on m.id = pm.id_medicamento ".
				 "where pm.id =$id_presentacion;";

	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	$row = mysql_fetch_array ($query);
	return $row['medicamento'];
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function medicamento_nombre_comercial($id_medicamento)
{

	$sql = "select nombres_comerciales from medicamentos where id =$id_medicamento";
	
	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	$row = mysql_fetch_array ($query);
	return $row['nombres_comerciales'];
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function residente_nombre_completo($hc)
{

	$sql = "select concat(apellido, ', ', nombre) as nombre from residentes where hc = $hc;";

	if (! $con = conectar()) return false;
	
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

	$row = mysql_fetch_array ($query);
	return $row['nombre'];
}
//	
/********************************************************************************************************
********************************************************************************************************/	
//
function check_prescripcion_actual($hc, $id_medicamento)
{
	$sql = "Select m.id from prescripciones as p inner join presentaciones_medicamentos as pm on ".
		     "p.id_presentación_medicamento = pm.id inner join medicamentos as m on m.id = pm.id_medicamento ".
	       "where m.id=$id_medicamento and p.hc=$hc and hasta > curdate() LIMIT 1;";
				 		
	if (! $con = @conectar()) return false;
	
	if (!$query = mysql_query($sql, $con)) return false;

	if (!$retrows = mysql_num_rows($query)) 
		return false;

		return true;
}
##########################################################################################################
function contar_registros_sesiones()
{
$sql="select count(id) from usuarios_sesiones";

if (! $con = conectar()) return false;
if (!$query = mysql_query($sql, $con)) return false;
$row = mysql_fetch_row($query);
return $row[0];
}
##########################################################################################################
function saldo_cta_cte($hc)
{
	$sql = "select saldo from cuentas_corrientes where hc=$hc order by id desc limit 1;";

	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;
	$row = mysql_fetch_row($query);

	return $row[0];
}
##########################################################################################################
function contar_actividades_hoy()
{
	$sql = "select count(id) from actividades where fecha_actividad=curdate();";

	if (! $con = conectar()) return false;
	if (!$query = mysql_query($sql, $con)) return false;
	$row = mysql_fetch_row($query);

	return $row[0];

}
##########################################################################################################
function backup_db($archivo_bkp)
{
	$opt_mysql_dump = "--user=". USR ." --password=".PWD." -e -F -t -q fenix"; 
	system( "/usr/bin/mysqldump" . " $opt_mysql_dump  >  $archivo_bkp");
	return true;
}
##########################################################################################################
function copia_escribania($archivo_copia)
{
	$opt_mysql_dump = "--user=". USR ." --password=".PWD." -X -F  fenix ".
	                "residentes " .
									"evoluciones " . 
									"prescripciones ".
									"medicamentos";
									"presentaciones_medicamentos ";
									"informes_sociales" . 
									"semestrales_clínica_médica ".
									"semestrales_psiquiatría ".
									"semestrales_trabajo_social ".
									"semestrales_enfermería";
									"semestrales_kinesiología ".
									"semestrales_nutrición ".
									"signos_vitales ". 
									"visitas ".
									"interconsultas ".
									"reportes_enfermería ".
									"familiares" .
									"epicrisis "; 

	system( MYSQL_DUMP . " $opt_mysql_dump  >  $archivo_copia");
	return true;
}
##########################################################################################################
function optimizar_tablas($tabla)
{
	$con = conectar();
	$sql = "optimize table $tabla;";
	if (! mysql_query($sql, $con)) return false;
	return true;
}
?>