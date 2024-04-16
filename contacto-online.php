<?php
if (isset($_POST['nombre'])){
	$texto = $_POST['consulta'] . "\nEmpresa: " . $_POST['empresa']. "\nTeléfono: " . $_POST['telefono'];
	@mail('consultas@fenix-server.com.ar', 'consulta online', $texto, 'From: ' . $_POST['email']);
	header("Location: index.php");
	exit;
}
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>FENIX-SERVER ::: Contacto  :::</title>

<script language="javascript">
function vf_consulta()
{
var val = document.frm_consulta.nombre.value;
val = val.replace(/^\s*|\s*$/g,"");
if (val=="" || val.length < 5) 	return false;
var val = document.frm_consulta.empresa.value;
val = val.replace(/^\s*|\s*$/g,"");
if (val=="" || val.length < 5) return false;
var val = document.frm_consulta.email.value;
val = val.replace(/^\s*|\s*$/g,"");
if (val=="" || val.length < 10) return false;
var val = document.frm_consulta.telefono.value;
val = val.replace(/^\s*|\s*$/g,"");
if (val=="" || val.length < 5) return false;
var val = document.frm_consulta.consulta.value;
val = val.replace(/^\s*|\s*$/g,"");
if (val=="" || val.length < 15) return false;
if (val.length > 5000) return false;
alert("Su consulta está siendo registrada.\nLe contestaremos a la brevedad.\nGracias por su interés en FENIX-SERVER");
return true;
}
</script>

</head>

<body oncontextmenu="return false" bgcolor="#efefe1" style="margin-left:0px; margin-top:0; margin-right:0; margin-bottom: 20 px">

<div style="widt: 100%; background-color: #752121">
	<img src="../images/logo-internet.png" width="467" height="78"  style="position:relative; left:35 px ">
</div>
<form action="" method="post" name="frm_consulta" onSubmit="return vf_consulta()">
<table width="449" border="0" align="center">
	<tr>
		<th width="104" scope="col">Nombre:</th>
		<td width="335" scope="col">
			<input type="text" name="nombre" size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">Residencia o instituci&oacute;n:</th>
		<td>
			<input type="text" name="empresa"  size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">Email:</th>
		<td>
			<input type="text" name="email"  size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">Tel&eacute;fono:</th>
		<td>
			<input type="text" name="telefono" size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">Consulta:</th>
		<td>
			<textarea name="consulta" cols="60" rows="8"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center ">
		<input name="" type="submit" value="Enviar consulta">
		<input type="button" value="Salir" onClick="window.location.replace('index.php')" style="width:80px" >
		</td>
	</tr>

</table>
</form>
</body>
</html>