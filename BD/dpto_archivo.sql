-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-04-2013 a las 11:23:58
-- Versión del servidor: 5.1.66
-- Versión de PHP: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dpto_archivo`
--
DROP DATABASE `dpto_archivo`;
CREATE DATABASE `dpto_archivo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dpto_archivo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clavePer`
--

CREATE TABLE IF NOT EXISTS `clavePer` (
  `loginPer` varchar(9) NOT NULL,
  `tipoPer` tinyint(1) NOT NULL,
  `clave` varchar(256) NOT NULL,
  PRIMARY KEY (`loginPer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `clavePer`
--

INSERT INTO `clavePer` (`loginPer`, `tipoPer`, `clave`) VALUES
('99009009', 1, 'f2eb4cbd005908be5f70dbd3496b495f2c917fa3');

--
-- (Evento) desencadenante `clavePer`
--
DROP TRIGGER IF EXISTS `bit_cla_upd`;
DELIMITER //
CREATE TRIGGER `bit_cla_upd` AFTER UPDATE ON `clavePer`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "MODIFICACION", concat(' Cedula: ',NEW.loginPer,' ; SE REALIZO CAMBIO DE CLAVE!!! '), "clavePer");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosPer`
--

CREATE TABLE IF NOT EXISTS `datosPer` (
  `cedulaPer` varchar(9) NOT NULL,
  `cedulaOper` varchar(9) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(21) NOT NULL,
  `sexo` char(1) NOT NULL,
  `clavePer_loginPer` varchar(9) NOT NULL,
  PRIMARY KEY (`cedulaPer`,`clavePer_loginPer`),
  KEY `fk_datosPer_clavePer1` (`clavePer_loginPer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `datosPer`
--

INSERT INTO `datosPer` (`cedulaPer`, `cedulaOper`, `nombre`, `direccion`, `telefono`, `sexo`, `clavePer_loginPer`) VALUES
('99009009', '99009009', 'Administrador', 'UNEFA - Nucleo Apure', '0-', 'F', '99009009');

--
-- (Evento) desencadenante `datosPer`
--
DROP TRIGGER IF EXISTS `bit_per_ins`;
DELIMITER //
CREATE TRIGGER `bit_per_ins` AFTER INSERT ON `datosPer`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.cedulaOper, 0, 0, NOW(), "INSERCION", concat(' Cedula: ',NEW.cedulaPer,' ; Nombre: ',NEW.nombre,' ; Direccion: ',NEW.direccion,' ; Telefono: ',NEW.telefono,' ; Sexo: ',NEW.sexo), "datosPer");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_per_upd`;
DELIMITER //
CREATE TRIGGER `bit_per_upd` AFTER UPDATE ON `datosPer`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.cedulaOper, 0, 0, NOW(), "MODIFICACION", concat(' Cedula: ',NEW.cedulaPer,' ; Nombre: ',NEW.nombre,' ; Direccion: ',NEW.direccion,' ; Telefono: ',NEW.telefono,' ; Sexo: ',NEW.sexo), "datosPer");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_per_del`;
DELIMITER //
CREATE TRIGGER `bit_per_del` BEFORE DELETE ON `datosPer`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "ELIMINACION", concat(' Cedula: ',OLD.cedulaPer,' ; Nombre: ',OLD.nombre,' ; Direccion: ',OLD.direccion,' ; Telefono: ',OLD.telefono,' ; Sexo: ',OLD.sexo), "datosPer");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `numDoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fechaAbre` date NOT NULL,
  `dpto` varchar(45) NOT NULL,
  `tipoDoc` varchar(60) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `login` varchar(9) NOT NULL,
  PRIMARY KEY (`numDoc`),
  KEY `fecha` (`fecha`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `documento`
--


--
-- (Evento) desencadenante `documento`
--
DROP TRIGGER IF EXISTS `bit_doc_ins`;
DELIMITER //
CREATE TRIGGER `bit_doc_ins` AFTER INSERT ON `documento`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.login, 0, NEW.numDoc, NOW(), "INSERCION", concat(' Fecha Creacion: ',NOW(),' ; Departamento: ',NEW.dpto,' ; Tipo documento: ',NEW.tipoDoc,' ; Fecha Actualizacion: ',NOW(),' ; Titulo: ',NEW.titulo,' ; Ubicacion: ',NEW.ubicacion), "documento");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_doc_upd`;
DELIMITER //
CREATE TRIGGER `bit_doc_upd` AFTER UPDATE ON `documento`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.login, 0, NEW.numDoc, NOW(), "MODIFICACION", concat(' Fecha Creacion: ',NEW.fechaAbre,' ; Departamento: ',NEW.dpto,' ; Tipo documento: ',NEW.tipoDoc,' ; Fecha Actualizacion: ',NOW(),' ; Titulo: ',NEW.titulo,' ; Ubicacion: ',NEW.ubicacion), "documento");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_doc_del`;
DELIMITER //
CREATE TRIGGER `bit_doc_del` BEFORE DELETE ON `documento`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, OLD.login, 0, OLD.numDoc, NOW(), "ELIMINACION", concat(' Fecha Creacion: ',OLD.fechaAbre,' ; Departamento: ',OLD.dpto,' ; Tipo documento: ',OLD.tipoDoc,' ; Fecha Actualizacion: ',OLD.fecha,' ; Titulo: ',OLD.titulo,' ; Ubicacion: ',OLD.ubicacion), "documento");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE IF NOT EXISTS `especialidad` (
  `codEsp` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `descripEsp` varchar(80) NOT NULL,
  `nivelAca` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`codEsp`,`nivelAca`),
  KEY `nivelAca` (`nivelAca`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcar la base de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`codEsp`, `descripEsp`, `nivelAca`) VALUES
