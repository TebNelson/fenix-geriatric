<?php
function html_select_dias ($name_select, $cantidad_dias, $fecha_actual, $pasado = '')
{
	$html  = "<select name='". $name_select ."'>\n";
	$html .= "<option value=''>&nbsp;</option>\n";

	$desde = date('d-m-Y', time() - (86400 * $cantidad_dias)); 
	$timestmdesde = date_to_timestamp ($desde);

	if ($pasado) {

		$contardesde = $timestmdesde;

		for ($i = $cantidad_dias; $i > 0; $i--){
			$fecha = date('d-m-Y', $contardesde + (86400 * $i));
			$fecha = strval($fecha);
			$fecha_actual =strval($fecha_actual);

			if (isset($fecha_actual))	if ($fecha_actual == $fecha ) $selected = 'selected'; else $selected = '';

			$html .= "<option $selected value='" . $fecha . "'>" . $fecha . "</option>\n";
		}

	} else {

		$contardesde = time(); 

		for ($i=0; $i < (($cantidad_dias + 1)); $i++){
			$fecha = date('d-m-Y', $contardesde + (86400 * $i));
			$fecha = strval($fecha);
			$fecha_actual =strval($fecha_actual);
			if (isset($fecha_actual))	if ($fecha_actual == $fecha ) $selected = 'selected'; else $selected = '';
			$html .= "<option $selected value='" . $fecha . "'>" . $fecha . "</option>\n";
		}
	}
	
	$html .= "</select>\n";
	return $html;
}
########################################################################################################

function html_select_hora($name_select, $hora_desde, $hora_hasta, $hora_actual)
{
	$html_sel  = "<select name='". $name_select ."' style='width:75; text-align:right'>\n";
	$html_sel .= "<option value=''>&nbsp;</option>\n";

	for ($i=$hora_desde; $i < ($hora_hasta + 1); $i++){
		if ($i < 10) $hora = '0' .$i; else $hora=$i;
		$hora_completa00 = $hora . ":00:00";
		$hora_completa30 = $hora . ":30:00";
		if (isset($hora_actual))	if ($hora_actual == $hora_completa00 ) $selected = 'selected'; else $selected = '';
		$html_sel .= "<option $selected value='" . $hora . ":00:00'>" . $hora . ":00:00</option>\n";
		if (isset($hora_actual))	if ($hora_actual == $hora_completa30 ) $selected = 'selected'; else $selected = '';
		$html_sel .= "<option $selected value='" . $hora . ":30:00'>" . $hora . ":30:00</option>\n";
	}

	$html_sel .= "</select>\n";

	return $html_sel;
}
########################################################################################################

function date_to_timestamp ($date)
{
	$dia  = intval (substr ($date, 0,strpos($date,'-')));  
	$mes  = intval (substr ($date, strpos($date,'-') +1, 2));
	$anio = intval (substr ($date, strpos($date,'-',3) + 1, 4));
	
	if (checkdate($mes, $dia, $anio))
		return $timestmdesde = mktime (0,0,0,$mes, $dia, $anio);
	else
		return 0;
}
?>