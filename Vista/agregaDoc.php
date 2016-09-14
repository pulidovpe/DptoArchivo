<?php session_start();
/**
 * Archivo:  agregaDoc.php
 * Formulario encargado de pedir los datos para archivar documentos.
 *
 * Variables usadas:
 *   $link:     Variable de conexion
 *   $user:     Variable de sesion asociada al operador conectado.
 *   $tipoPer:  Variable que almacena el nivel de seguridad del usuario.    
**/
if($_SESSION['tipoPer']!='2')
{
    /* Sino existe variable de sesion que indique que 
       es el usuario Operador, entonces cerrar la sesion 
    */
    header("Location: ../Controlador/cerrarSesion.php");    
    exit;
} 
// Se obtiene el usuario que inicio la sesion.
$login = $_SESSION['user'];
// Se establece la conexion a la base de datos
include_once("../Controlador/conexion.php");
$link=conectarse();
// Para que MySQL reconozca la ñ y demas caracteres latinos
mysql_query("SET NAMES 'utf8'");
// Se obtiene el ID del proximo registro
$resultado = mysql_query("SELECT auto_increment FROM information_schema.tables WHERE table_name='documento' ",$link);
$registros = mysql_fetch_array($resultado);
$ultimo = $registros['auto_increment'];

// Se genera una fecha estandar basada en la obtenida por el sistema
$dia = date(d); // devuelve el día del mes
$mes = date(m); // devuelve el número del mes
$anio = date(Y); // devuelve el año
$fecha = $dia."/".$mes."/".$anio;
?>