(1, 'Tecnico Superior Universitario en Turismo', 1),
(2, 'Ingeniería Agroindustrial', 1),
(3, 'Ingenieria del Azucar', 1),
(4, 'Ingeniería Civil', 1),
(5, 'Ingeniería Mecánica', 1),
(6, 'Ingeniería de Sistemas', 1),
(7, 'Diplomado de Capacitación Docente', 2),
(8, 'Talleres de Prevención del VIH y del Virus del Papiloma Humano VPH', 2),
(9, 'Inglés Instrumental', 2),
(10, 'Taller de Inteligencia Emocional y Autoestima', 2),
(11, 'Taller de embarazo precoz en adolescentes', 2),
(12, 'Taller de Lectoescritura', 2),
(13, 'Taller de Tradición, Cultura y Folklore', 2),
(14, 'Electricidad Básica', 2),
(15, 'Comunicaciones Analógicas', 2),
(16, 'Diseño de Páginas Web', 2),
(17, 'Asesoría Comunitaria', 2),
(18, 'Derecho Procesal Laboral (Acreditable a Especialización)', 3),
(19, 'Gerencia Pública (Acreditable a Especialización)', 3),
(20, 'Educación Superior (Acreditable a Maestría)', 3),
(21, 'Tecnología Educativa (Acreditable a Maestría)', 3),
(22, 'Ciencias Jurídicas Militares (Acreditable a Maestría)', 3),
(23, 'Gerencia de Recursos  Humanos (Acreditable a Maestría)', 3),
(24, 'Innovaciones Educativa (Acreditable a Doctorado)', 3),
(25, 'Ciencias Gerenciales (Acreditable a Doctorado)', 3);

