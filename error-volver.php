<?
function error_volver($src_estilos, $src_js, $mensaje_error, $volver_a, $to)
{
include_once "const.php";
$img = $_SERVER["DOCUMENT_ROOT"] . "/images/warning.gif";

$err_pg = <<<EOT
<html>
<head>
<link rel='stylesheet' type='text/css' href='$src_estilos'>
<script language='JavaScript' src='$src_js'></script>
<script language='javascript'>
function volver()
{
	window.location.replace('$volver_a');	
}
function sto_volver()
{
	window.setTimeout(volver, $to);
}
sto_volver()
</script>
<title>Error de acceso</title>
</head>
<body oncontextmenu='return false' bgcolor='eeeeee' style="margin:90px">
<p style="color:#CC3333">$mensaje_error</p>
</body>
</html>
EOT;
echo $err_pg;
}
?>