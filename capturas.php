<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Captura de pantalla - Fenix-Server®</title>
</head>
<body style="margin:0,0,0,0" oncontextmenu="return false">
<?
if (isset($_GET['img'])){
	if ($_GET['img'] =="princ"){
		echo "<img src='images/captura-principal.jpg'>";
	}
	if ($_GET['img'] =="hmsu"){
		echo "<img src='images/captura-hmsu.jpg'>";
	}
}

?>
</body>
</html>