--
-- (Evento) desencadenante `especialidad`
--
DROP TRIGGER IF EXISTS `bit_esp_ins`;
DELIMITER //
CREATE TRIGGER `bit_esp_ins` AFTER INSERT ON `especialidad`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "INSERCION", concat(' Cod. especialidad: ',NEW.codEsp,' ; Descripcion: ',NEW.descripEsp,' ; Nivel Academico: ',NEW.nivelAca), "especialidad");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_esp_upd`;
DELIMITER //
CREATE TRIGGER `bit_esp_upd` AFTER UPDATE ON `especialidad`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "MODIFICACION", concat(' Cod. especialidad: ',NEW.codEsp,' ; Descripcion: ',NEW.descripEsp,' ; Nivel Academico: ',NEW.nivelAca), "especialidad");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_esp_del`;
DELIMITER //
CREATE TRIGGER `bit_esp_del` BEFORE DELETE ON `especialidad`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "ELIMINACION", concat(' Cod. especialidad: ',OLD.codEsp,' ; Descripcion: ',OLD.descripEsp,' ; Nivel Academico: ',OLD.nivelAca), "especialidad");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE IF NOT EXISTS `expediente` (
  `numExp` int(11) NOT NULL AUTO_INCREMENT,
  `cedulaExp` varchar(9) NOT NULL,
  `fechaAbre` date NOT NULL,
  `fechaAct` date NOT NULL,
  `codEsp` tinyint(2) unsigned NOT NULL,
  `codTipoExp` tinyint(2) unsigned NOT NULL,
  `requisitos` varchar(200) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `amonesta` char(1) NOT NULL,
  `observa` varchar(80) NOT NULL,
  `activo` char(1) NOT NULL,
  `login` varchar(9) NOT NULL,
  `reqpend` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numExp`,`cedulaExp`),
  KEY `codEsp` (`codEsp`),
  KEY `codTipoExp` (`codTipoExp`),
  KEY `cedulaExp` (`cedulaExp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Volcar la base de datos para la tabla `expediente`
--


--
-- (Evento) desencadenante `expediente`
--
DROP TRIGGER IF EXISTS `bit_exp_ins`;
DELIMITER //
CREATE TRIGGER `bit_exp_ins` AFTER INSERT ON `expediente`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.login, NEW.numExp, 0, NOW(), "INSERCION", concat(' Cedula: ',NEW.cedulaExp,' ; especialidad: ',NEW.codEsp,' ; Tipo expediente: ',NEW.codTipoExp,' ; Requisitos: ',NEW.requisitos,' ; Ubicacion: ',NEW.ubicacion,' ; Amonestado: ',NEW.amonesta,' ; Observacion: ',NEW.observa,' ; Activo: ',NEW.activo), "expediente");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_exp_upd`;
DELIMITER //
CREATE TRIGGER `bit_exp_upd` AFTER UPDATE ON `expediente`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, NEW.login, NEW.numExp, 0, NOW(), "MODIFICACION", concat(' Cedula: ',NEW.cedulaExp,' ; especialidad: ',NEW.codEsp,' ; Tipo expediente: ',NEW.codTipoExp,' ; Requisitos: ',NEW.requisitos,' ; Ubicacion: ',NEW.ubicacion,' ; Amonestado: ',NEW.amonesta,' ; Observacion: ',NEW.observa,' ; Activo: ',NEW.activo), "expediente");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_exp_del`;
DELIMITER //
CREATE TRIGGER `bit_exp_del` BEFORE DELETE ON `expediente`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", OLD.numExp, 0, NOW(), "ELIMINACION", concat(' Cedula: ',OLD.cedulaExp,' ; especialidad: ',OLD.codEsp,' ; Tipo expediente: ',OLD.codTipoExp,' ; Requisitos: ',OLD.requisitos,' ; Ubicacion: ',OLD.ubicacion,' ; Amonestado: ',OLD.amonesta,' ; Observacion: ',OLD.observa,' ; Activo: ',OLD.activo), "expediente");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `codHist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cedulaOp` varchar(9) NOT NULL,
  `numExp` int(11) NOT NULL,
  `numDoc` int(10) unsigned NOT NULL,
  `fechaHora` datetime NOT NULL,
  `operacion` varchar(12) NOT NULL,
  `cambios` varchar(300) NOT NULL,
  `tabla` varchar(20) NOT NULL,
  PRIMARY KEY (`codHist`),
  KEY `cedulaOp` (`cedulaOp`),
  KEY `fechaHora` (`fechaHora`),
  KEY `numExp` (`numExp`),
  KEY `numDoc` (`numDoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=907 ;

--
-- Volcar la base de datos para la tabla `historico`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelEsp`
--

CREATE TABLE IF NOT EXISTS `nivelEsp` (
  `nivelAca` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `descripNiv` varchar(40) NOT NULL,
  PRIMARY KEY (`nivelAca`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `nivelEsp`
--

INSERT INTO `nivelEsp` (`nivelAca`, `descripNiv`) VALUES
(1, 'Pregrado (Ingeniería y T.S.U.)'),
(2, 'Cursos de Extension'),
(3, 'Postgrados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisiExp`
--

CREATE TABLE IF NOT EXISTS `requisiExp` (
  `codReqExp` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(155) NOT NULL,
  `codTipoExp` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`codReqExp`),
  KEY `codTipoExp` (`codTipoExp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- Volcar la base de datos para la tabla `requisiExp`
--

INSERT INTO `requisiExp` (`codReqExp`, `descripcion`, `codTipoExp`) VALUES
(1, 'Partida de nacimiento (fotocopia simple)!', 1),
(2, 'Notas certificadas de educación media (fotocopia simple-a vista del original)', 1),
(3, 'Título de bachiller (fotocopia simple fondo negro–a vista del original, autentificado por la zona educativa o plantel procede', 1),
(4, 'Planilla de inscripción del alumno (correspondiente a su primera inscripción en la Unefa a partir de la cohorte 2008)', 1),
(5, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada)', 1),
(6, 'Carnet de identificación si es militar (fotocopia – a vista del original)', 1),
(7, 'Una (1) fotografía de frente (tamaño carnet)', 1),
(8, 'Reconocimientos', 1),
(9, 'Amonestaciones', 1),
(10, 'Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia', 1),
(11, 'Certificado de pasantía industrial. (fotocopia – a vista del original, con la firma, nombre, apellido y C.I. del funcionario ', 1),
(12, 'Instrumento e instructivo para calificar el informe final de pasantía', 1),
(13, 'Acta de la defensa del informe final de pasantía industrial larga (en caso de haberla realizado)', 1),
(14, 'Acta de evaluación final del trabajo especial de grado', 1),
(15, 'Constancia de culminación del servicio comunitario (fotocopia a vista del original)', 1),
(16, 'Récord académico (que indique nombres y apellidos del alumno, firmado por el jefe de Secretaría y Decano del Núcleo, sellado)', 1),
(17, 'Solvencia para alumnos. (Dpto. de carrera, Asobies, Coordinación de deportes, biblioteca y laboratorio)', 1),
(18, 'Planilla de registro de datos personales del alumno (Fotografía indicada en el ítem No 6 en la parte superior derecha)', 1),
(19, 'Planilla de registro de documentos requeridos al alumno para el grado, emitida por el Dpto. de Ingreso, Registro y Egreso', 1),
(20, 'Partida de nacimiento (fotocopia simple)', 2),
(21, 'Notas certificadas de educación media(fotocopia simple–a vista del original)', 2),
(22, 'Título de bachiller(fotocopia simple fondo negro–a vista del original,autentificado por la zona educativa o plantel procedente)', 2),
(23, 'Planilla de inscripción del alumno (correspondiente a su primera inscripción en la Unefa a partir de la cohorte 2008)', 2),
(24, 'Inscripción militar (fotocopia – a vista del original). En caso de ser mayor de edad', 2),
(25, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada)', 2),
(26, 'Carnet de identificación si es militar (fotocopia – a vista del original)', 2),
(27, 'Fotocopia del oficio de designación (alumnos militares)', 2),
(28, 'Una (1) fotografía de frente (tamaño carnet)', 2),
(29, 'Comprobante de presentación de la prueba de aptitud académica o preinscripción en el CNU (fotocopia simple)', 2),
(30, 'Certificado de salud vigente expedido por el Ministerio del Poder Popular para la Salud (M.P.P.S).(original)', 2),
(31, 'Planilla de registro de datos personales(Debe incluir la fotografía indicada en el ítem No 8 en la parte superior derecha)', 2),
(32, 'Récord académico firmado por Jefe de Secretaría y el Decano(caso de aprobar todas o algunas materias del término o semestre)', 2),
(33, 'Reconocimientos', 2),
(34, 'Amonestaciones', 2),
(35, 'Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia', 2),
(36, 'Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso', 2),
(37, 'Partida de nacimiento (fotocopia simple).', 3),
(38, 'Notas certificadas de educación media (fotocopia simple - a vista del original).', 3),
(39, 'Título de bachiller (fotocopia simple fondo negro – a vista del original, autentificado por la zona educativa o plantel de procedencia)', 3),
(40, 'Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa).', 3),
(41, 'Inscripción militar (fotocopia – a vista del original). En caso de ser mayor de edad.', 3),
(42, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada).', 3),
(43, 'Carnet de identificación si es militar (fotocopia – a vista del original).', 3),
(44, 'Oficio de designación (alumnos militares). (fotocopia simple).', 3),
(45, 'Una (1) fotografía de frente (tamaño carnet).', 3),
(46, 'Comprobante de presentación de la prueba de aptitud académica (fotocopia simple)', 3),
(47, 'Certificado de salud vigente expedido por el M.P.P.S. (original).', 3),
(48, 'Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 8 en la parte superior derecha).', 3),
(49, 'Récord académico firmado por el Jefe de División de Secretaría y Decano del Núcleo (en caso de haber aprobado el término e incluso sólo', 3),
(50, 'Reconocimientos.', 3),
(51, 'Amonestaciones.', 3),
(52, 'Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia.', 3),
(53, 'Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 3),
(54, '(1) FOTOCOPIA DE LA CEDULA DE IDENTIDAD (AMPLIADA Y LEGIBLE)', 4),
(55, 'PLANILLA DE REGISTRO DE DOCUMENTOS', 4),
(56, 'PLANILLA DE DATOS PERSONALES CON FOTO DE FRENTE, TAMAÑO CARNET', 4),
(57, '(1) PLANILLA DE PREINSCRIPCION E INSCRIPCION VIA WEB DEL CINU', 4),
(58, '(1) FOTOCOPIA DEL COMPROBANTE DE PREINSCRIPCION POR EL RUSNIES', 4),
(59, 'AUTENTICIDAD DEL TITULO DE BACHILLER (ORIGINAL)', 4),
(60, 'FONDO NEGRO DEL TITULO DE BACHILLER (AUTENTIFICADO POR LA INSTITUCION DE PROCEDENCIA Y ZONA EDUCATIVA) FIRMADO Y SELLADO A VISTA DEL ORIGINAL', 4),
(61, '(1) COPIA SIMPLE DEL TITULO DE BACHILLER', 4),
(62, '(1) FOTOCOPIA DE LA PARTIDA DE NACIMIENTO (VISTA AL ORIGINAL)', 4),
(63, 'COPIA DE NOTAS CERTIFICADAS DE 1 A 5 AÑO (VISTA AL ORIGINAL) FIRMADAS, SELLADAS Y CON TIMBRES FISCALES EN CADA HOJA', 4),
(64, 'CERTIFICADO DE SALUD ORIGINAL VIGENTE', 4),
(65, 'Notas certificadas de Pregrado (fotocopia simple – a vista del original).', 5),
(66, 'Título obtenido de Pregrado (fotocopia simple fondo negro - a vista del original, autenticado por la Secretaría General de la Universidad de procedencia).', 5),
(67, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada).', 5),
(68, 'Planilla de inscripción del alumno (correspondiente a su primera inscripción en el programa de Postgrado cursado en la Unefa).', 5),
(69, 'Acta de evaluación del trabajo de grado con el sello del Decanato y firma de los evaluadores).', 5),
(70, 'Una (1) fotografía de frente (tamaño carnet).', 5),
(71, 'Evaluación final del trabajo especial de grado.', 5),
(72, 'Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 6 en la parte superior derecha).', 5),
(73, 'Planilla de control de documentos requeridos, emitida por el Departamento de Ingreso, Registro y Egreso.', 5),
(74, 'Notas certificadas de Postgrado (fotocopia simple – a vista del original).', 6),
(75, 'Título obtenido de Postgrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universi', 6),
(76, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada).', 6),
(77, 'Planilla de inscripción del alumno (correspondiente a su primera inscripción en el programa de Postgrado cursado en la Unefa).', 6),
(78, 'Una (1) fotografía de frente (tamaño carnet).', 6),
(79, 'Acta de evaluación de la tesis doctoral.', 6),
(80, 'Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 5 en la parte superior derecha).', 6),
(81, 'Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 6),
(82, 'Notas certificadas de Doctorado (fotocopia simple – a vista del original).', 7),
(83, 'Título obtenido de Doctorado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia).', 7),
(84, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada).', 7),
(85, 'Una (1) fotografía de frente (tamaño carnet).', 7),
(86, 'Acta de evaluación del trabajo intelectual.', 7),
(87, 'Certificación del programa del postdoctorado cursado (fotocopia simple).', 7),
(88, 'Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 4 en la parte superior derecha).', 7),
(89, 'Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 7),
(90, 'Partida de nacimiento (original o fotocopia simple).', 8),
(91, 'Notas certificadas de Pregrado (original o fotocopia simple – a vista del original).', 8),
(92, 'Título obtenido de Pregrado (fotocopia simple a fondo negro-a vista del original) autenticado por la Secretaría General de la Universidad de procedencia).', 8),
(93, 'Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa).', 8),
(94, 'Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada).', 8),
(95, 'Dos (2) fotografías de frente (tamaño carnet).', 8),
(96, 'Resumen curricular con soportes.', 8),
(97, 'Historial profesional para la evaluación de credenciales.', 8),
(98, 'Planilla de preinscripción.', 8),
(99, 'Guía para la evaluación de la entrevista del proceso de selección (firmada por el Coordinador del programa o entrevistador).', 8),
(100, 'Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 8),
(101, 'Partida de nacimiento (original o fotocopia simple).', 9),
(102, 'Notas certificadas de Postgrado (original o fotocopia simple – a vista del original).', 9),
(103, 'Título obtenido de Postgrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia).', 9),
(104, 'Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa).', 9),
(105, 'Cédula de Identidad (fotocopia ampliada – a vista del original vigente y laminada).', 9),
(106, 'Dos (2) fotografías de frente (tamaño carnet).', 9),
(107, 'Resumen curricular con soportes.', 9),
(108, 'Historial profesional para la evaluación de credenciales.', 9),
(109, 'Planilla de preinscripción.', 9),
(110, 'Guía para la evaluación de la entrevista del proceso de selección (firmada por el Coordinador del programa o entrevistador).', 9),
(111, ' Propuesta de investigación (Objetivo No 1 del trabajo de investigación).', 9),
(112, ' Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 9),
(113, 'Partida de nacimiento (original o fotocopia simple). 2. Notas certificadas de Doctorado (original o fotocopia simple – a vista del original).', 10),
(114, 'Título obtenido de Doctorado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia).', 10),
(115, 'Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa).', 10),
(116, 'Cédula de identidad (fotocopia ampliada – a vista del original vigente y laminada).', 10),
(117, 'Dos (2) fotografías de frente (tamaño carnet).', 10),
(118, 'Resumen curricular con soportes.', 10),
(119, 'Historial profesional para la evaluación de credenciales.', 10),
(120, 'Entrevista preliminar del proceso de admisión, elaborado por el Coordinador de estudios postdoctorales (el formato es entregado a los aspirantes para su po', 10),
(121, 'Planilla de preinscripción.', 10),
(122, ' Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso.', 10),
(123, 'Planilla de preinscripción.', 11),
(124, 'Planilla de inscripción.', 11),
(125, 'Cédula de identidad vigente (fotocopia ampliada a 155 %-a vista del original vigente y laminada).', 11),
(126, 'Deposito bancario de la inscripción (original o fotocopia legible).', 11),
(128, 'Título de Pregrado (fotocopia fondo negro – a vista del original), en caso que el Curso / Diplomado así lo requiera.', 12),
(129, 'Notas certificadas de Pregrado (fotocopia simple – a vista del original).', 12),
(130, 'Cédula de identidad (fotocopia ampliada a 155 % – a vista del original vigente y laminada).', 12),
(131, 'Una (1) fotografía de frente (tamaño carnet).', 12),
(132, 'Deposito Bancario (original o fotocopia legible).', 12),
(133, 'Síntesis curricular (sin soportes)', 12),
(134, 'Planilla de preinscripción.', 13),
(135, 'Título de bachiller (fondo negro - a vista del original, en caso que el Curso así lo requiera).', 13),
(136, 'Notas certificadas de educación media (fotocopia simple-a vista del original).', 13),
(137, 'Cédula de identidad (fotocopia ampliada a 155 % – a vista del original vigente y laminada).', 13),
(138, 'Una (1) fotografía de frente (tamaño carnet).', 13),
(139, 'Deposito Bancario (original o fotocopia legible).', 13),
(140, 'Alumnos militares: (1) COPIA DEL CARNET DE IDENTIFICACION', 4),
(141, 'Copia del carnet militar (Mayor de edad)', 4);

--
-- (Evento) desencadenante `requisiExp`
--
DROP TRIGGER IF EXISTS `bit_req_ins`;
DELIMITER //
CREATE TRIGGER `bit_req_ins` AFTER INSERT ON `requisiExp`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "INSERCION", concat(' Cod. Requisito: ',NEW.codReqExp,' ; Descripcion: ',NEW.descripcion,' ; Cod. Tipo expediente: ',NEW.codTipoExp), "requisiExp");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_req_upd`;
DELIMITER //
CREATE TRIGGER `bit_req_upd` AFTER UPDATE ON `requisiExp`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "MODIFICACION", concat(' Cod. Requisito: ',NEW.codReqExp,' ; Descripcion: ',NEW.descripcion,' ; Cod. Tipo expediente: ',NEW.codTipoExp), "requisiExp");
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `bit_req_del`;
DELIMITER //
CREATE TRIGGER `bit_req_del` BEFORE DELETE ON `requisiExp`
 FOR EACH ROW BEGIN
INSERT INTO historico(codHist, cedulaOp, numExp, numDoc, fechaHora, operacion, cambios, tabla) VALUES (NULL, "99009009", 0, 0, NOW(), "ELIMINACION", concat(' Cod. Requisito: ',OLD.codReqExp,' ; Descripcion: ',OLD.descripcion,' ; Cod. Tipo expediente: ',OLD.codTipoExp), "requisiExp");
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoReq`
--

CREATE TABLE IF NOT EXISTS `tipoReq` (
  `codTipoExp` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `descripTExp` varchar(85) NOT NULL,
  PRIMARY KEY (`codTipoExp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `tipoReq`
--

INSERT INTO `tipoReq` (`codTipoExp`, `descripTExp`) VALUES
(1, 'Expedientes de alumnos egresados de Pregrado'),
(2, 'Expedientes Cancelados (alumnos regulares) de Pregrado'),
(3, 'Expedientes (alumnos regulares) de Pregrado'),
(4, 'Expedientes de alumnos (nuevo ingreso) de Pregrado'),
(5, 'Expedientes de alumnos egresados de Postgrado (Maestría-especialización)'),
(6, 'Expedientes de alumnos egresados de Postgrado (Doctorado)'),
(7, 'Expedientes de alumnos egresados de Postgrado (Postdoctorado)'),
(8, 'Expedientes (alumnos regulares-cancelados) de Postgrado (Maestría-Especialización)'),
(9, 'Expedientes (alumnos regulares-cancelados) de Postgrado(Doctorado)'),
(10, 'Expedientes (alumnos regulares-cancelados) de Postgrado(Postdoctorado)'),
(11, 'Expedientes de participantes de cursos(Desarrollo comunitario)'),
(12, 'Cursos de mejoramiento profesional / Diplomados'),
(13, 'Expedientes de participantes de cursos(Servicio comunitario)');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `datosPer`
--
ALTER TABLE `datosPer`
  ADD CONSTRAINT `datosPer_ibfk_1` FOREIGN KEY (`clavePer_loginPer`) REFERENCES `clavePer` (`loginPer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD CONSTRAINT `especialidad_ibfk_1` FOREIGN KEY (`nivelAca`) REFERENCES `nivelEsp` (`nivelAca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD CONSTRAINT `expediente_ibfk_4` FOREIGN KEY (`cedulaExp`) REFERENCES `datosPer` (`cedulaPer`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `expediente_ibfk_5` FOREIGN KEY (`codEsp`) REFERENCES `especialidad` (`codEsp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `expediente_ibfk_6` FOREIGN KEY (`codTipoExp`) REFERENCES `tipoReq` (`codTipoExp`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `requisiExp`
--
ALTER TABLE `requisiExp`
  ADD CONSTRAINT `requisiExp_ibfk_1` FOREIGN KEY (`codTipoExp`) REFERENCES `tipoReq` (`codTipoExp`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`archivo`@`localhost` PROCEDURE `doc_del`(in numDoc1 int(10))
BEGIN
DELETE FROM dpto_archivo.documento WHERE documento.numDoc=numDoc1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `doc_ins`(in numDoc1 int(10),in fechaAbre1 date,in dpto1 varchar(45), in tipoDoc1 varchar(60),in fecha1 date,in titulo1 varchar(100),in ubicacion1 varchar(45),in login1 varchar(9))
BEGIN
INSERT INTO dpto_archivo.documento VALUES (numDoc1,fechaAbre1,dpto1,tipoDoc1,fecha1,titulo1,ubicacion1,login1);
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `doc_upd`(in numDoc1 int(10),in dpto1 varchar(45), in tipoDoc1 varchar(60),in fecha1 date,in titulo1 varchar(100),in ubicacion1 varchar(45),in login1 varchar(9))
BEGIN
UPDATE dpto_archivo.documento SET documento.dpto=dpto1, documento.tipoDoc=tipoDoc1, documento.fecha=fecha1, documento.titulo=titulo1, documento.ubicacion=ubicacion1, documento.login=login1 WHERE documento.numDoc=numDoc1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `esp_del`(in codEsp1 tinyint(2))
BEGIN
DELETE FROM dpto_archivo.especialidad WHERE especialidad.codEsp=codEsp1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `esp_ins`(in codEsp1 tinyint(2),in descripEsp1 varchar(80),in nivelAca1 tinyint(1))
BEGIN
INSERT INTO dpto_archivo.especialidad VALUES (codEsp1, descripEsp1, nivelAca1);
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `esp_upd`(in codEsp1 tinyint(2),in descripEsp1 varchar(80),in nivelAca1 tinyint(1))
BEGIN
UPDATE dpto_archivo.especialidad SET especialidad.descripEsp=descripEsp1, especialidad.nivelAca=nivelAca1 WHERE especialidad.codEsp=codEsp1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `exp_del`(in numExp1 int(11),in codEsp1 tinyint(2))
BEGIN
DELETE FROM dpto_archivo.expediente WHERE expediente.numExp=numExp1 AND expediente.codEsp=codEsp1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `exp_ins`(in numExp1 int(11),in cedulaExp1 varchar(9),in fechaAbre1 date,in fechaAct1 date,in codEsp1 tinyint(2),in codTipoExp1 tinyint(2),in requisitos1 varchar(200),in ubicacion1 varchar(45),in amonesta1 char(1),in observa1 varchar(80),in activo1 char(1),in login1 varchar(9),in reqpend1 tinyint(4))
BEGIN
INSERT INTO dpto_archivo.expediente VALUES (numExp1, cedulaExp1, fechaAbre1, fechaAct1, codEsp1, codTipoExp1, requisitos1, ubicacion1, amonesta1, observa1, activo1, login1, reqpend1);
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `exp_upd`(in numExp1 int(11),in cedulaExp1 varchar(9),in fechaAct1 date,in codEsp1 tinyint(2),in codTipoExp1 tinyint(2),in requisitos1 varchar(200),in ubicacion1 varchar(45),in amonesta1 char(1),in observa1 varchar(80),in activo1 char(1),in login1 varchar(9),in reqpend1 tinyint(4))
BEGIN
UPDATE dpto_archivo.expediente SET expediente.cedulaExp=cedulaExp1, expediente.fechaAct=fechaAct1, expediente.codEsp=codEsp1, expediente.codTipoExp=codTipoExp1, expediente.requisitos=requisitos1, expediente.ubicacion=ubicacion1, expediente.amonesta=amonesta1, expediente.observa=observa1, expediente.activo=activo1, expediente.login=login1, expediente.reqpend=reqpend1 WHERE expediente.numExp=numExp1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `per_del`(in loginPer1 varchar(9))
BEGIN
DELETE FROM dpto_archivo.clavePer WHERE clavePer.loginPer=loginPer1;
DELETE FROM dpto_archivo.datosPer WHERE datosPer.cedulaPer=loginPer1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `per_ins`(in cedulaPer1 varchar(9),in cedulaOper1 varchar(9),in tipoPer1 tinyint(1),in clave1 varchar(256),in nombre1 varchar(45),in direccion1 varchar(60),in telefono1 varchar(21),in sexo1 char(1))
BEGIN
INSERT INTO dpto_archivo.clavePer VALUES (cedulaPer1,tipoPer1,clave1);
INSERT INTO dpto_archivo.datosPer VALUES (cedulaPer1,cedulaOper1,nombre1,direccion1,telefono1,sexo1,cedulaPer1);
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `per_upd`(in cedulaPer1 varchar(9),in cedulaOper1 varchar(9),in nombre1 varchar(45),in direccion1 varchar(60),in telefono1 varchar(21),in sexo1 char(1))
BEGIN
UPDATE dpto_archivo.datosPer SET datosPer.cedulaOper=cedulaOper1, datosPer.nombre=nombre1, datosPer.direccion=direccion1, datosPer.telefono=telefono1, datosPer.sexo=sexo1 WHERE datosPer.cedulaPer=cedulaPer1;
END$$

CREATE DEFINER=`archivo`@`localhost` PROCEDURE `req_ins`(in codReqExp1 tinyint(2),in descripcion1 varchar(155),in codTipoExp1 tinyint(2))
BEGIN
INSERT INTO dpto_archivo.requisiExp VALUES (codReqExp1, descripcion1, codTipoExp1);
END$$

DELIMITER ;
