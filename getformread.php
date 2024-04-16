<?php
@require_once ("const.php");
@require_once ("makefield.php");
#
function getFormRead($cmdText, $titulo){
	$html = ""; 
#	
	if (! $con = @conectar()) return false;

	if (!$query = mysql_query($cmdText, $con)) {
		$texto = mysql_error();
		trigger_error($texto ,E_USER_WARNING);
		return false;
	}

	if (!$retrows = mysql_num_rows($query)){ 
			//echo '<p>No hay resultado para su consulta.</p>';
			return 2;
	}

	$retFields=mysql_num_fields($query);

###################################################################################################

	$row = mysql_fetch_array($query, MYSQL_ASSOC);
	$html .= "<table width='100%' border='0' cellspacing='1' cellpadding='2'>\n";
	$html .= "<tr><th colspan=2 class='titular_tabla'>$titulo</th></tr>\n";
	$x=0;
#	
	if (!is_array($row)) return false; 
#	
	While (list($key, $val) = each ($row)){
		$type  = mysql_field_type($query, $x);//tipo de campo
		$len   = mysql_field_len($query, $x); //longitud del campo
		$key   = trim($key); 
		$val   = trim($val); //nombre y valor del campo
		$html .=  "<tr>";
		$html .=  "<th class='titular_col_vert'>" . str_replace ("_", "&nbsp;", $key). ": &nbsp;</th>\n";
		$html .=  "<td class='cc_02'>" .makeField ($key, $val, $len, $type, 1) ."</td>\n";
		$html .=  "</tr>\n";
		$x++;
	}

	$html .= "<tr><th colspan='2'>&nbsp;</th></tr>\n";
	$html .= "</table>\n";

	echo $html;

	return true;
}
?>