<div id="divpadre1">
	<br />
	<center><h3>AGREGAR DOCUMENTO<h3></center>
  <!-- Procesar formulario de forma asincrona (AJAX) -->
  <form name="planilla1" id="planilla1" method="post" onsubmit="llamarasincronopost('Controlador/procesarDoc.php','divpadre1','respuesta1','2',
	'fechaAbre='+document.getElementById('fechaAbre').value
	+'&amp;dpto1='+document.getElementById('dpto1').value
	+'&amp;tipoDoc1='+document.getElementById('tipoDoc1').value
	+'&amp;titulo='+document.getElementById('titulo').value
	+'&amp;loginH='+document.getElementById('loginH').value
	+'&amp;ubiDoc='+document.getElementById('ubiDoc').value); return false" action="#">
	<input type="hidden" name="loginH" id="loginH" value="<?php echo $login; ?>" />	
  <table width="520" border="1" summary="">
		<tr>
			<th> Numero de<br>Documento: <br><input type="text" name="numDoc" disabled="disabled" size="3" value="<?php echo $ultimo; ?>" /></th><td></td>
			<th align="left"> Fecha: <br>
			<input type="text" name="fechaAbre" id="fechaAbre" size="8" maxlength="10" value="<?php echo $fecha; ?>" />			
			</th>
		</tr>		
		<tr>
			<th align="left"> Nombre del Dpto.: </th><td align="left">
                <input type='hidden' name='dpto1' id='dpto1'>
                <select name="dpto" id="dpto" onchange="document.getElementById('dpto1').value = this.options[this.selectedIndex].value;">
                    <option value="" disabled="disabled" selected="selected"></option>
                    <option value="Decanato">Decanato</option>
                    <option value="Dpto. de las TICs">Dpto. las TICs</option>
                    <option value="Coord. Local de Innovaciones Educativas y Tecnológicas-Div. Academica">Coord. Local de Innovaciones Educativas y Tecnológicas-Div. Academica</option>
                    <option value="Dpto. Planificación Academica-Div. Academica">Dpto. Planificación Academica-Div. Academica</option>
                    <option value="Dpto. Postgrado-Div. Academica">Dpto. Postgrado-Div. Academica</option>
                    <option value="Dpto. Investigación-Div. Academica">Dpto. Investigación-Div. Academica</option>
                    <option value="Dpto. Ingreso, Registro y Egreso-Div. Secretaria">Dpto. Ingreso, Registro y Egreso-Div. Secretaria</option>
                    <option value="Dpto. Documentación, Archivo y Correspondencia-Div. Secretaria">Dpto. Documentación, Archivo y Correspondencia-Div. Secretaria</option>
                    <option value="Dpto. Actas y Publicaciones-Div. Secretaria">Dpto. Actas y Publicaciones-Div. Secretaria</option>
                    <option value="Dpto. Extensión-Div. Asuntos Sociales">Dpto. Extensión-Div. Asuntos Sociales</option>
                    <option value="Div. Proyectos-Dpto. Extensión">Div. Proyectos-Dpto. Extensión</option>
                    <option value="Servicio Comunitario-Dpto. Extensión">Servicio Comunitario-Dpto. Extensión</option>
                    <option value="Dpto. Desarrollo Estudiantil-Div. Asuntos Sociales">Dpto. Desarrollo Estudiantil-Div. Asuntos Sociales</option>
                    <option value="Unidad de Salud Integral-Dpto. Desarrollo Estudiantil">Unidad de Salud Integral-Dpto. Desarrollo Estudiantil</option>
                    <option value="Biblioteca-Dpto. Desarrollo Estudiantil">Biblioteca-Dpto. Desarrollo Estudiantil</option>
                    <option value="Apoyo Psico-Socio-Educativo-Dpto. Desarrollo Estudiantil">Apoyo Psico-Socio-Educativo-Dpto. Desarrollo Estudiantil</option>
                    <option value="FAMES-Dpto. Desarrollo Estudiantil">FAMES-Dpto. Desarrollo Estudiantil</option>
                    <option value="Dpto. Cultura-Dpto. Desarrollo Estudiantil">Dpto. Cultura-Dpto. Desarrollo Estudiantil</option>
                    <option value="Dpto. Deporte-Dpto. Desarrollo Estudiantil">Dpto. Deporte-Dpto. Desarrollo Estudiantil</option>
                    <option value="Dpto. Administración y Finanzas-Div. Administrativa">Dpto. Administración y Finanzas-Div. Administrativa</option>
                    <option value="Dpto. Planificación y Presupuesto-Div. Administrativa">Dpto. Planificación y Presupuesto-Div. Administrativa</option>
                    <option value="Dpto. Servicios Generales-Div. Administrativa">Dpto. Servicios Generales-Div. Administrativa</option>
                    <option value="ASOBIES-Div. Administrativa">ASOBIES-Div. Administrativa</option>
                </select>
			</td><td></td>	
		</tr>
		<tr>
			<th align="left"> Tipo de Documento: </th><th align="left">
                <input type='hidden' name='tipoDoc1' id='tipoDoc1'>
                <select name="tipoDoc" id="tipoDoc" onchange="document.getElementById('tipoDoc1').value = this.options[this.selectedIndex].value;">
                    <option value="" disabled="disabled" selected="selected"></option>
                    <option value="Correspondencia">Correspondencia</option>
                    <option value="Actas de Consejo de Núcleo">Actas de Consejo de Núcleo</option>
                    <option value="Actas de Evaluación">Actas de Evaluación</option>
                    <option value="Actas de modificación de calificaciones">Actas de modificación de calificaciones</option>
                    <option value="Programas de cada una de las carreras">Programas de cada una de las carreras</option>
                    <option value="Programas de Postgrado ofertados">Programas de Postgrado ofertados</option>
                    <option value="Convenios">Convenios</option>
                    <option value="Informes de rendimiento académico">Informes de rendimiento académico</option>
                    <option value="Reglamentos y manuales de la Unefa">Reglamentos y manuales de la Unefa</option>
                    <option value="Estadísticas de la Matrícula Estudiantil">Estadísticas de la Matrícula Estudiantil</option>
                    <option value="Informes de Gestión del Núcleo">Informes de Actividades del Núcleo</option>
                    <option value="Órdenes Administrativas de Interés">Órdenes Administrativas de Interés</option>
                    <option value="Control de asistencia de los alumnos">Control de asistencia de los alumnos</option>
                    <option value="Plan Operativo Anual(POA)">Plan Operativo Anual(POA)</option>
                    <option value="Recortes de prensa, fotografías y otros documentos">Recortes de prensa, fotografías y otros documentos</option>
                    <option value="Normativa Legal por Ingreso">Normativa Legal por Ingreso</option>
                    <option value="Prosecución y Egreso de Alumnos">Prosecución y Egreso de Alumnos</option>
                </select>
			</th><td></td>
		</tr>
		<tr>
			<th align="left"> Titulo: </th><td><input type="text" name="titulo" id="titulo" size="55" maxlength="99" /></td><td></td>		
		</tr>
		<tr>
			<th align="left"> Ubicación: </th><td align="left"><input type="text" name="ubiDoc" id="ubiDoc" size="45" maxlength="40" /></td><td></td>
		</tr>
		<tr><td colspan='3' align="center">
		<input name="enviar" type="submit" id="enviar" value="Enviar"></input>
		<input type="button" name="Cancelar" value="Cancelar" onclick="javascript:llamarasincronoget('Vista/documento.php','col2','centro','0')"/></td></tr>
	</table>
	</form>
	<!-- Aqui se reciben los envios de AJAX -->
	<div id="respuesta1" style='visibility:hidden'></div>
</div>