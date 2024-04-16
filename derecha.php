<?php
ini_set('include_path', $_SERVER['DOCUMENT_ROOT'] . '/inc');
require_once "errorhand.php";
require_once "control_login.php";
?>
<html>
<head>
<title><?=TITULO?></title>
<script language='javascript'>if (history.forward(1)){location.replace(history.forward(1));}</script>
<script language='javascript' src="../js/sto.js"></script>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
<style>a{color: #666666; text-decoration:underline}</style>
</head>
<body oncontextmenu='return false' onload="sto_sub(<? echo $_COOKIE['timeout']?>);" bgcolor="#eeeeee" style='margin:10px; text-align:justify'>
<div style="position:absolute; right:15px">
<input type="button" value=" Cerrar ayuda " onClick="window.parent.close()">
</div>
<h2><a name="hmsu"><i>Historia médica social única de pacientes</i></a></h2>
<blockquote>
<p>Para ingresar al men&uacute; de Historias Sociales &Uacute;nicas seleccione un residente
o paciente egresado en los cuadros de selecci&oacute;n ubicados en la columna izquierda
de la p&aacute;gina principal, haciendo doble clic o presionando el bot&oacute;n &quot;Ver datos&quot;.
Si elige un residente actual encontrar&aacute; habilitadas las funciones de inserci&oacute;n
de datos de acuerdo a los permisos del &aacute;rea en la que se encuentre registrado
como usuario. Si elige un paciente egresado entrar&aacute; en modo de consulta solamente.</p>
<p>Los datos disponibles, o bien los que se ir&aacute;n agregando en los registros que se
detallan a continuaci&oacute;n, podr&aacute;n ser en algunas ocasiones editados: es el caso de
datos personales y familiares. En otros casos luego de ingresados ya no podr&aacute;n
ser modificados: son los referidos a la HMSU. Si desea modificar registros dentro
de &eacute;stas categor&iacute;as, solo podr&aacute; hacerlo agregando un nuevo registro que modifique
a ampl&iacute;e al anterior.</p>
<p>Una vez dentro de la pantalla de HMSU puede cambiar f&aacute;cilmente de Residente seleccionando
uno nuevo en la casilla de desplazamiento que se encuentra en e borde superior
derecho de la pantalla. </p>
</blockquote>
<p align="center"><img src="../images/hmsu.png" width="383" height="257"></p>
<h3><a name="adres">Agregar nuevo residente. Datos personales, fotografía</a></h3>
<blockquote>
	<p>Para agregar un nuevo residente debe pertenecer a alguna de las siguientes &aacute;reas:
		Gerencia, Direcci&oacute;n, Administraci&oacute;n o Secretar&iacute;a.<br>
		En la pantalla principal, haga clic en el bot&oacute;n &quot;Nuevo&quot; ubicado
		en la columna izquierda, debajo del cuadro de desplazamiento de la lista de residentes
		actuales. Complete el formulario con los datos requeridos.</p>
	<p>Al ingresar a la pantalla de HMSU ver&aacute; una tabla con el detalle de los datos personales
		del paciente. Para editar, es decir, modificar alguno de &eacute;stos registros, elija
		el men&uacute; &quot;Edici&oacute;n&quot; =&gt; &quot;Datos personales&quot;. El n&uacute;mero de historia cl&iacute;nica
		no es editable.</p>
	<p>Para agregar o modificar la fotograf&iacute;a del paciente seleccione el men&uacute; &quot;archivo=&gt;Agregar/modificar
		foto&quot;. En el formulario que se pone a su disposici&oacute;n examine el disco
		de su computadora para ubicar la nueva fotograf&iacute;a del paciente,&nbsp; luego
		haga clic en &quot;Enviar&quot; y en segundos la fotograf&iacute;a estar&aacute; visible. Si la acci&oacute;n fue
		de modificaci&oacute;n y no aparece la nueva fotograf&iacute;a sino la anterior,
		presione la tecla F5 para actualizar la imagen. <br>
	</p>
</blockquote>
<h3><a name="infsoc">Informes sociales</a></h3>
<blockquote>
	<p>El informe social de la HMSU del residente debe ser completado por usuarios correspondientes
		al &aacute;rea de &quot;Trabajo Social'. Para ingresar un nuevo registro seleccione &quot;Insertar&quot;
		=&gt; &quot;Informe Social&quot;. Para consultar dichos registros no es necesario pertenecer
		a ning&uacute;n &aacute;rea en particular. Seleccione la opci&oacute;n del men&uacute; Ver. <br>
	</p>
</blockquote>
<h3><a name="df">Datos de familiares, responsables y apoderados</a></h3>
<blockquote>
	<p>Los registros de familiares, apoderados responsables de la HMSU del residente
		debe ser completado por usuarios correspondientes al &aacute;rea de &quot;Gerencia, &quot;Administraci&oacute;n&quot;
		o &quot;Secretar&iacute;a&quot;'.
		Para ingresar un nuevo registro seleccione &quot;Insertar&quot; =&gt; &quot;Familiar&quot;.
		Para consultar dichos registros no es necesario pertenecer a ning&uacute;n &aacute;rea
		en particular. Seleccione la opci&oacute;n del men&uacute; Ver. Para modificar datos
		de alg&uacute;n registro seleccione el men&uacute; &quot;Edici&oacute;n=&gt;Datos
		Familiares&quot;&nbsp; de la pantalla de HMSU. <br>
	</p>
</blockquote>
<h3><a name="evol" id="evol">Evoluciones</a></h3>
<blockquote>
	<p>Para realizar evoluciones deber pertenecer a alguna de las siguientes &aacute;reas:<br>
		- Cl&iacute;nica M&eacute;dica<br>
		- Psiquiatr&iacute;a<br>
	- Trabajo Social<br>
	- Nutrici&oacute;n<br>
	- Kinesiologia<br>
	- Supervisi&oacute;n Enfermer&iacute;a<br>
	El sistema le asigna autom&aacute;ticamente el &aacute;rea al ingresar un nuevo registro. Si no
	tiene privilegios de inserci&oacute;n obtendr&aacute; un error de acceso. Para consultar evoluciones
	seleccione la opci&oacute;n del men&uacute; Ver. Puede elegir por &aacute;reas o ver Todas. No es necesario
	pertenecer a ninguna &aacute;rea en particular para consultar las evoluciones de &aacute;rea.<br>
	</p>
</blockquote>
<h3><a name="esem">Exámenes semestrales</a></h3>
<blockquote>
	<p>Las &aacute;reas que realizan ex&aacute;menes semestrales son:<br>
		- Cl&iacute;nica M&eacute;dica<br>
		- Psiquiatr&iacute;a<br>
	- Trabajo Social<br>
	- Nutrici&oacute;n<br>
	- Kinesiologia<br>
	- Supervisi&oacute;n Enfermer&iacute;a<br>
	- Recreaci&oacute;n</p>
	<p>Debe pertenecer al &aacute;rea respectiva para insertar registros de semestrales. No
		as&iacute; para consultar cualquiera de ellas. Para conocer los residentes pendientes
		de examinar en el semestre vea el reporte de semestrales en la pantalla de inicio,
		en el men&uacute; de la columna derecha. <br>
	</p>
</blockquote>
<h3><a name="prc">Prescripciones</a></h3>
<blockquote>
	<p>Debe pertenecer a las &aacute;reas de Cl&iacute;nica M&eacute;dica, Direcci&oacute;n
		(m&eacute;dica) &nbsp; o
		Psiquiatr&iacute;a
	para ingresar un registro de Prescripci&oacute;n o cancelar una prescripci&oacute;n actual.
	Los registros de prescripciones son a modo orientativo, pero de ninguna manera reemplazan
	la receta m&eacute;dica.
	Para agregar una nueva prescripci&oacute;n elija el men&uacute; &quot;Insertar=&gt;prescripciones&quot; y
	complete el asistente para nueva prescripci&oacute;n. El plazo de la misma no puede
	superar los 180 d&iacute;as como m&aacute;ximo. Si el medicamento a prescribir no
	se encuentra en el vadem&eacute;cum
	interno del sistema solicite al responsable del &aacute;rea Farmacia su inclusi&oacute;n
	en el mismo. Para consultar las prescripciones del paciente seleccionado elija
	ver=&gt; prescripciones actuales o anteriores, seg&uacute;n su necesidad. Las prescripciones
	actuales son aquellas cuyo periodo de vigencia termina en una fecha futura. Por el
	contrario las prescripciones anteriores se refieren a aquellas que fueron suministradas
	en el pasado pero que ya no se encuentran indicadas al paciente. Para cancelar una
	prescripci&oacute;n actual complete el asistente que se inicia al presionar el bot&oacute;n cancelar
	en la grilla de medicamentos. No debe ser miembro de ning&uacute;n &aacute;rea
	en particular para consultar los registros de prescripciones. <br>
	</p>
</blockquote>
<h3><a name="sv">Signos vitales</a></h3>
<blockquote>
	<p>Los registros de Signos Vitales son responsabilidad de las &aacute;reas de Enfermer&iacute;a
		y Supervisi&oacute;n de Enfermer&iacute;a. Debe pertenecer a alguna de esas &aacute;reas
		o Cl&iacute;nica M&eacute;dica para realizar registros de Signos Vitales. Para agregar registro elija el men&uacute;
		insertar=&gt;signos vitales en la pantalla de HMSU.  No debe ser miembro de ning&uacute;n &aacute;rea
		en particular para consultar los registros de Signos Vitales.<br>
	</p>
</blockquote>
<h3><a name="pae">Planes de acción de enfermería</a></h3>
<blockquote>
	<p>Los registros de PAE corresponden a los usuarios del &aacute;rea Supervisi&oacute;n
		de Enfermer&iacute;a.
		Pueden ser consultas por todos los usuarios. Para generar un nuevo registro elija
		el men&uacute; insertar =&gt; PAE. Para consultar desde el men&uacute; ver =&gt; PAE.<br>
	</p>
</blockquote>
<h3><a name="ic">Interconsultas</a></h3>
<blockquote>
	<p>Los registros de interconsultas agendan las interconsultas que el paciente debe
		realizar en el futuro inmediato. Permiten recordar las fechas y horas y las preparaciones
		recomendadas para el paciente. Los nuevos registros pueden ser agregados por
		los usuarios pertenecientes a las &aacute;reas administrativas y de salud. Para consultar
		una interconsulta busque la opci&oacute;n en el men&uacute; ver de la pantalla de
		HMSU. Puede ver las interconsultas del d&iacute;a en la pantalla principal en la
		columna central en su parte inferior. Si superan la cantidad de 4 interconsultas
		en el d&iacute;a mostrar&aacute; un v&iacute;nculo para continuar viendo las interconsultas del d&iacute;a en otra
		p&aacute;gina. Aqu&iacute; no se registran los resultados de la interconsulta. Esa acci&oacute;n la realizan
		los usuarios del &aacute;rea de cl&iacute;nica m&eacute;dica en las evoluciones
		del paciente.<br> 
	</p>
</blockquote>
<h3><a name="vst">Visitas</a></h3>
<blockquote>
	<p>Para insertar un nuevo registro de visitas deber pertenecer al &aacute;rea de Cl&iacute;nica
		M&eacute;dica, Trabajo Social, Supervisi&oacute;n de enfermer&iacute;a&nbsp; o Enfermer&iacute;a.
		Aqu&iacute; se registran las visitas que recibe cada residente, d&iacute;a, horario
		de llegada y partida de las personas visitantes, la actitud del residente frente
		a la visita y las observaciones que el profesional considere pertinentes.<br>
		Para consultar los registros de visitas no es necesario pertenecer a alg&uacute;n
		grupo en particular.<br>
	</p>
</blockquote>
<h3><a name="ec">Epicrisis</a></h3>
<blockquote>
	<p> Epicrisis es un registro &uacute;nico, es decir, se registra por &uacute;nica vez cuando el
		paciente es dado de baja de la instituci&oacute;n. Los motivos de epicrisis son: derivaci&oacute;n
 		a segundo nivel, traslado a otra instituci&oacute;n, fallecimiento, o retirado por familiar.
		Es atributo exclusivo del &aacute;rea Cl&iacute;nica M&eacute;dica. Al registar la epicrisis de un paciente
		este es dado de baja autom&aacute;ticamente por el sistema y solo puede ser consultado
		desde el men&uacute; de pacientes egresados.</p>
</blockquote>
<p>&nbsp; </p>
<h2><a name="au"><i>Administración de usuarios: </i></a></h2>
<p>F&eacute;nix es un sistema de red, multiusuario. No es posible acceder a &eacute;l
si no es mediante las credenciales correspondientes, es decir, un nombre de usuario
y una contrase&ntilde;a. Las contrase&ntilde;as se guardan en el servidor mediante
un mecanismo de encriptaci&oacute;n irreversible, o sea, que no es posible conocer
el valor original de la palabra clave leyendo la desde el almac&eacute;n de datos;
y solo el usuario la conoce y puede modificarla, pues debe ingresar su contrase&ntilde;a
actual para obtener una nueva credencial de acceso. Para ingresar, el usuario debe
haber sido ingresado al sistema anteriormente, y se le debe asignar un &aacute;rea
de trabajo. No es posible usar el sistema si no es desde un &aacute;rea de trabajo.
Y solo un &aacute;rea es posible en el mismo tiempo. El usuario no puede pertenecer
a varias &aacute;reas
a la vez y sumar los privilegios. Si el mismo usuario pertenece a varias &aacute;reas,
deber&aacute; ingresar con las credenciales correspondientes
para cada privilegio que necesite de edici&oacute;n e inserci&oacute;n. No existe
un &aacute;rea de usuario con privilegios&quot;totales&quot;, por lo que ning&uacute;n
usuario podr&aacute;
realizar acciones que no est&eacute;n permitidas por el &aacute;rea a la que pertenece,
y no existe un &aacute;rea sin restricciones. Por ejemplo, las acciones solo permitidas
para los usuarios del &aacute;rea &quot;Cl&iacute;nica M&eacute;dica&quot; no pueden
ser asumidas por ning&uacute;n usuario
de otra &aacute;rea. Solo los m&eacute;dicos pueden prescribir, evolucionar &quot;Cl&iacute;nica
M&eacute;dica&quot;,
etc. No existe tampoco el privilegio de &quot;Administrador de sistema&quot; (o &quot;root&quot;).
Todas las &aacute;reas existentes se listan mas abajo en el detalle de <a href="derecha.php#up" target="_self">&aacute;reas
de trabajo</a>. </p>
<p>Este sistema reside en un servidor seguro que realiza conexiones ocultas a usuarios malintencionados,
mediante el protocolo SSL (Secure Socket Layer), un mecanismo est&aacute;ndar de
seguridad y encriptaci&oacute;n en Internet por llave p&uacute;blica. Eso garantiza
que las claves no sean detectables por software de robo de contrase&ntilde;as.</p>
<p>Es altamente recomendable, dada la confidencialidad de los datos resguardados
por estos mecanismos, utilizar passwords (contrase&ntilde;as) que cumplan minimamente
con los requisitos de una contrase&ntilde;a segura: tener al menos 6 caracteres
de longitud, incluir may&uacute;sculas, min&uacute;sculas y n&uacute;meros y alg&uacute;n
car&aacute;cter no alfab&eacute;tico, como asterisco,
signo pesos, guiones, etc. Esto se debe a que existen infinidad de software de
hacking de claves llamados &quot;de fuerza bruta&quot;, que intentan descifrar la
clave recorriendo valores de diccionarios o combinaciones de letras. Al tomar los
recaudos mencionados en este p&aacute;rrafo, se hace mucho m&aacute;s dif&iacute;cil
el uso de ese tipo de software de hacking. No debe anotar su clave en ning&uacute;n
lugar, sino memorizarla. No utilice palabras&nbsp; o n&uacute;meros f&aacute;ciles de deducir. </p>
<p>Para conocer detalles de su sesi&oacute;n actual, consulte la columna izquierda en su
parte inferior de la pantalla inicial. All&iacute; se detalla:</p>
<ul>
<li>Nombre de usuario.</li>
  <li>&Aacute;rea del usuario.</li>
  <li>N&uacute;mero de IP de origen, es decir, de la m&aacute;quina desde la cual se realiza la
  	conexi&oacute;n. El n&uacute;mero de IP es un n&uacute;mero &uacute;nico que identifica a cada m&aacute;quina conectada
 	a una red TCP/IP, protocolo sobre el que se asienta la red Internet.</li>
  <li>Inicio de sesi&oacute;n: es la hora en la que el usuario inici&oacute; la sesi&oacute;n actual de
 	trabajo.</li>
  <li>timeout inactivo: es la cantidad de tiempo en minutos que se ha asignado al
 	usuario como tiempo de cierre de sesi&oacute;n autom&aacute;tico si no hay actividad. </li>
  <li>&Uacute;ltimo acceso: es la hora en que se realiz&oacute; el &uacute;ltimo acceso en la sesi&oacute;n actual.
  	Permite conocer, restando al tiempo actual, cu&aacute;nto tiempo resta antes de que
 	se ejecute el timeout.</li>
  <li>Inicio anterior: d&iacute;a y hora de inicio de sesi&oacute;n previa a la actual. <br>
</li>
</ul>
<h3><a name="to">Timeout de inactividad</a></h3>
<blockquote>
	<p>Al dar de alta a un nuevo usuario, entre los datos requeridos, se incluyen el
		tiempo de inactividad antes de cerrar autom&aacute;ticamente la sesi&oacute;n. El
		motivo de esto es impedir que una sesi&oacute;n permanezca abierta por olvido de
		un usuario. El timeout se establece en minutos. Si el usuario realiza conexiones
		de acceso remoto, es decir, accede al sistema desde su hogar su otro lugar fuera
		de la residencia, el timeout debe ser menor. Si no se permite al usuario el acceso
		remoto (tambi&eacute;n configurable desde el men&uacute; de administraci&oacute;n de usuarios) 
		el timeout puede ser un poco mayor. Al transcurrir el plazo del timeout la ventana del 
		sistema se cierra autom&aacute;ticamente.</p>
	<p>Debe tenerse en cuenta un timeout demasiado corto puede provocar que el usuario
		pierda datos que est&aacute; editando, por ejemplo si est&aacute; llenando un formulario
		de datos extensos que puede llevarle varios minutos. Por otra parte es muy recomendable
		a los usuarios evitar dejar sesiones iniciadas al abandonar la residencia o el
		lugar donde la hubiera iniciado.<br>
	</p>
</blockquote>
<h3><a name="up">&Aacute;reas de usuarios y permisos</a></h3>
<blockquote>
	<p>El sistema cuenta con las siguientes &aacute;reas de usuario:<br>
		- Gerencia<br>
		- Direcci&oacute;n<br>
		- Administraci&oacute;n<br>
		- Secretar&iacute;a<br>
		- Farmacia<br>
		- Cl&iacute;nica M&eacute;dica<br>
		- Psiquiatr&iacute;a<br>
		- Trabajo
		Social<br>
		- Supervisi&oacute;n Enfermer&iacute;a<br>
		- Enfermer&iacute;a<br>
		- Nutrici&oacute;n<br>
		- Kinesiologia<br>
		- Recreaci&oacute;n</p>
	<p>Los privilegios de cada &aacute;rea se explican a lo largo de &eacute;sta p&aacute;gina
		de ayuda. Cada usuario pertenece a un &aacute;rea del sistema, y hereda los privilegios
		del &aacute;rea pertinente. </p>
</blockquote>
<p><img src="../images/permisos.png" width="585" height="685"><br>
</p>
<h3><a name="cc">Cambiar contraseña de usuario actual </a></h3>
<blockquote>
	<p>Debe cambiar su contrase&ntilde;a al ingresar por primera vez al sistema. Luego
		puede hacerlo cuando lo desee. Se recomienda modificar la clave al menos una vez
		al mes. Para cambiar la contrase&ntilde;a utilice la opci&oacute;n &quot;Cambiar
		contrase&ntilde;a&quot; en el men&uacute; de
		la columna derecha de la pantalla de inicio. </p>
	<p>Es altamente recomendable, dada la confidencialidad de los datos resguardados,
		utilizar passwords (contrase&ntilde;as) que cumplan minimamente
		con los requisitos de una contrase&ntilde;a segura: tener al menos 6 caracteres
		de longitud, incluir may&uacute;sculas, min&uacute;sculas y n&uacute;meros y alg&uacute;n
		car&aacute;cter no alfanum&eacute;rico, como asterisco, signo pesos, guiones, etc.
		Esto se debe a que existen infinidad de software de hacking de claves (llamados &quot;de
		fuerza bruta&quot;), que intentan descifrar la clave recorriendo valores de diccionarios
		o combinaciones de letras. Al tomar los recaudos mencionados en este p&aacute;rrafo,
		se hace mucho m&aacute;s dif&iacute;cil el uso de ese tipo de software de hacking,
		ya que le tomar&iacute;a mucho mas tiempo al atacante y quedar&iacute;an registros
		en el sistema de alertas.<br>
		Precisamente para proteger al sistema de &eacute;ste tipo de ataques se implementa
		un mecanismo que impide el ingreso al sistema  por algunos minutos desde la computadora
		que est&eacute; originando
		la solicitud de ingreso luego de varios intentos fallidos
		ocasionados por uso de nombre de usuario o clave incorrectos.  </p>
	<p> No debe anotar su clave en ning&uacute;n lugar, sino memorizarla. No utilice
	palabras&nbsp; o n&uacute;meros f&aacute;ciles de deducir. No divulgue su contrase&ntilde;a
	a terceros. </p>
	<p>Si Usted olvida sus datos de ingreso debe solicitar a Administraci&oacute;n le asignen
		una nueva contrase&ntilde;a. Para ello se crear&aacute; una nueva, ya que
		las mismas se almacenan encriptadas y solo el usuario conoce su valor. Si usted
		recibe una nueva contrase&ntilde;a debe modificarla tan pronto haga su primer acceso
		al sistema con la nueva password. <br>
		Todos los recaudos sugeridos en este apartado deben acentuarse cuando
		el sistema es accesible desde Internet. <br>
	</p>
</blockquote>
<h3><a name="nu">Agregar nuevo usuario</a></h3>
<blockquote>
	<p>Para agregar nuevo usuario debe pertenecer al &aacute;rea de Gerencia, Administraci&oacute;n
		o Direcci&oacute;n. En el men&uacute; usuarios de la columna derecha de la pantalla
		principal elija &quot;Agregar usuarios&quot; y complete los datos requeridos. Algunos
		son obligatorios, como si el usuario est&aacute; activo. El nombre de usuario, el
		logon, es &uacute;nico para cada uno de ellos. Si intenta registrar un nombre repetido
		el sistema directamente lo ignora y no produce registro. <br>
		Defina el timeout (tiempo despu&eacute;s del cual el sistema se cierra autom&aacute;ticamente
		si el usuario no realiza ninguna acci&oacute;n) para cada usuario. Si se le permite
		el acceso remoto (fuera de la residencia, desde su hogar o cualquier lugar en internet)
		el timeout debe ser menor. Tambi&eacute;n determine si se le permite el acceso remoto.
		Se recomienda autorizar el acceso remoto solo a los usuarios del &aacute;rea de
		profesionales que usan el sistema para completar datos de HMSU desde
		su hogar. No permita acceso remoto a usuarios que deber&iacute;an realizar acciones
		desde fuera de la residencia.<br>
	</p>
</blockquote>
<h3> <a name="edus">Editar, permitir acceso remoto, modificar timeout de inactividad</a></h3>
<blockquote>
	<p>Para editar datos de usuarios debe pertenecer al &aacute;rea de Gerencia, Administraci&oacute;n
		o Direcci&oacute;n. En el men&uacute; usuarios de la columna derecha de la pantalla
		principal elija &quot;Editar datos de  usuarios&quot;. <br>
	  Si el usuario no recuerda su contrase&ntilde;a no existe modo de conocerla,
	pero s&iacute; puede ingresar una nueva desde el asistente &quot;Editar datos de usuario&quot;,
	seleccionando al usuario a editar y completando el formulario de &quot;cambiar contrase&ntilde;a&quot;:<br>
	Los
		usuarios no pueden ser borrados una vez ingresados en el sistema, pero s&iacute; puede
		ser pasados a estado de inactivo, lo que le impide acceder al sistema. <br>
		Si se le permite el acceso remoto (fuera de la residencia, desde su hogar o cualquier
		lugar en internet) el timeout debe ser menor. Tambi&eacute;n determine si se le
		permite el acceso remoto. Se recomienda autorizar el acceso remoto solo a los usuarios
		del &aacute;rea
		de profesionales que aprovechan &eacute;ste servicio para completar datos de HMSU
		desde su hogar. No permita acceso remoto a usuarios que deber&iacute;an realizar
		acciones desde fuera de la residencia, como enfermeros y administrativos.<br>
		El nombre de usuario (logon) no puede ser modificado.		<br>
	</p>
</blockquote>
<h3><a name="audus">Auditoria de actividad de usuarios</a></h3>
<blockquote>
	<p>El sistema lleva un detalle de las acciones de cada usuario, desde el inicio
		de sesi&oacute;n hasta cada una de las inserciones y modificaciones que realice en dicha
		sesi&oacute;n. Podr&aacute; consultar dichos registros si pertenece a las &aacute;reas de Gerencia,
		Direcci&oacute;n o Administraci&oacute;n.</p>
	<p>Para ingresar al men&uacute; de auditoria seleccione dicha opci&oacute;n
		en el men&uacute; &quot;Administraci&oacute;n
		de usuarios&quot; de la columna derecha de la p&aacute;gina principal . All&iacute; podr&aacute; editar
		datos de usuario, consultar las acciones realizadas por todos los usuarios detalladas
		cronol&oacute;gicamente o filtrar por usuario.<br>
	</p>
</blockquote>
<h3><a name="ds">Detalle de sesiones y actividades</a></h3>
<blockquote>
	<p>Para ingresar al men&uacute; de auditoria seleccione dicha opci&oacute;n
		en el men&uacute; &quot;Administraci&oacute;n de usuarios&quot; de la columna derecha
		de la p&aacute;gina principal . All&iacute; podr&aacute; editar datos de usuario,
		consultar las acciones realizadas por todos los usuarios detalladas cronol&oacute;gicamente
		o filtrar por usuario. Si presiona el bot&oacute;n &quot;<strong>detalle</strong>&quot;
		podr&aacute; ver en el encabezado de la p&aacute;gina el registro correspondiente
		a la sesi&oacute;n detallada,
		m&aacute;s abajo se muestra cada acci&oacute;n realizada por el usuario en dicha
		sesi&oacute;n.<br>
	</p>
</blockquote>
<h3><a name="desact">Desactivar usuarios</a></h3>
<blockquote>
	<p>Si pertenece a alguna de &eacute;stas &aacute;reas:  Gerencia,
		Direcci&oacute;n o Administraci&oacute;n, ingrese al men&uacute; de auditoria,
		seleccione Editar en el listado de usuarios y all&iacute; modifique el campo activo
		a &quot;no&quot;. Esto impedir&aacute; que el usuario pueda ingresar al sistema. </p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="aler"><i>Alertas de pantalla inicial:	</i></a></h2>
<p>Al iniciar una sesi&oacute;n de trabajo, el usuario dispone de alertas para notificarse
acerca de las novedades del d&iacute;a. Ellas son: los mensajes nuevos que se encuentran
en la bandeja de entrada, las nuevas prescripciones, las interconsultas a realizar
en la jornada, los residentes que cumplen a&ntilde;os en la fecha y las actividades programadas
para el d&iacute;a. </p>
<h3><a name="48">Prescripciones de las últimas 48 horas </a></h3>
<blockquote>
	<p>En la columna central, debajo del listado de mensajes, aparece un listado con
		las prescripciones indicadas en las &uacute;ltimas 48 horas. Si listan hasta cinco
		prescripciones. Si el n&uacute;mero de nuevas prescripciones supera esa cantidad
		se presenta un v&iacute;nculo
		en la parte inferior derecha de la tabla que permite continuar viendo los datos
		en otra p&aacute;gina.<br>
	</p>
</blockquote>
<h3><a name="aic">Interconsultas del día</a></h3>
<blockquote>
	<p>En la columna central, debajo del listado de Prescripciones de las &uacute;ltimas
		48 horas, aparece un listado con
		las interconsultas del d&iacute;a. Si listan hasta cinco
		interconsultas. Si el n&uacute;mero de interconsultas del d&iacute;a supera esa
		cantidad se presenta un v&iacute;nculo en la parte inferior derecha de la tabla
		que permite continuar viendo los datos en otra p&aacute;gina.<br>
	</p>
</blockquote>
<h3><a name="cron">Cronograma de activases diarias </a></h3>
<blockquote>
	<p>En la columna derecha de la p&aacute;gina principal, la columna de navegaci&oacute;n,
		se encuentra en la parte central un men&uacute; de datos de &quot;Profesionales&quot;.
		Dentro de &eacute;l se visualiza
		la opci&oacute;n &quot;Cronograma de actividades&quot;. Si aparece un n&uacute;mero
		en color bord&oacute; entre
		par&eacute;ntesis al lado del texto indica la cantidad de actividades programadas
		para el d&iacute;a en curso. Haciendo clic en dicho v&iacute;nculo podr&aacute; consultar
		detalles sobre las actividades programadas para el d&iacute;a y para los d&iacute;as
		subsiguientes.<br>
	</p>
</blockquote>
<h3><a name="mn">Mensajes nuevos </a></h3>
<blockquote>
	<p>En el &aacute;rea de notificaci&oacute;n de la ventana (de estado), en su parte
		inferior,&nbsp; se
		muestra un texto que indica la cantidad de mensajes nuevos que posee el usuario
		actual en la bandeja de entrada del sistema de mensajer&iacute;a interna. </p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="mi"><i>Mensajería interna:</i></a></h2>
<p>El sistema de mensajer&iacute;a es un &aacute;gil, simple y eficaz medio de mantener
comunicaci&oacute;n
entre los usuarios del sistema. La interfaz principal se encuentra en la cabecera
de la columna central de la pantalla inicial. </p>
<h3><a name="act">Actualizar lista de mensajes recibidos</a></h3>
<blockquote>
	<p>La lista de mensajes recibidos, que se detalla en la pantalla inicial, en la
		columna central, se actualiza en cada ingreso a &eacute;sta pantalla. Tambi&eacute;n
		puede actualizarla el usuario haciendo clic en el bot&oacute;n &quot;Descargar&quot; del
		men&uacute; de mensajes o presionando
		la tecla F5. Este &uacute;ltimo m&eacute;todo tiene la ventaja que actualiza todas
		las alertas de la pantalla inicial.<br>
	</p>
</blockquote>
<h3><a name="leer">Leer mensajes</a></h3>
<blockquote>
	<p>Para leer un mensaje haga clic sobre el nombre del remitente del mensaje, donde
		el cursor del mouse toma la forma de una mano. Se abrir&aacute; la pantalla de
		detalle de mensaje donde se detalla la fecha y hora de env&iacute;o, el remitente,
		el asunto del mensaje y el texto del mismo. Para retornar a la lista de mensajes
		haga clic en el v&iacute;nculo &quot;Cerrar&quot;.<br>
	</p>
</blockquote>
<h3><a name="esc">Redactar y enviar mensajes</a></h3>
<blockquote>
	<p>Para redactar un nuevo mensaje haga clic en el bot&oacute;n &quot;Enviar&quot; del
		men&uacute; de mensajes.
		Se abrir&aacute; una nueva ventana para seleccionar las opciones del nuevo mensaje
		y redactar su contenido. Puede enviar el mismo mensaje a varios destinatarios.
		Para ello mantenga presionada la tecla &quot;Control&quot; mientras selecciona
		con el mouse los destinatarios del mensaje. Para enviar el mensaje presione el
		bot&oacute;n &quot;Enviar&quot;,
		recibir&aacute; una confirmaci&oacute;n
		de env&iacute;o.<br>
	</p>
</blockquote>
<h3><a name="elim">Eliminar mensajes</a></h3>
<blockquote>
	<p>Para eliminar mensajes debe seleccionarlos marcando la casilla de selecci&oacute;n
		del mensaje. Si desea borrar todos los mensajes en una sola vez seleccione la casilla
		ubicada en la cabecera de la columna de selecci&oacute;n. Luego haga clic en la
		opci&oacute;n
&quot;Eliminar&quot;. </p>
</blockquote>
<p align="center"><img src="../images/mensajes.png" width="425" height="183"><br>
</p>
<h3><a name="melim">Ver mensajes quitados</a></h3>
<blockquote>
	<p>Puede alternar entre la vista de mensajes actuales y mensajes quitados. Para
		ello haga clic en la opci&oacute;n que corresponda en el men&uacute; de mensajes.
		La vista actual permanece deshabilitada. </p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="infores"><i>Informes de residentes:</i></a></h2>
<p>Puede consultar distintos datos que agrupan a los residentes, bien sea el listado
total, por obra social, de ingresos y egresos de pacientes en el semestre o distribuci&oacute;n
por habitaci&oacute;n en un croquis de la instituci&oacute;n. El men&uacute; de
reportes se encuentra en la pantalla principal en la columna derecha, men&uacute;&quot;Residentes&quot;. </p>
<h3><a name="ract">Listado de residentes actuales</a></h3>
<blockquote>
	<p>La opci&oacute;n &quot;Reporte residentes&quot; abrir&aacute; la pantalla de listado completo de residentes,
		ordenados alfab&eacute;ticamente.<br> 
	</p>
</blockquote>
<h3><a name="ie">Listado de ingresos y egresos del semestre</a></h3>
<blockquote>
	<p>La opci&oacute;n &quot;Ingresos y derivaciones &quot; lleva a la pantalla
		de listado de residentes ingresados y egresados en el semestre ordenados alfab&eacute;ticamente.<br>
	</p>
</blockquote>
<h3><a name="plano" id="plano">Plano de distribución de habitaciones</a></h3>
<blockquote>
	<p>Desde la opci&oacute;n &quot;Habitaciones&quot; ingresa a  la pantalla de distribuci&oacute;n
		de residentes que presenta un plano de la residencia con el listado de residentes
		por habitaci&oacute;n. &nbsp;El
		plano de distribuci&oacute;n debe ser agregado al sistema por usuarios de las &aacute;reas
&nbsp;	&quot;Gerencia&quot;, &quot;Administraci&oacute;n&quot;, o &quot;Secretar&iacute;a&quot;.
		Para ello el dise&ntilde;o del plano
		debe ser realizado en un tama&ntilde;o de 500 p&iacute;xeles de ancho x 350 p&iacute;xeles
		de alto en formato
&quot; jpg&quot;, a una resoluci&oacute;n de 75 dpi. El &quot;peso&quot; de la imagen
		no debe superar los 100 kbytes. Es importante mantener la proporci&oacute;n de
		500 x 350 para evitar que se distorsione la imagen. <br>
		Si necesita asistencia para fijar su nuevo plano  contacte al &aacute;rea de soporte:
		soporte-fenixlogosnet.com.ar.</p>
	<p> Para agregar o modificar la imagen del plano desde la pantalla habitaciones
		seleccione la opci&oacute;n &quot;Agregar plano&quot;. Se iniciar&aacute; un asistente
		que le ofrece, desde la opci&oacute;n
&quot;Examinar&quot; buscar la ubicaci&oacute;n de la nueva imagen. Una vez seleccionada
elija la opci&oacute;n &quot;Enviar&quot; e inmediatamente estar&aacute; visible
el nuevo plano. Si la acci&oacute;n realizada
		es de actualizaci&oacute;n de la imagen, es decir, de cambiar la imagen actual
		por una nueva, luego de elegir enviar refresque la pantalla presionando la tecla
		F5 o el bot&oacute;n &quot;Refrescar pantalla&quot;.<br>
	</p>
</blockquote>
<h3><a name="os">Listado de residentes por obra social</a></h3>
<blockquote>
	<p>La opci&oacute;n &quot;Listado por obra social &quot; abrir&aacute; la pantalla
		de listado  residentes para agruparlos por obra social y ordenados alfab&eacute;ticamente.
		Haga click en el v&iacute;nculo con el nombre de la obra social para ver el listado
		de los residentes actuales afiliados en la misma.<br>
	</p>
</blockquote>
<h3><a name="if">Informes  profesionales:</a></h3>
<blockquote>
	<p>En &eacute;ste men&uacute; ubicado en la columna de navegaci&oacute;n&nbsp; de
		la pantalla principal encontrar&aacute; informaci&oacute;n sobre Pacientes a evolucionar,
		control de semestrales y cronograma de actividades.<br>
	</p>
</blockquote>
<h3><a name="aevol">Listado de residentes sin evolucionar en los últimos 30 días
	por área</a></h3>
<blockquote>
	<p>Este informe lista los pacientes que no registran evoluci&oacute;n del &aacute;rea
		del usuario actual en los &uacute;ltimos 30 d&iacute;as. Podr&aacute; consultar
		aqu&iacute; la
		fecha de la &uacute;ltima evoluci&oacute;n y la fecha de ingreso del paciente.
		Haciendo click en el bot&oacute;n &quot;Evolucionar&quot; ingresar&aacute; en la
		pantalla de HMSU del paciente seleccionado.<br>
	</p>
</blockquote>
<h3><a name="cumpes">Informe de cumplimiento de exámenes semestrales por &aacute;reas</a></h3>
<blockquote>
	<p>Este informe lista la fecha de los registros de ex&aacute;menes semestrales por
		cada paciente y por cada &aacute;rea buscando en el &uacute;ltimo semestre. Si
		el paciente no registra examen en alg&uacute;n &aacute;rea aparece el espacio en
		blanco, informando que dicho paciente en el &aacute;rea se&ntilde;alada no registra
		examen semestral en los &uacute;ltimos 6 meses.<br>
	</p>
</blockquote>
<h3><a name="cad">Cronograma de actividades diarias</a></h3>
<blockquote>
	<p>Este listado muestra las actividades programadas, ordenadas por fecha en forma
		ascendente. Por cada actividad podr&aacute; elegir editar, para modificar cualquiera
		de los datos de actividad. Para agregar un registro de actividad presione el
		bot&oacute;n
&quot;Agregar actividad&quot;.<br>
	</p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="accenf"><i>Enfermería:</i></a></h2>
<p>El men&uacute; de <strong>Enfermer&iacute;a</strong> permite acceder a la pantalla
de consulta y registros de reportes diarios de enfermer&iacute;a por turno. Tambi&eacute;n
ofrece un reporte de prescripciones paciente ordenado alfab&eacute;ticamente, que
permite a los enfermeros preparar la dosificaci&oacute;n de medicaci&oacute;n por
turno. <br>
</p>
<h3><a name="renf">Consultar reportes diarios de enfermería por turno</a></h3>
<blockquote>
	<p>Desde el men&uacute; enfermer&iacute;a de la pantalla de inicio ingresa al asistente
		de consulta de reportes de enfermer&iacute;a. All&iacute; accede a un formulario
		de filtro que le ofrece elegir por turno y fecha a consultar. Inicialmente se
		muestran los registros correspondientes a la fecha actual. <br>
	</p>
</blockquote>
<h3><a name="redenf">Redactar reporte diario de enfermería</a></h3>
<blockquote>
	<p>Para ingresar un registro de reporte diario de enfermer&iacute;a deber pertenecer
		al
&aacute;rea de <strong>Enfermer&iacute;a</strong> o <strong>Supervisi&oacute;n de
	enfermer&iacute;a. </strong>Si
	pertenece a alguna de &eacute;stas &aacute;reas tendr&aacute; el bot&oacute;n <strong>&quot;Nuevo
	reporte&quot;</strong> habilitado. Presione en &eacute;l y complete el formulario
	para el nuevo registro.<br>
	</p>
</blockquote>
<h3><a name="prs">Listado de prescripciones</a></h3>
<blockquote>
	<p>El listado de prescripciones ofrece un detalle ordenado alfab&eacute;ticamente
		por residente de las prescripciones actuales. En el detalle el campo <b>&quot;d&iacute;as&quot;</b> aparece
		resaltado en color rojo si la medicaci&oacute;n est&aacute; prescripta para el d&iacute;a actual, y
		en color azul si la medicaci&oacute;n no est&aacute; prescripta para el d&iacute;a
		actual. <br>
	</p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="fmc"><i>Farmacia:</i></a></h2>
<p>El men&uacute; <strong>Farmacia</strong> de la pantalla de inicio permite elegir
entre las opciones Vadem&eacute;cum y Consumo Semanal de Medicamentos.</p>
<h3><a name="vdm">Vademécum: agregar y editar lista de drogas disponibles para prescripción</a></h3>
<blockquote>
	<p>Desde la pantalla Vadem&eacute;cum se administra el listado de drogas disponibles
		para prescripci&oacute;n de medicamentos.&nbsp; Para consultar presentaciones y
		nombre comerciales de una droga seleccione su nombre del listado inicial. Para
		agregar drogas y presentaciones deber&aacute; pertenecer al &aacute;rea de <strong>Farmacia</strong>. <br>
		Para agregar una nueva droga complete los campos <strong>&quot;Droga&quot;</strong> y <strong>&quot;Nombres
		comerciales&quot;</strong> debajo del t&iacute;tulo <strong>&quot;Agregar
		medicamento&quot;</strong> y luego presione el bot&oacute;n<strong> &quot;Guardar
		medicamento&quot;</strong>.
		Aparecer&aacute; inmediatamente la nueva droga seleccionada. <br>
		Si desea agregar una presentaci&oacute;n
		a una droga seleccionada complete los campos debajo del t&iacute;tulo <strong>&quot;Agregar
		presentaci&oacute;n ...&quot;</strong> y presione el bot&oacute;n <strong>&quot;Guardar
		presentaci&oacute;n&quot;</strong>.<br>
		Si desea agregar o modificar el/los nombre/s comercial/es de la droga edite el
		campo <strong>&quot;Nombres comerciales&quot;</strong> y presione el bot&oacute;n &quot;Guardar
		nombre&quot;.<br>
	</p>
</blockquote>
<h3><a name="dsem">Lista demanda de medicación semanal</a></h3>
<blockquote>
	<p>Desde la opci&oacute;n <strong>&quot;Consumo semanal&quot;</strong>&nbsp; ingresa
		a la pantalla de <strong>&quot;Demanda de medicamentos&quot;</strong>, que muestra
		un listado de la suma de medicamentos recetados  para los pr&oacute;ximos
		7 d&iacute;as, incluyendo la suma de pacientes que se encuentran medicados con cada droga.
		Este listado permite calcular aproximadamente la demanda de medicaci&oacute;n para realizar
		pedidos de laboratorio en periodos semanales. Estos totales se obtienen multiplicando
		los d&iacute;as de prescripci&oacute;n por la cantidad de tomas o suministros diarios por cada
		paciente, por lo cual si la prescripci&oacute;n se refiere a una presentaci&oacute;n de medicamento
		diferente a comprimidos, por ejemplo gotas, crema o soluciones, el n&uacute;mero
		resultante de este total se refiere a la cantidad de veces que se suministra el
		medicamento. </p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="ccr"><i>Cuentas corrientes de residentes:	</i></a></h2>
<p>Debe pertenecer al &aacute;rea &quot;Administraci&oacute;n&quot; o &quot;Gerencia&quot; para ingresar a la pantalla
de cuentas corrientes residentes. Elija la opci&oacute;n <strong>&quot;Cuentas
Corrientes&quot;</strong> del men&uacute; <strong>&quot;Residentes&quot;, </strong> en
la columna derecha de la p&aacute;gina principal. Al ingresar en &eacute;sta pantalla
podr&aacute; seleccionar
el residente a consultar. La cuenta corriente se compone de <strong>d&eacute;bitos, </strong>es
decir, los importes que el residente debe abonar por diferentes conceptos; y por
<strong>cr&eacute;ditos</strong>, que se refieren a importes que se acreditan en
la cuenta, bien sea por pagos o por dep&oacute;sito en custodia de valores. El saldo
positivo indica los importes adeudados en el mes en curso por el residente, un
saldo negativo indica que los valores en custodia superan los importes a pagar,
o que se han realizado pagos por un importe superior a los d&eacute;bitos.</p>
<p>Desde la pantalla de cuentas corrientes, una vez seleccionado un residente, puede
ingresar nuevos d&eacute;bitos, cr&eacute;ditos, o consultar el listado total de
saldos de todos los residentes. </p>
<p>Desde la pantalla de registro de d&eacute;bitos puede agregar conceptos de d&eacute;bito, para
personalizar dicho men&uacute;. De igual manera puede, desde la pantalla de ingreso de
cr&eacute;ditos, agregar conceptos de cr&eacute;dito.</p>
<h3><a name="cec">Consultar estado de cuenta de residentes</a></h3>
<blockquote>
	<p>Desde la pantalla de <strong>Cuentas corrientes </strong>seleccione el residente
		a consultar para ver el estado de cuentas. El sistema realiza un &quot;transporte&quot; con
		el saldo del mes anterior, sumar&aacute; los d&eacute;bitos registrados en el mes
		en curso, y restar&aacute; los cr&eacute;ditos del mismo periodo, entregando el
		saldo resultante que ser&aacute; la deuda actual de residente si es positivo, o
		el saldo a favor del residente en caso contrario, es decir, si es negativo.<br>
		Puede tambi&eacute;n consultar el listado hist&oacute;rico de movimientos del residente
		actual, mediante el link &quot;Mostrar hist&oacute;rico&quot;, y ocultarlo mediante
		e links&quot;ocultar hist&oacute;rico&quot;. <br>
	</p>
</blockquote>
<h3><a name="adeb">Agregar débitos y créditos</a></h3>
<blockquote>
	<p>Desde la pantalla de cuentas corrientes, una vez seleccionado un residente, puede
		ingresar nuevos d&eacute;bitos, cr&eacute;ditos, o consultar el listado total de
		saldos de todos los residentes. <br>
	</p>
</blockquote>
<h3><a name="acdc">Agregar conceptos de débitos y créditos</a></h3>
<blockquote>
	<p>Desde la pantalla de registro de d&eacute;bitos puede agregar conceptos de d&eacute;bito,
		para personalizar dicho men&uacute;. De igual manera puede, desde la pantalla de
		ingreso de cr&eacute;ditos, agregar conceptos de cr&eacute;dito.<br>
	</p>
</blockquote>
<h3><a name="slds">Listado de saldos de cuentas corrientes</a></h3>
<blockquote>
	<p>Desde la pantalla de cuentas corrientes, puede consultar el listado total de
		saldos de todos los residentes. All&iacute; tambi&eacute;n se presenta un consolidado
		de d&eacute;bitos
			del mes anterior con la suma de d&eacute;bitos de dicho periodo.</p>
</blockquote>
<p>&nbsp;</p>
<h2><a name="rsd"><i>Respaldo de datos</i></a> </h2>
<p>Desde el m&oacute;dulo de respaldo de datos se pueden realizar las siguientes acciones:</p>
<ol>
	<li>Crear un respaldo de datos: esto crea un archivo de respaldo que contiene la
		totalidad de la informaci&oacute;n del sistema: Residentes, Usuarios, Evoluciones,
		Reportes de Enfermer&iacute;a, etc. Este archivo se utiliza para restaurar la base de
		datos en caso de p&eacute;rdida,
		destrucci&oacute;n,
		fallo, etc.</li>
  <li>Descargar el archivo de respaldo: es conveniente resguardar el archivo de respaldo
  	en un lugar seguro. Para ello debe descargarlo y guardarlo en alg&uacute;n medio de
  	almacenamiento, como un cd gravable, etiquetarlo con la fecha de respaldo y archivarlo
  	convenientemente. Elija &quot;descargar&quot; en el men&uacute; de respaldos- Realice esta acci&oacute;n
  	al menos una vez por semana. </li>
  <li>Crear una copia de datos para escriban&iacute;a: crea un archivo con los datos de
  	las HMSU de todos los pacientes y Reportes de enfermer&iacute;a. </li>
  <li>Descargar copia de datos para escriban&iacute;a. Esta copia se utiliza para certificar
  	que los datos de las Historias M&eacute;dicas Sociales Unicas no son modificados una
  	vez que cada profesional los ha ingresado al sistema. En caso de necesidad permitir&iacute;a
  	cotejar el contenido del sistema en el servidor con la copia de certificaci&oacute;n
  	depositada en escriban&iacute;a. Los datos copiados son aquellos referidos a Historias
  	M&eacute;dicas, y Reportes de Enfermer&iacute;a. </li>
</ol>
<p>&nbsp;</p>
<h2><a name="close"><i>Cerrar sesi&oacute;n de usuario</i></a></h2>
<blockquote>
	<p>Al finalizar el uso del sistema es muy recomendable cerrar su
		sesi&oacute;n de trabajo. Al hacerlo evitar&aacute; que otro usuario inexperto realice registros
		con su nombre por error. Si ha iniciado una sesi&oacute;n remota, desde fuera de la instituci&oacute;n,
		esta recomendaci&oacute;n es aun mayor. Para ello haga click en el v&iacute;nculo
		del mismo nombre desde la pantalla inicial en la parte inferior de la columna derecha.<br>
		La sesi&oacute;n
		se cierra autom&aacute;ticamente al transcurrir el plazo de timeout sin actividad por
		parte del usuario. Esto puede ocasionar inconvenientes si est&aacute; registrando informaci&oacute;n
		que puede tomarle m&aacute;s tiempo que el soportado por su tiemout. En ese caso solicite
		se aumente dicho tiempo para su sesi&oacute;n. Si inicia un registro luego que el sistema
		ha estado inactivo algunos minutos, habiendo dejado el formulario en pantalla,
		refresque la misma antes de comenzar, haciendo F5. Como recomendaci&oacute;n, es
		conveniente abrir un formulario de ingreso de datos en el momento que vaya a realizar
		el registro.</p>
</blockquote>
<br>
<div style="position:absolute; right:15px">
<input type="button" value=" Cerrar ayuda " onClick="window.parent.close()">
</div>
</body>
</html>