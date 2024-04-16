<?php
require_once ("abm.php");
require_once ("fechadmy.php");
require_once ("makefield.php");
require_once ("isdate.php");
require_once ("makeclientvalidate.php");
require_once ("selectfromnum.php");
require_once ("Insert.php"); // insertar registro
#
function getFormIns($tabla, $location_replace='')
{
	reset ($_POST);
	$html = "";
	$clientval = "";//str de validacion de cliente
	$rl = "<br>\n";
	$destino = ucfirst( str_replace ('_', ' ' , $tabla));
	$actionForm = $_SERVER["SCRIPT_NAME"];
	$titulo = str_replace ("_", "&nbsp;", "Nuevo registro $destino");
	$post   = count($_POST); // datos formulario
#
	if ($post > 2){
		if ($lastid = insertForm ($_POST, $tabla)){ #id del registro insertado.
			return $lastid;
		} else {
			$texto =   mysql_error();
			trigger_error($texto ,E_USER_WARNING);
			return false;
		}
	}
##################################################################################

	if (!$conn   = mysql_connect(SERVER, USR, PWD)){
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		return false;
	}
	
	if (!$fields = mysql_list_fields(DB, $tabla))  {
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		return false;
	}
#	
	$numFields = mysql_num_fields($fields);
#
	$html .= "<form method='post' action='$actionForm' name='wf' onsubmit='return vf();'>\n";
	$html .= "<table width='93%' cellspacing='1' cellpadding='2' align='center'>\n";
	$html .= "<tr><th colspan=2>";
	$html .= "<img src='imagenes/cuad_ver.gif' width='8' height='8' hspace='3'>$titulo</th></tr>\n";
#
	$clientval  = "\n\n<script language='javascript'>\n";
	$clientval .=  "function vf(){\n";
#
	for ($i = 0; $i < $numFields; $i++){ // por cada campo de la tabla
		$val=''; $ro=0;		
		$type    = mysql_field_type($fields, $i); // tipo de campo
		$flags   = mysql_field_flags($fields, $i);//  metadatos
		$len     = mysql_field_len  ($fields, $i);// longitud del campo
		$key     = mysql_field_name ($fields,$i); // nombre del campo		
		$notNull = ereg("not_null",$flags);       // allow null
		$enum    = ereg("enum",$flags);           // is_enum			
#
		if ($notNull == 1) $nul = " *"; else  $nul = '';
		
		switch ($key){ # explicación sobre la naturaleza del campo en el formulario de inserción
			case 'logon'  : $expl_campo = "(nombre de usuario: mínimo 6 caracteres sin espacios en blanco)\n"; break;
			case 'pass'   : $expl_campo = "(contraseña: mínimo 6 caracteres sin espacios en blanco)\n"; break;
			case 'activo' : $expl_campo = "(si: permitir o no: denegar el acceso del usuario al sistema)\n"; break;
			case 'minutos_timeout' : $expl_campo = "(tiempo permitido de inactiviadad antes que caduque la sesión del usuario.)\n"; break;
			case 'acceso_remoto'   : $expl_campo = "(permitir o no al usuario ingresar desde Internet si existe una conexión externa.)\n"; break;
			default       : $expl_campo = ''; break;
		}

# 
		if (ereg("auto_increment",$flags)) continue;
		if ($key == 'Cancelada') continue;
		if ($key == 'egreso_fecha' && $tabla == 'residentes') continue;
		
		if ($key=='prescripto por' || $key == "profesional_actuante" ||
		    $key=='médico_actuante' || $key=='registrado_por' || $key == "enfermero_actuante" || $key == "médico_psiquiatra")	{
			$val=usr_nombre_completo($_COOKIE['logon']); 
			$ro=1; 
		} else {
			$ro=0;
		}	

		if ($key == "hc")	{
			$val= $_COOKIE['hc']; 
			$ro=1; 
		}
		
		if ($key== 'fecha')	{
			$val= date('Y-m-d'); 
			$ro=1; 
		}

		if ($key == 'fecha' && $tabla == 'reportes_enfermería' && date('H') < 8){
			$val = date('Y-m-d', time() - 86400);
			$ro = 1; 
		}

		if ( $tabla == 'prescripciones_canceladas' &&  $key== 'id_prescripción')	{
			if (isset($_COOKIE['id_prescripcion']) && !isset($_POST['id']))
				$val = $_COOKIE['id_prescripcion'];
			else
				$val= $_POST['id']; 
			$ro=1; 
		}		
#		
		$html .= "<tr><th  align='right'>&nbsp; " 
				 . str_replace ("_", "&nbsp;", $key) . ' ' . $nul .":</th>\n"
				 . "<td>";
					 
#
		if (strstr($actionForm, 'agendarnuevaentrega.php') && $key == 'Servicio') 
			$html .= "<input type='text' name='Servicio' value='Entregar' readonly>"; 
		
		elseif ($enum){
			//global $tabla; 
			if (strstr($actionForm, 'altas.php') && $tabla =='evoluciones' && $key == 'área'){
				if (isset($_COOKIE['usr_area']) && $_COOKIE['usr_area'] == "Dirección"){
					$val = "Clínica Médica";
				} else {
				$val = $_COOKIE['usr_area'];
				}
				$ro = 1;
				$html .= makeField ($key, $val, $len, $type, $ro);
			}else{ 
				$html .= select_from_num($tabla, $key, $val);
			}		
		}/*elseif ($type == 'date' and $key != 'fecha' && $key != 'fecha_nacimiento' && $key != 'egreso_fecha') {
			if ($tabla == 'epicrisis') 
				$html .= html_select_dias ($key, 20, "", 1);
			else
				$html .= html_select_dias ($key, 20, "", 0);	
		}*/
			
		elseif ($type == 'time') 
			$html .= html_select_hora($key, '6', '22', '');
		else 
			$html .= makeField ($key, $val, $len, $type, $ro);
		
		$html .= "$expl_campo</td></tr>\n";
#		
//  validacion de cliente
		$campo = "document.wf.$key"; //nombre del campo del lado cliente (form.campo)
		$valorcampo="document.wf.$key.value"; //idem - valor del campo
		$clientval .=  make_client_validate($type, $campo, $valorcampo, $key, $notNull, $enum, $len);
	} // end for por cada campo de tabla.
#
	$clientval .=  "}\n</script>\n\n"; // end validacion cliente.
#
	$html .= "<tr align='center'><td>&nbsp;</td><td>"
	  		."<input type='submit' value='Agregar registro'>"
				."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
				."<input type='button' value='Salir' style='width:60'  onClick=\"window.location.replace('$location_replace')\">"
				."</td></tr>"
	  		."</table></form>\n";
#
	echo $html . $clientval;
	return true;
}
?>