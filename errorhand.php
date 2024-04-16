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
				<b>Línea:</b>  				$err_line	</p>");*/
}

/*******************************************************************************/


/*set_error_handler
(PHP 4 >= 4.0.1, PHP 5)

set_error_handler --  Establece una función de gestión de errores definida por el usuario 
Descripción
mixed set_error_handler ( callback gestor_errores [, int tipos_error] )


Establece una función de usuario (gestor_errores) para manejar los errores en un script. 

Esta función puede ser usada para definir su propia forma de gestionar errores en tiempo de ejecución, por ejemplo en aplicaciones en las que necesita efectuar limpieza de datos/archivos cuando ocurre en error crítico, o cuando necesita generar un error bajo ciertas condiciones (usando trigger_error()). 

Es importante recordar que el gestor de errores estándar de PHP es completamente ignorado. Los parámetros de error_reporting() no tendrán efecto alguno y su gestor de errores será llamado en cualquier circunstancia - sin embargo es posible leer el valor actual de error_reporting y actuar apropiadamente. Es particularmente importante notar que este valor será 0 si la sentencia que causó el error fue precedida por el operador de control de errores @. 

Note también que es su responsabilidad usar die() si es necesario. Si la función de gestión de errores retorna, la ejecución del script continuará con la siguiente sentencia después de aquélla que causó el error. 

Los siguientes tipos de error no pueden ser gestionados con una función definida por el usuario: E_ERROR, E_PARSE, E_CORE_ERROR, E_CORE_WARNING, E_COMPILE_ERROR, E_COMPILE_WARNING, y la mayoría de E_STRICT generados en el archivo en donde set_error_handler() es llamado. 

Si ocurren errores antes de que el script es ejecutado (p.ej. cuando se cargan archivos desde una página web) el gestor de errores personalizado no puede ser llamado ya que no está registrado en ese momento. 

Lista de parámetros


gestor_errores
La función de usuario necesita aceptar dos parámetros: el código de error, y una cadena que describa el error. Luego hay tres parámetros opcionales que pueden entregarse: el nombre del archivo en el que ocurrió el error, el número de línea en el que ocurrió el error, y el contexto en el que ocurrió el error (una matriz que apunta a la tabla activa de símbolos en el punto en el que ocurrió el error). La función puede mostrarse como: 

gestor ( int num_err, string cadena_err [, string archivo_err [, int linea_err [, array contexto_err]]] )




num_err
El primer parámetro, num_err, contiene el nivel del error generado, como un entero. 

cadena_err
El segundo parámetro, cadena_err, contiene el mensaje de error, como una cadena. 

archivo_err
El tercer parámetro es opcional, archivo_err, el cual contiene el nombre del archivo en el que se generó el error, como una cadena. 

linea_err
El cuarto parámetro es opcional, linea_err, el cual contiene el número de línea en la que se generó el error, como un entero. 

contexto_err
El quinto parámetro es opcional, contexto_err, el cual es una matriz que apunta a la tabla activa de símbolos en el punto en el que ocurrió el error. En otras palabras, contexto_err contendrá una matriz de todas las variables que existieron en el contexto en el que ocurrió el error. 


tipos_error
Puede ser usado para aplicar una máscara a las llamadas de la función error_handler tal y como el parámetro ini error_reporting controla qué errores son mostrados. Sin esta máscara definida, el gestor_errores será llamado para cada error sin importar el valor del parámetro error_reporting. 


Valores retornados
Devuelve una cadena que contiene el gestor de errores previamente definido (si lo hay), o FALSE en caso de error. Si el gestor previo era un método de clase, esta función devolverá una matriz indexada con la clase y el nombre del método. 

Registro de cambios


Versión Descripción 
5.0.0 Se introdujo el parámetro tipos_error.  
4.3.0 En lugar de un nombre de función, también es posible entregar una matriz que contenga una referencia a objeto y un nombre de método como valor de gestor_errores.  
4.0.2 Se introdujeron tres parámetros opcionales para la función de usuario gestor_errores. Estos son el nombre de archivo, el número de línea, y el contexto.  



Ejemplos
Ejemplo 1. Gestión de errores con set_error_handler() y trigger_error()

El siguiente ejemplo muestra la gestión de excepciones internas generando errores y manejándolos con una función definida por el usuario: 

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
 
Ver también

error_reporting() 
restore_error_handler() 
trigger_error() 
constantes de nivel de error 
information about the callback type 
*/
?>