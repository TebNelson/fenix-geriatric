<?php
/*
The basic syntax for error_log() is this:
error_log(message, type [,destination])

In that syntax, type has one of four possible values:
0: The message is handled according to the setting of error_log in php.ini.
1: The message is sent by SMTP electronic mail to the address specified by the destination
parameter.
2: The message is referred to a remote debugger.
3: The message is added to the end of the file specified by the destination parameter.

//report only fatal errors
error_reporting(E_USER_ERROR);
//report warnings and fatal errors
error_reporting(E_USER_WARNING | E_USER_ERROR);
*/
/*******************************************************************************/
//report all errors, including notices
require_once "const.php";

error_reporting(E_ALL);
set_error_handler('error_msg');

function error_msg($err_type, $err_msg, $err_file, $err_line)
{
	$fecha = date('d-m-Y H:i');

	if (isset($_COOKIE['logon']))
		$usr = $_COOKIE['logon'];
	else
		$usr='desconocido';
	
	$detail = "$fecha, $usr, $err_type, $err_msg, $err_file, $err_line\n";
	
	@error_log($detail, 3, ARCHIVO_LOG);
	
	@mail('estebang38@yahoo.com.ar', 'Error de sitio', $detail, 'From:error@fenix-server.com.ar');
				
	/*exit ("<p><b>Fecha:</b> 	$fecha 		<br>
				<b>Usr:</b> 					$usr;     <br>
				<b>Tipo de error:</b> $err_type <br>
				<b>Mensaje:</b> 			$err_msg  <br>
				<b>Archivo:</b> 			$err_file <br>
				<b>L�nea:</b>  				$err_line	</p>");*/
}

/*******************************************************************************/


