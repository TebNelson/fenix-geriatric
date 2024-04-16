<?php
/*
array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
foreach (range(0, 12) as $numero) {
    echo $numero;
}

// El parametro paso fue introducido en 5.0.0
array(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)


foreach (range(0, 100, 10) as $numero) {
    echo $numero;
}


// Uso de secuencias de caracteres introducidas en 4.1.0
 array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i');
foreach (range('a', 'i') as $letra) {
    echo "<br>$letra";
}
array('c', 'b', 'a');
foreach (range('c', 'a') as $letra) {
    echo $letra;
}
$vals = array (1,2,3,4);
foreach ($vals as $letra) {
    echo $letra;
}


$sql = "select residencias_estado.*, residencias.cp from residencias, residencias_estado where residencias.id = residencias_estado.id_residencia and (cp > 1400 and cp < 1426) and (residencias_estado.fecha = '0000-00-00' ) order by residencias.id";

$con = mysql_connect ("localhost", "esteban", "123456");
mysql_select_db("ventas");
$query = mysql_query($sql, $con);

while ($row = mysql_fetch_array($query)){
	$sql_upd = "update residencias_estado set fecha = '2006-04-05' where id_residencia = ". $row['id_residencia'];
	mysql_query($sql_upd, $con);
	echo mysql_affected_rows() . "<br>";
}
*/
?>
