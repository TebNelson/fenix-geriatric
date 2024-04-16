<?
if (!isset($_COOKIE['intento'])){
	exit("Error de acceso.");
}
?>
<html>
<head>
<link rel='stylesheet' type='text/css' href='estilos/estilos.css'>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
</head>
<body style='margin-top:150 px; margin-left:150 px;' oncontextmenu='return false' bgcolor='#efefe1'>
<p style='color:#cc3333'>
	Se superó el límite de intentos de acceso Compruebe sus credenciales y vuelva a intentarlo.</p>
	<input type='button' value='Cerrar' onclick='window.close()'>
</body>
</html>