/*set_error_handler
(PHP 4 >= 4.0.1, PHP 5)

set_error_handler --  Establece una funci�n de gesti�n de errores definida por el usuario 
Descripci�n
mixed set_error_handler ( callback gestor_errores [, int tipos_error] )


Establece una funci�n de usuario (gestor_errores) para manejar los errores en un script. 

Esta funci�n puede ser usada para definir su propia forma de gestionar errores en tiempo de ejecuci�n, por ejemplo en aplicaciones en las que necesita efectuar limpieza de datos/archivos cuando ocurre en error cr�tico, o cuando necesita generar un error bajo ciertas condiciones (usando trigger_error()). 

Es importante recordar que el gestor de errores est�ndar de PHP es completamente ignorado. Los par�metros de error_reporting() no tendr�n efecto alguno y su gestor de errores ser� llamado en cualquier circunstancia - sin embargo es posible leer el valor actual de error_reporting y actuar apropiadamente. Es particularmente importante notar que este valor ser� 0 si la sentencia que caus� el error fue precedida por el operador de control de errores @. 

Note tambi�n que es su responsabilidad usar die() si es necesario. Si la funci�n de gesti�n de errores retorna, la ejecuci�n del script continuar� con la siguiente sentencia despu�s de aqu�lla que caus� el error. 

Los siguientes tipos de error no pueden ser gestionados con una funci�n definida por el usuario: E_ERROR, E_PARSE, E_CORE_ERROR, E_CORE_WARNING, E_COMPILE_ERROR, E_COMPILE_WARNING, y la mayor�a de E_STRICT generados en el archivo en donde set_error_handler() es llamado. 

Si ocurren errores antes de que el script es ejecutado (p.ej. cuando se cargan archivos desde una p�gina web) el gestor de errores personalizado no puede ser llamado ya que no est� registrado en ese momento. 

Lista de par�metros


gestor_errores
La funci�n de usuario necesita aceptar dos par�metros: el c�digo de error, y una cadena que describa el error. Luego hay tres par�metros opcionales que pueden entregarse: el nombre del archivo en el que ocurri� el error, el n�mero de l�nea en el que ocurri� el error, y el contexto en el que ocurri� el error (una matriz que apunta a la tabla activa de s�mbolos en el punto en el que ocurri� el error). La funci�n puede mostrarse como: 

gestor ( int num_err, string cadena_err [, string archivo_err [, int linea_err [, array contexto_err]]] )




num_err
El primer par�metro, num_err, contiene el nivel del error generado, como un entero. 

cadena_err
El segundo par�metro, cadena_err, contiene el mensaje de error, como una cadena. 

archivo_err
El tercer par�metro es opcional, archivo_err, el cual contiene el nombre del archivo en el que se gener� el error, como una cadena. 

linea_err
El cuarto par�metro es opcional, linea_err, el cual contiene el n�mero de l�nea en la que se gener� el error, como un entero. 

contexto_err
El quinto par�metro es opcional, contexto_err, el cual es una matriz que apunta a la tabla activa de s�mbolos en el punto en el que ocurri� el error. En otras palabras, contexto_err contendr� una matriz de todas las variables que existieron en el contexto en el que ocurri� el error. 


tipos_error
Puede ser usado para aplicar una m�scara a las llamadas de la funci�n error_handler tal y como el par�metro ini error_reporting controla qu� errores son mostrados. Sin esta m�scara definida, el gestor_errores ser� llamado para cada error sin importar el valor del par�metro error_reporting. 


Valores retornados
Devuelve una cadena que contiene el gestor de errores previamente definido (si lo hay), o FALSE en caso de error. Si el gestor previo era un m�todo de clase, esta funci�n devolver� una matriz indexada con la clase y el nombre del m�todo. 

Registro de cambios


Versi�n Descripci�n 
5.0.0 Se introdujo el par�metro tipos_error.  
4.3.0 En lugar de un nombre de funci�n, tambi�n es posible entregar una matriz que contenga una referencia a objeto y un nombre de m�todo como valor de gestor_errores.  
4.0.2 Se introdujeron tres par�metros opcionales para la funci�n de usuario gestor_errores. Estos son el nombre de archivo, el n�mero de l�nea, y el contexto.  



Ejemplos
Ejemplo 1. Gesti�n de errores con set_error_handler() y trigger_error()

El siguiente ejemplo muestra la gesti�n de excepciones internas generando errores y manej�ndolos con una funci�n definida por el usuario: 

<?php
// definir el nivel de reporte de errores para este script
error_reporting(E_USER_ERROR | E_USER_WARNING | E_USER_NOTICE);

// funcion de gestion de errores
function miGestorErrores($num_err, $cadena_err, $archivo_err, $linea_err)
{
  switch ($num_err) {
  case E_USER_ERROR:
    echo "<b>Mi ERROR</b> [$num_err] $cadena_err<br />\n";
    echo "  Error fatal en la linea $linea_err del archivo $archivo_err";
    echo ", PHP " . PHP_VERSION . " (" . PHP_OS . ")<br />\n";
    echo "Abortando...<br />\n";
    exit(1);
    break;
  case E_USER_WARNING:
    echo "<b>Mi ADVERTENCIA</b> [$num_err] $cadena_err<br />\n";
    break;
  case E_USER_NOTICE:
    echo "<b>Mi NOTICIA</b> [$num_err] $cadena_err<br />\n";
    break;
  default:
    echo "Tipo de error desconocido: [$num_err] $cadena_err<br />\n";
    break;
  }
}

// funcion para probar la gestion de errores
function escalar_por_log($vect, $escala)
{
  if (!is_numeric($escala) || $escala <= 0) {
    trigger_error("log(x) para x <= 0 es indefinido, usted uso: escala = $escala", E_USER_ERROR);
  }

  if (!is_array($vect)) {
    trigger_error("Vector de entrada incorrecto, se esperan valores de matriz", E_USER_WARNING);
    return null;
  }

  for ($i=0; $i<count($vect); $i++) {
    if (!is_numeric($vect[$i]))
      trigger_error("El valor en la posicion $i no es un numero, se usa 0 (cero)", E_USER_NOTICE);
      $temp[$i] = log($escala) * $vect[$i];
    }
    return $temp;
  }

// establecer el gestor de errores definido
$gestor_errores_anterior = set_error_handler("miGestorErrores");

// generar algunos errores, primero definir una matriz mezclada con un item no-numerico
echo "vector a\n";
$a = array(2,3, "foo", 5.5, 43.3, 21.11);
print_r($a);

// ahora generar una segunda matriz, generando una advertencia
echo "----\nvector b - a advertencia (b = log(PI) * a)\n";
$b = escalar_por_log($a, M_PI);
print_r($b);

// esto es un problema, pasamos una cadena en lugar de una matriz
echo "----\nvector c - un error\n";
$c = escalar_por_log("no es matriz", 2.3);
var_dump($c);

// este es un error critico, log de cero o un numero negativo es indefinido
echo "----\nvector d - error fatal\n";
$d = escalar_por_log($a, -2.5);

?>
 

El resultado del ejemplo seria algo similar a:

vector a
Array
(
    [0] => 2
    [1] => 3
    [2] => foo
    [3] => 5.5
    [4] => 43.3
    [5] => 21.11
)
----
vector b - a advertencia (b = log(PI) * a)
<b>Mi NOTICIA</b> [1024] El valor en la posicion 2 no es un numero, se usa 0 (cero)<br />
Array
(
    [0] => 2.2894597717
    [1] => 3.43418965755
    [2] => 0
    [3] => 6.29601437217
    [4] => 49.5668040573
    [5] => 24.1652478903
)
----
vector c - un error
<b>Mi ADVERTENCIA</b> [512] Vector de entrada incorrecto, se esperan valores de matriz<br />
NULL
----
vector d - error fatal
<b>Mi ERROR</b> [256] log(x) para x <= 0 es indefinido, usted uso: escala = -2.5<br />
  Error fatal en la linea 32 del archivo generar_error.php, PHP 5.0.4 (Linux)<br />
Abortando...<br />
 
Ver tambi�n

error_reporting() 
restore_error_handler() 
trigger_error() 
constantes de nivel de error 
information about the callback type 
*/
?>