<?php
function fechadmy ($fecha) {//mysql a html
	if (strlen($fecha) != 10) return 0;
	$newdate = substr($fecha,8, 2) . "-" . substr($fecha,5,2) . "-" . substr($fecha,0,4);
	return $newdate;
}
#
function fechaymd ($fecha) {//html a mysql
	if (strlen($fecha) != 10) return 0;
	$newdate = substr($fecha,6, 4) . "-" . substr($fecha,3,2) . "-" . substr($fecha,0,2);
	return $newdate;
}
?>