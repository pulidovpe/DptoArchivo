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
('10111222', 3, 'alumno'),
('10111333', 3, 'alumno'),
('10111444', 3, 'alumno'),
('10159955', 3, 'alumno'),
('10615965', 3, 'alumno'),
('10616288', 3, 'alumno'),
('10617017', 3, 'alumno'),
('10617990', 3, 'alumno'),
('10619778', 3, 'alumno'),
('10620247', 3, 'alumno'),
('10621655', 3, 'alumno'),
('10622292', 3, 'alumno'),
('11198116', 3, 'alumno'),
('11222444', 3, 'alumno'),
('11235659', 3, 'alumno'),
('11236073', 3, 'alumno'),
('11237086', 3, 'alumno'),
('11238483', 3, 'alumno'),
('11240153', 3, 'alumno'),
('11241050', 3, 'alumno'),
('11244576', 3, 'alumno'),
('11244600', 3, 'alumno'),
('11691494', 3, 'alumno'),
('11753724', 3, 'alumno'),
('11755529', 3, 'alumno'),
('11756410', 3, 'alumno'),
('11757198', 3, 'alumno'),
('11757859', 3, 'alumno'),
('11757914', 3, 'alumno'),
('11760973', 2, '6214e988600f9714439ee9fb5890525f91b2a135'),
('11761015', 3, 'alumno'),
('11761654', 3, 'alumno'),
('11762555', 3, 'alumno'),
('11842915', 3, 'alumno'),
('12123930', 3, 'alumno'),
('12170265', 3, 'alumno'),
('12321020', 3, 'alumno'),
('12321619', 2, 'cd39dff1fa7460490d7081010f7fd6d45a63122b'),
('12322141', 3, 'alumno'),
('12322324', 3, 'alumno'),
('12322535', 3, 'alumno'),
('12322677', 2, '620dff95c07a5ef5fc66163c3615fc5cf1c46762'),
('12323440', 3, 'alumno'),
('12323480', 3, 'alumno'),
('12324342', 3, 'alumno'),
('12325793', 3, 'alumno'),
('12442551', 3, 'alumno'),
('12547495', 2, '16b083d8d9a3cbc13704ea0f70ac9405fccab2ff'),
('12581319', 3, 'alumno'),
('12584108', 3, 'alumno'),
('12585045', 3, 'alumno'),
('12633145', 3, 'alumno'),
('12822308', 3, 'alumno'),
('12900925', 3, 'alumno'),
('12903263', 3, 'alumno'),
('12903783', 3, 'alumno'),
('12903952', 3, 'alumno'),
('12904401', 3, 'alumno'),
('12925467', 3, 'alumno'),
('13040877', 3, 'alumno'),
('13254403', 3, 'alumno'),
('13723533', 3, 'alumno'),
('14218482', 3, 'alumno'),
('14947894', 3, 'alumno'),
('15046274', 3, 'alumno'),
('15047174', 3, 'alumno'),
('15100167', 3, 'alumno'),
('15512959', 3, 'alumno'),
('15546191', 3, 'alumno'),
('15998167', 3, 'alumno'),
('15998947', 3, 'alumno'),
('16913015', 3, 'alumno'),
('3248351', 3, 'alumno'),
('4111623', 3, 'alumno'),
('5359808', 3, 'alumno'),
('5360672', 3, 'alumno'),
('6026273', 3, 'alumno'),
('6304676', 3, 'alumno'),
('6327276', 3, 'alumno'),
('6570614', 3, 'alumno'),
('7333025', 3, 'alumno'),
('77777777', 3, 'alumno'),
('8160704', 3, 'alumno'),
('8192754', 3, 'alumno'),
('8196070', 3, 'alumno'),
('82227353', 3, 'alumno'),
('8561707', 3, 'alumno'),
('9107059', 3, 'alumno'),
('91222222', 3, 'alumno'),
('91234567', 3, 'alumno'),
('9203409', 3, 'alumno'),
('9590153', 3, 'alumno'),
('9590295', 3, 'alumno'),
('9591973', 3, 'alumno'),
('9596987', 3, 'alumno'),
('9684187', 3, 'alumno'),
('9684407', 3, 'alumno'),
('9747257', 3, 'alumno'),
('9870043', 3, 'alumno'),
('9872295', 3, 'alumno'),
('9873538', 3, 'alumno'),
('9875569', 3, 'alumno'),
('9876685', 3, 'alumno'),
('99009009', 1, 'f2eb4cbd005908be5f70dbd3496b495f2c917fa3'),
('99222222', 3, 'alumno'),
('99333333', 3, 'alumno');

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
('10111222', '12322677', 'JOSE DE JESUS URBANEJA IZQUIERDO', 'CALABOZO', '4243038087-3453453453', 'M', '10111222'),
('10111333', '12322677', 'BRESMELIMAR AIMEL', 'Calle Plaza', '4243038087-', 'F', '10111333'),
('10111444', '12322677', 'BRESMEL JESUS', 'Calle Plaza, numero 5', '4243038087-', 'M', '10111444'),
('10159955', '12322677', 'MOISES ANDRES SEPULVEDA CHAVARRIAGA', 'URB LLANO ALTO CALLE META Nº 346', '4249670887-', 'M', '10159955'),
('10615965', '12322677', 'JOSE DE JESUS LOPEZ SILVA', 'LA CRUZ DE AGUA VIA SAN JUAN DE PAYARA', '2475149923-4140848781', 'M', '10615965'),
('10616288', '12322677', 'DIMAN ANTONIO COLINA RIVERO', 'SECTOR GUASIMO 2 Nº 52 CALLE PRINCIPAL', '2473411618-', 'M', '10616288'),
('10617017', '12322677', 'RAFAEL MANUEL TORRES CERPA', 'URB. SANTA RUFINA, SECTOR 1, CALLE 10, NRO 35', '2473645815-4161404136', 'M', '10617017'),
('10617990', '12322677', 'YRMA URIMARE VERENZUELA ROMAN', 'BARRIO SAN JOSE Nº 2257 BIRUACA', '2473645036-4141784785', 'F', '10617990'),
('10619778', '12322677', 'ROSA MELEIDA GONZALEZ PEÑA', 'CALLE LOS JABILLOS NRO 21 CERCA DE VARIEDADES MARGARITA', '2473415023-4144740940', 'F', '10619778'),
('10620247', '12322677', 'Nombre de la Estudiante', 'BARRIO JOSE W. RODRIGUEZ, SECTOR 2, CASA Nº 7', '2475143146-2222222222', 'F', '10620247'),
('10621655', '12322677', 'Nombre del Estudiante', 'AV. CARACAS 2DA TRANSVERSAL BARRIO 9 DICIEMBRE', '4144735677-', 'F', '10621655'),
('10622292', '12322677', 'JULIO CESAR HIDALGO LOPEZ', 'URB. LOS TAMARINDOS, SECTOR LAS LLANERITAS, CASA NRO 075', '2475111026-', 'M', '10622292'),
('11198116', '12322677', 'VICTOR MANUEL CHACON UBAC', 'RECREO 1 CALLE ANGEL HURTADO Nº 10', '4167384236-', 'M', '11198116'),
('11222444', '12322677', 'JAIMAR KARINA', 'Calle Plaza, numero 5', '1212122121-3453453453', 'F', '11222444'),
('11235659', '12322677', 'DARRYS RAMON ROMERO GALLEGOS', 'VECINDARIO JUANAPARO PARCELA 13 FUNDO SD', '2475157968-4141470459', 'M', '11235659'),
('11236073', '12322677', 'Nombre del Estudiante', 'BARRIO SANTA ANA DIAGONAL A LA CANCHA', '4168479165-', 'F', '11236073'),
('11237086', '12322677', 'JONNY MOISES AREVALO SALAZAR', 'GUASIMO I, CALLE PRINCIPAL NRO 16', '2475154318-4144759830', 'M', '11237086'),
('11238483', '12322677', 'RUTH IRENE ESCOBAR', 'BARRIO VALLE VERDE 2 CALLE CASA Nº 4', '4163398686-', 'F', '11238483'),
('11240153', '12322677', 'GLADYS MIREYA GALLARDO ', 'BARRIO LA HIDALGUIA II CALLE PRINCIPAL AL FINAL Nº 47', '2473412941-4165417850', 'F', '11240153'),
('11241050', '12322677', 'FELIX ENRIQUE LADERA HERNANDEZ', 'URB. LUIS HERRERA CALLE PRINCIPAL Nº 13', '4145946878-4162346090', 'M', '11241050'),
('11244576', '12322677', 'ELIO RAFAEL TOLEDO', 'BARRIO 9 DICIEMBRE, DETRAS DE LA RESIDENCIA DEL GOBERNADOR, ', '2473425103-4162402645', 'M', '11244576'),
('11244600', '12322677', 'KALIA JOSEFINA HERRERA BARONI', 'URB. ALTOS DE PUERTO MIRANDA, MANZANA 20, NRO 20, EDO GUARIC', '2473415151-4144753973', 'F', '11244600'),
('11691494', '12322677', 'MIGUEL JUSGLADER ANGARITA NAVARRO', 'URB. JOSE FELIX RIBAS CALLE 07 CASA S/N SAN FDO APURE', '4147541300-', 'M', '11691494'),
('11753724', '12322677', 'SOL MARIA CASTILLO ', 'BARRIO VALLE VERDE 2 DA CALLE Nº 5', '2475146771-4144911248', 'F', '11753724'),
('11755529', '12322677', 'MIGUEL JOSE LEON', 'EL RECREO SECTOR 2  CALLE 2 CASA Nº 888', '2473310560-', 'M', '11755529'),
('11756410', '12322677', 'JESUS RAMON SALINAS YNFANTE', 'CALLE LOS TRILLIZOS ENTRE AV CARACAS Y AV FUERZAS ARMADAS', '4141499723-2473413370', 'M', '11756410'),
('11757198', '12322677', 'GERARDO ENRIQUE TOVAR REBOLLEDO', 'CALLEJON MADARIAGANº 65', '4143359247-4243110332', 'M', '11757198'),
('11757859', '12322677', 'WILMER MANUEL GARCIA TOVAR ', 'BARRIO RAUL LEONI 2DA TRANSVERSAL NRO 7-A', '4161404111-', 'M', '11757859'),
('11757914', '12322677', 'LUIS CESAR HERRERA HERNANDEZ', 'EL RECREO SECTOR III CALLE PRINCIPAL Nº 13', '2473310387-4144028018', 'M', '11757914'),
('11760973', '99009009', 'Operador Numero 1', 'San Fernando de Apure', '9999999999-8888888888', 'F', '11760973'),
('11761015', '12322677', 'DANNY SALVADOR MORENO VENERO', 'CALLE EL MANGO Nº 120 LAS MARIA A 2 CUADRAS DE LA HIELERA LA', '4163109564-4269462287', 'M', '11761015'),
('11761654', '12322677', 'JHONNY MANUEL MUJICA', 'URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32', '2475143084-2473412706', 'M', '11761654'),
('11762555', '12322677', 'GREGORY JAVIER VIÑA IZQUIERDO', 'URB. SERAFIN CEDEÑO CALLE Nº 4 CASA Nº 19', '2473420828-4143920979', 'M', '11762555'),
('11842915', '12322677', 'JORGE LUIS HERNANDEZ BOLIVAR', '6TA TRANSVERSAL CASA NRO 58 RESIDENCIAS IRAIDA, APTO 01 BIRU', '2475154849-4145999042', 'M', '11842915'),
('12123930', '12322677', 'DANELLYS JACKELIN BRAVO GONZALEZ', 'AV LOS CENTAUROS, EDIF GIRASOL, APTO A-8', '2473412031-4144598955', 'F', '12123930'),
('12170265', '12322677', 'GARY ALEXANDER GENESI RODRIGUEZ', 'URB LLANO ALTO CALLE ARICHUNA Nº 145', '2472542146-4243291230', 'M', '12170265'),
('12321020', '12322677', 'JOSE MANUEL LOPEZ LOPEZ ', 'CALLE PRINCIPAL DE LOS CENTAUROS ', '4144981313-', 'M', '12321020'),
('12321619', '99009009', 'Operador Numero 2', 'Biruaquita', '5555555555-', 'M', '12321619'),
('12322141', '12322677', 'LUIS ARGELIS PARRA BORJAS', 'CALLEJON MADARIAGA, NRO 9 CERCA DE LA ESCUELA ANDRES BELLO', '2473412533-', 'M', '12322141'),
('12322324', '12322677', 'MAYRA DEL ROSARIO CONTRERAS', 'URB LOS CENTAUROS CALLE PRINCIPAL VEREDA 4 MANZANA F', '2473410684-4144887573', 'F', '12322324'),
('12322535', '12322677', 'HECTOR JOSE CEBALLOS MENDOZA ', 'BARRIO LA ODISEA 5TA TRANSVERSAL AL FINAL', '4144776349-', 'M', '12322535'),
('12322677', '99009009', 'Operador Numero 3', 'San Fernando de Apure', '1111111111-2222222222', 'M', '12322677'),
('12323440', '12322677', 'LUZ MARINA LOPEZ DE MUJICA', 'URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32', '2475143084-4145860325', 'F', '12323440'),
('12323480', '12322677', 'LESME JOSE ECHENIQUE', 'CALLE GIRARDOT NRO 80 A 50 MTRS DE LA AV. FUERZAS ARMADAS', '2473421767-4144762593', 'M', '12323480'),
('12324342', '12322677', 'YARIDY JOSEFINA MELO GAMEZ', 'LOS CENTAUROS CALLE PRINCIPAL Nº 09', '4144735534-4144633497', 'F', '12324342'),
('12325793', '12322677', 'JOSE LUIS CASTILLO POLANCO', 'URB. TAMARINDO, SECTOR 1, CASA NRO 12.', '2473414514-4149443952', 'M', '12325793'),
('12442551', '12322677', 'MELVIN ENRIQUE ORTEGA VILCHEZ', 'CALLE PAEZ CON QUESERAS DEL MEDIO CASA Nº 74', '4124517113-4144737043', 'M', '12442551'),
('12547495', '99009009', 'Operador Numero 4', 'Calabozo', '1111111111-3453453453', 'M', '12547495'),
('12581319', '12322677', 'YELITZA ISABEL SILVA', 'AV. FUERZAS ARMADAS, SECTOR DIOSESANO, DETRAS DEL COLEGIO, N', '2473424137-4140175810', 'F', '12581319'),
('12584108', '12322677', 'ALVARO AURELIO DIAZ MUÑOZ', 'BIRUACA 7ma TRANSVERSAL CASA Nº 16', '2473645484-4140355934', 'M', '12584108'),
('12585045', '12322677', 'JUAN RAMON RODRIGUEZ BLANCO', 'BARRIO CAMPO ALEGRE, CALLE EL GUAYABO, VEREDA EL JOBO, NRO 0', '2473413864-', 'M', '12585045'),
('12633145', '12322677', 'JUAN GABRIEL PEÑA LUNA', 'URB. PARAISO, CUARTA CALLE, 2DA CASA', '2473424759-4243317237', 'M', '12633145'),
('12822308', '12322677', 'DIANA ANGELICA DE LA ROSA DE PIÑATE', 'SERAFIN CEDEÑO VEREDA 9 Nº 13', '2473422919-4162346174', 'F', '12822308'),
('12900925', '12322677', 'NESTOR MARIA HERNANDEZ ', 'BARRIO JOSE ANTONIO PAEZ 2do CALLEJON CASA Nº 4', '2473422337-4127849234', 'M', '12900925'),
('12903263', '12322677', 'ILVIA NIXORE CARABALLO', 'URB. JOSE ANTONIO PAEZ CALLE 21 Nº 26', '2472540631-4241743892', 'F', '12903263'),
('12903783', '12322677', 'MELGAR ALFREDO GOMEZ CASTILLO', 'URB. EL TAMARINDO CALLE 5 Nº 16', '2478085455-4142971861', 'F', '12903783'),
('12903952', '12322677', 'BELKYS YUSANYS HERNANDEZ SALAZAR', 'BARRIO SAN JOSE, SECTOR 2, CALLE LAS ACASIAS AL FINAL, NRO 2', '0-4149351598', 'F', '12903952'),
('12904401', '12322677', 'JOSE RICARDO RUIZ SALINAS', 'ENTRADA PRINCIPAL DE SANTA RUFINA ', '4143470011-', 'M', '12904401'),
('12925467', '12322677', 'YASMIRDA DEL VALLE APARICIO RODRIGUEZ', 'URB. LOS CENTAUROS, MANZANA 2-E-15, NRO 2, CERCA DE COMPRA Y', '2473411515-4161449647', 'F', '12925467'),
('13040877', '12322677', 'LARRY AVISAL HENRIQUEZ ESCALONA', 'BARRIO JOSE WILFREDO RODRIGUEZ,. CALLE PRINCIPAL', '0-', 'M', '13040877'),
('13254403', '12322677', 'YENNYS DIVERSI DONAIRE', 'LA UNION DE BARINAS CALLE LA BONQUERA AL FINAL', '2475156235-4140396978', 'F', '13254403'),
('13723533', '12322677', 'FELIX JOSE TORRES VILLANUEVA', 'AV LOS CENTAUROS AL LADO FARMACIA SAN MARCOS SAN FDO APURE', '2473423564-4143594355', 'M', '13723533'),
('14218482', '12322677', 'JHONNY EGREDYS MORENO', 'BARRIO JOSE WILFREDO  RODRIGUEZ SECTOR I CASA NRO 34 SAN FDO', '4267445378-', 'M', '14218482'),
('14947894', '12322677', 'CARLOS LUIS GARRIDO PEREZ', 'CALLE 5 DE JULIO URB. RAUL LEONI ACHAGUAS', '2478821921-4161401752', 'M', '14947894'),
('15046274', '12322677', 'FERMIN JOVANNY LOVERA CADENAS', 'CALLE PIAR AL FINAL DIAGONAL A LA AV FUERZAS ARMADAS SAN FDO', '2473411280-4145998874', 'M', '15046274'),
('15047174', '12322677', 'BERMYS JOSE SANTANA TERAN', 'CALLE RODRIGUEZ RINCONES NRO 20', '2473421046-4269322796', 'M', '15047174'),
('15100167', '12322677', 'JORGE LUIS HERNANDEZ BOLIVAR', 'URB. EL MERECURE CALLE 13 SECTOR 02 CASA NRO 25 BIRUACA', '2473640595-4149456716', 'M', '15100167'),
('15512959', '12322677', 'ISLEYER ESTILITA GALLIPOLY SIERRA', 'CALLE BOYACA NRO 25 ACHAGUAS ESTADO APURE.-', '2478820248-4243754089', 'F', '15512959'),
('15546191', '12322677', 'YOSNER EDUARDO ROSALES ACOSTA', 'SECTOR SAMAN LLORON CALLE BARINAS C/C EL MANGO NRO 2', '2473411765-4144750382', 'M', '15546191'),
('15998167', '12322677', 'FREDDY ALEXIS LOPEZ CASTILLO ', 'AV. MIRANDA, LA DEFENSA CALLE PRINCIPAL', '2475154100-4243685368', 'M', '15998167'),
('15998947', '12322677', 'SEIKY ASTRID DE LOS D. SAAVEDRA FREITES', 'AV. MIRANDA EDF. NAVAS PISO 1-1 SECTOR PICACHO', '2473412844-4243602362', 'F', '15998947'),
('16913015', '12322677', 'July Diaz', 'Calabozo', '2468711222-', 'F', '16913015'),
('3248351', '12322677', 'MARWA ALCHEBEL', 'CASA DE ZINC AL LADO DE LA ZONA EDUCATIVA', '4127569899-', 'F', '3248351'),
('4111623', '12322677', 'JESUS MANUEL CONTRERAS CONTRERAS', 'URB. SAN FDO 2000, CASA 5, PARCELA 9, MUNICIPIO CAMAGUAN EDO', '247342914-4145434020', 'M', '4111623'),
('5359808', '12322677', 'ELISEO DE JESUS TORRES GOMEZ', 'URB. LOS TAMARINDOS SECTOR 01, VEREDA 06, CASA Nº 24', '0-0', 'M', '5359808'),
('5360672', '12322677', 'FRANKLIN JOSE PEREZ CASTILLO', 'URB. LOS TAMARINDOS, SECTOR 1 VEREDA 3 CASA Nº 8', '2473411519-4140503839', 'M', '5360672'),
('6026273', '12322677', 'SERGIO ANTONIO COLOMA DURAN', 'URB. LOS TAMARINDOS, VEREDA 1 Nº 3  DETRAS DEL COMERCIAL LA ', '2473425473-4144748560', 'M', '6026273'),
('6304676', '12322677', 'JAVIER ALEXANDER REYES ', 'URB. LOS TAMARINDOS, SECTOR I, VEREDA 55, CASA NRO 1', '2473424737-4144604294', 'M', '6304676'),
('6327276', '12322677', 'Nombre del Estudiante', 'CALLE PPAL CASA NRO 28 ACHAGUAS', '2475155451-4269102113', 'M', '6327276'),
('6570614', '12322677', 'DORIS DE LA CRUZ AGUIRRE ', 'CARRETERA VIA ARICHUNA SECTOR PASO ANCHO', '0-', 'F', '6570614'),
('7333025', '12322677', 'FRANCOWALTER ALCALA MAMANI', 'NO PRESENTO', '0-', 'M', '7333025'),
('77777777', '12322677', '777ddddddddddddddd', 'ddddddddddddd', '4444444444-', 'M', '77777777'),
('8160704', '12322677', 'Nombre del Estudiante', 'CALLE MIRANDA, CASA Nº 39', '2473429198-', 'M', '8160704'),
('8192754', '12322677', 'SILVIA BRUMELIS ROJAS NUÑEZ', 'CALLE NEGRO PRIMERO NRO 71, CERCA DE EXPRESOS LOS LLANOS', '2473410932-4144788070', 'F', '8192754'),
('8196070', '12322677', 'ORLANDO JOSE OJEDA GAMEZ', 'URB LA TRINIDAD CALLE LA LAGUNA Nº 87', '2473427058-4143440275', 'M', '8196070'),
('82227353', '12322677', 'LUIS CARLOS GRANADOS RUEDA', 'URB SANTA RUFINA 1RA ETAPA ', '2479895036-4243168777', 'M', '82227353'),
('8561707', '12322677', 'ABELINO MONTAÑO MONTES', 'NO PRESENTO', '0-', 'M', '8561707'),
('9107059', '12322677', 'PABLO ALEJANDRO LEON MARAGUAY', 'NO PRESENTO', '0-', 'M', '9107059'),
('91222222', '12322677', 'Fulanito Extremista', 'deqweqweq', '8888888888-', 'M', '91222222'),
('91234567', '12322677', 'Fulanita Extrema', 'Direccion de Fulanita Extrema', '1111111111-', 'F', '91234567'),
('9203409', '12322677', 'ANA MARIA GARCIA FRANCO', 'BARRIO ANTONIO JOSE DE SUCRE', '4243409553-', 'F', '9203409'),
('9590153', '12322677', 'BLANCA ARACELIS NUÑEZ DE HERRERA', 'BARRIO LA HIDALGUIA, CALLE PRINCIPAL NRO 38', '4140509458-2473426121', 'F', '9590153'),
('9590295', '12322677', 'SANTA GUILLERMINA CASTILLO DE MARCHENA', 'BARRIO EL CALVARIO, CALLE PRINCIPAL, CASA NRO. 94-37', '2473420110-4162489048', 'F', '9590295'),
('9591973', '12322677', 'ASDRUBAL HERNAN RUIZ RAMOS', 'LA RINCONERA VIA ACHAGUAS', '2475141156-4141431341', 'M', '9591973'),
('9596987', '12322677', 'JESUS ALBERTO LUGO RANGEL', 'URB. MERECURE, SECTOR 4, TRANSVERSAL II', '2473640923-4144871432', 'M', '9596987'),
('9684187', '12322677', 'RAMON ANTONIO MORENO PINTO ', 'AV. REVOLUCION CASA Nº 13 ', '2473420362-4164561157', 'M', '9684187'),
('9684407', '12322677', 'JOSE GREGORIO GARCIA BRICEÑO', 'URB. LOS TAMARINDOS, AV. JULIO CESAR SANCHEZ OLIVO, SECTOR 1', '4268453158-', 'M', '9684407'),
('9747257', '12322677', 'RICHARD ANTONIO CUETO SOTO', 'URB. LA TRINIDAD, 2DA ETAPA, CASA NRO 11', '4164411295-4144871472', 'M', '9747257'),
('9870043', '12322677', 'JHONNY OVELLEIRO BENITEZ RIVAS', 'S/D', '0-0', 'M', '9870043'),
('9872295', '12322677', 'EUDDY RAFAEL ROBERTI HERNANDEZ', 'CALLE SANTA ANA Nº 65', '2473421794-4149453541', 'M', '9872295'),
('9873538', '12322677', 'JOSE RICARDO RUIZ SALINAS', 'ENTRADA PRINCIPAL DE SANTA RUFINA CASA Nº 15', '2473640780-4143383124', 'M', '9873538'),
('9875569', '12322677', 'CARLOS ALBERTO ACOSTA SILVA', 'URB JOSE ANTONIO PAEZ BLOQUE 1 APTO 00-04, PB ', '2472548486-4266403540', 'M', '9875569'),
('9876685', '12322677', 'JUAN ALEXANDER FLORES FLORES', 'CALLE PARAGUAY Nº 23 ', '2473420991-4144581606', 'M', '9876685'),
('99009009', '99009009', 'Administrador', 'UNEFA - Nucleo Apure', '0-', 'F', '99009009'),
('99222222', '12322677', 'Roxanne de los Angeles Pulido Vilchez', 'Calle Plaza, numero 5', '3333333333-', 'F', '99222222'),
('99333333', '12322677', 'Fulanita Extrema pero Chevere', 'deqweqweq dsdadsadada', '8888888888-3333333333', 'F', '99333333');

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

INSERT INTO `documento` (`numDoc`, `fechaAbre`, `dpto`, `tipoDoc`, `fecha`, `titulo`, `ubicacion`, `login`) VALUES
(1, '2013-03-07', 'Biblioteca-Dpto. Desarrollo Estudiantil', 'Reglamentos y manuales de la Unefa', '2013-03-28', 'Actividad realizada en Decanato', 'Estante 2, Carpeta 2', '12547495'),
(4, '2013-03-19', 'Dpto. Postgrado-Div. Academica', 'Normativa Legal por Ingreso', '2013-03-19', 'Solicitud de nuevos manuales en Biblioteca', 'Estante 1, Carpeta 1', '12322677'),
(5, '2013-03-28', 'Unidad de Salud Integral-Dpto. Desarrollo Est', 'Convenios', '2013-03-28', 'Convenio con INSALUD para chequeos medicos', 'Estante 4, Carpeta 7', '12322677');

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

INSERT INTO `expediente` (`numExp`, `cedulaExp`, `fechaAbre`, `fechaAct`, `codEsp`, `codTipoExp`, `requisitos`, `ubicacion`, `amonesta`, `observa`, `activo`, `login`, `reqpend`) VALUES
(1, '8160704', '2012-06-06', '2013-04-08', 1, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;', 'ARCHIVO', 'N', 'NOTAS ORIGINALES; FALTAN COPIAS', 'S', '12322677', 6),
(2, '10620247', '2012-06-06', '2013-04-17', 1, 3, ' 37;39;41;42;45;47;48;53;', 'ARCHIVO', 'N', '', 'N', '12322677', 9),
(3, '10621655', '2012-06-25', '2013-04-17', 1, 3, ' 38;39;40;42;45;46;47;48;53;', 'ARCHIVO', 'N', 'NOTAS ORIGINALES; FALTAN COPIAS', 'N', '12322677', 8),
(4, '11236073', '2012-06-25', '2013-04-17', 1, 3, ' 37;38;39;42;45;46;47;48;53;', 'ARCHIVO', 'N', 'NOTAS ORIGINALES; FALTAN COPIAS', 'N', '12322677', 8),
(5, '6327276', '2012-11-12', '2013-04-08', 5, 3, ' 37;38;39;40;41;42;43;44;45;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(6, '11691494', '2012-11-12', '2013-04-08', 5, 3, ' 37;38;39;40;41;42;43;44;45;46;48;53;', 'ESTANTE NRO 2', 'N', 'ACTUALIZAR EXP Y PRESENTÓ TITULO EXTRAVIADO', 'S', '12322677', 8),
(7, '4111623', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;41;42;53;', 'ESTANTE NRO 01', 'N', 'NOTAS EN FORMATO VIEJO', 'N', '12322677', 10),
(8, '6304676', '2012-11-12', '2013-04-08', 6, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 8),
(9, '11757859', '2012-11-12', '2013-04-08', 5, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(10, '11842915', '2012-11-12', '2013-04-08', 5, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 6),
(11, '8192754', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;42;45;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 8),
(12, '13254403', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 6),
(13, '9203409', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;42;45;48;53;', 'ESTANTE NRO 01', 'N', 'TARJETA DE IDENTIDA POR SER COLOMBIANA', 'S', '12322677', 9),
(14, '9590153', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;41;42;45;46;47;48;49;53;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 5),
(15, '13723533', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 8),
(16, '14218482', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(17, '14947894', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(18, '15046274', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(19, '9590295', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;41;42;45;46;47;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 7),
(20, '15047174', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 7),
(21, '9596987', '2012-11-12', '2013-04-17', 6, 3, ' 38;39;40;42;43;45;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 10),
(22, '15100167', '2012-11-12', '2013-04-17', 5, 3, ' 37;39;40;42;45;47;48;49;52;', 'ESTANTE NRO 2', 'N', 'DOCUMENTOS INCOMPLETOS', 'S', '12322677', 8),
(23, '9684407', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;40;42;45;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 9),
(24, '15512959', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', 'TITULO EXTRAVIADO', 'S', '12322677', 8),
(25, '15546191', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 6),
(26, '9747257', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;40;42;45;46;47;48;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 9),
(27, '15998947', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;47;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 8),
(28, '15998167', '2012-11-12', '2013-04-17', 5, 3, ' 37;38;39;40;42;45;46;48;53;', 'ESTANTE NRO 2', 'N', '', 'S', '12322677', 8),
(29, '10617017', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;41;42;45;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 8),
(30, '10619778', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;40;41;42;45;46;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 7),
(31, '10622292', '2012-11-12', '2013-04-17', 6, 3, ' 37;39;40;42;45;46;47;48;49;53;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 7),
(32, '11237086', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;42;45;46;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 8),
(33, '11244576', '2012-11-12', '2013-04-17', 6, 3, ' 38;39;40;41;42;45;46;47;48;49;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 7),
(34, '11244600', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;42;45;47;48;49;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 8),
(35, '11761654', '2012-11-12', '2013-04-17', 6, 3, ' 37;38;39;40;41;42;45;47;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 8),
(36, '3248351', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;40;45;48;53;', 'ESTANTE Nº 1', 'N', 'ESTUDIANTE EXTRANJERO FALTA TITULO TRAMITANDO POR LA ZONA EDUCATIVA', 'S', '12322677', 1),
(37, '5359808', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;42;45;47;48;', '01', 'N', '', 'N', '12322677', 1),
(38, '5360672', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;45;47;48;49;53;', '01', 'N', '', 'S', '12322677', 1),
(39, '6026273', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(40, '7333025', '2012-11-13', '2012-11-13', 4, 3, ' 40;42;46;', '01', 'N', 'ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS  ', 'S', '12322677', 1),
(41, '8196070', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(42, '8561707', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', 'ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS', 'S', '12322677', 0),
(43, '82227353', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;42;45;46;47;48;53;', '01', 'N', 'ALUMNO EXTRANJERO, CAMBIAR FORMATO DE NOTAS ', 'S', '12322677', 1),
(44, '9107059', '2012-11-13', '2012-11-13', 4, 3, ' 40;', '01', 'N', 'ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS', 'S', '12322677', 1),
(45, '9591973', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(46, '9870043', '2012-11-13', '2012-11-13', 6, 3, ' 37;38;39;40;42;45;47;53;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 1),
(47, '9684187', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(48, '9872295', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;41;42;45;46;47;48;53;', '01', 'N', '', 'N', '12322677', 1),
(49, '6570614', '2012-11-13', '2012-11-13', 4, 3, ' 38;39;41;42;45;47;48;53;', '01', 'N', '', 'N', '12322677', 1),
(50, '12123930', '2012-11-13', '2012-11-13', 6, 3, ' 37;38;39;40;41;42;45;46;47;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 1),
(51, '12322141', '2012-11-13', '2012-11-13', 6, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', 'ESTANTE NRO 01', 'N', 'COPIA CERTIFICADA DE REGISTRO TITULO', 'S', '12322677', 0),
(52, '9873538', '2012-11-13', '2012-11-13', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;52;53;', '01', 'N', '', 'S', '12322677', 1),
(53, '9875569', '2012-11-14', '2012-11-14', 4, 3, ' 37;39;40;41;42;43;45;46;47;48;53;', '01', 'N', 'FALTA NOTAS BASICO', 'S', '12322677', 1),
(54, '9876685', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(55, '10159955', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;40;41;45;47;48;53;', '01', 'N', 'FALTA FONDO NEGRO DEL TITULO', 'S', '12322677', 1),
(56, '10615965', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;41;42;45;47;48;53;', '01', 'N', '', 'N', '12322677', 1),
(57, '10616288', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(58, '10617990', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(59, '11198116', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(60, '12323440', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;40;41;42;45;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 1),
(61, '11235659', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;42;45;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(62, '11238483', '2012-11-14', '2012-11-14', 4, 3, ' 37;38;39;40;42;45;47;48;53;', '01', 'N', '', 'N', '12322677', 1),
(63, '12323480', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;40;41;42;45;47;49;53;', 'ESTANTE NRO 01', 'N', 'NOTAS CERTIFICADAS EN FORMATO VIEJO', 'S', '12322677', 1),
(64, '12325793', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;42;45;47;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 1),
(65, '12581319', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;40;42;45;47;48;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 1),
(66, '12585045', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;41;42;45;46;47;48;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 1),
(67, '12633145', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;42;43;45;46;47;48;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 1),
(68, '12903952', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;40;41;42;45;47;48;49;52;', 'ESTANTE NRO 01', 'N', '', 'S', '12322677', 1),
(69, '12925467', '2012-11-14', '2012-11-14', 6, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', 'ESTANTE NRO 01', 'N', '', 'N', '12322677', 0),
(70, '11240153', '2012-11-15', '2012-11-15', 4, 3, ' 38;39;40;42;45;47;48;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 1),
(71, '11241050', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(72, '11753724', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;42;45;47;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 1),
(73, '11755529', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(74, '11756410', '2012-11-15', '2012-11-15', 4, 3, ' 37;39;40;42;45;47;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 1),
(75, '11757198', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(76, '11757914', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(77, '11761015', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;52;53;', '01', 'N', '', 'S', '12322677', 1),
(78, '11762555', '2012-11-15', '2012-11-15', 4, 3, ' 37;39;40;42;48;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 1),
(79, '12170265', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'N', '12322677', 0),
(80, '12321020', '2012-11-15', '2012-11-15', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 1),
(81, '12322324', '2012-11-15', '2013-04-18', 4, 3, ' 38;39;40;42;45;46;47;48;53;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 8),
(82, '12322535', '2012-11-15', '2013-04-17', 4, 3, ' 37;38;39;40;42;45;47;48;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 9),
(83, '12324342', '2012-11-15', '2013-04-18', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(84, '12442551', '2012-11-15', '2013-04-17', 4, 3, ' 37;38;39;40;42;45;46;47;48;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 8),
(85, '12584108', '2012-11-15', '2013-04-17', 4, 3, ' 37;40;42;45;48;', '01', 'N', 'FALTAN DOCUMENTOS', 'N', '12322677', 12),
(86, '12822308', '2012-11-15', '2013-04-17', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'N', '12322677', 6),
(87, '12900925', '2012-11-15', '2013-04-18', 4, 3, ' 37;38;39;40;42;45;46;47;48;49;', '01', 'N', '', 'N', '12322677', 7),
(88, '12903263', '2012-11-15', '2013-04-17', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;49;53;', '01', 'N', '', 'S', '12322677', 5),
(89, '12903783', '2012-11-15', '2013-04-17', 4, 3, ' 37;38;39;40;41;42;45;46;47;48;53;', '01', 'N', '', 'S', '12322677', 6),
(90, '12904401', '2012-11-15', '2013-04-18', 4, 3, ' 37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;', '01', 'N', '', 'S', '12322677', 0),
(95, '10111222', '2012-11-17', '2013-04-18', 6, 11, ' 123;124;125;126;', 'ESTANTE 1', 'N', 'Le cambie el telefono', 'S', '12322677', 0),
(98, '11222444', '2012-11-17', '2013-04-17', 23, 5, ' 65;66;67;68;69;70;71;72;73;', 'ESTANTE 1', 'N', 'Le cambie el telefono y le agregue unos requisitos', 'S', '12322677', 0);

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

INSERT INTO `historico` (`codHist`, `cedulaOp`, `numExp`, `numDoc`, `fechaHora`, `operacion`, `cambios`, `tabla`) VALUES
(140, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10111222 ; Nombre: JOSE DE JESUS URBANEJA IZQUIERDO ; Direccion: CALABOZO ; Telefono: 4243038087-3453453453 ; Sexo: M', 'datosPer'),
(141, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10111333 ; Nombre: BRESMELIMAR AIMEL ; Direccion: Calle Plaza ; Telefono: 4243038087- ; Sexo: F', 'datosPer'),
(142, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10111444 ; Nombre: BRESMEL JESUS ; Direccion: Calle Plaza, numero 5 ; Telefono: 4243038087- ; Sexo: M', 'datosPer'),
(143, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10159955 ; Nombre: MOISES ANDRES SEPULVEDA CHAVARRIAGA ; Direccion: URB LLANO ALTO CALLE META Nº 346 ; Telefono: 4249670887- ; Sexo: M', 'datosPer'),
(144, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10615965 ; Nombre: JOSE DE JESUS LOPEZ SILVA ; Direccion: LA CRUZ DE AGUA VIA SAN JUAN DE PAYARA ; Telefono: 2475149923-4140848781 ; Sexo: M', 'datosPer'),
(145, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10616288 ; Nombre: DIMAN ANTONIO COLINA RIVERO ; Direccion: SECTOR GUASIMO 2 Nº 52 CALLE PRINCIPAL ; Telefono: 2473411618- ; Sexo: M', 'datosPer'),
(146, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10617017 ; Nombre: RAFAEL MANUEL TORRES CERPA ; Direccion: URB. SANTA RUFINA, SECTOR 1, CALLE 10, NRO 35 ; Telefono: 2473645815-4161404136 ; Sexo: M', 'datosPer'),
(147, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10617990 ; Nombre: YRMA URIMARE VERENZUELA ROMAN ; Direccion: BARRIO SAN JOSE Nº 2257 BIRUACA ; Telefono: 2473645036-4141784785 ; Sexo: F', 'datosPer'),
(148, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10619778 ; Nombre: ROSA MELEIDA GONZALEZ PEÑA ; Direccion: CALLE LOS JABILLOS NRO 21 CERCA DE VARIEDADES MARGARITA ; Telefono: 2473415023-4144740940 ; Sexo: F', 'datosPer'),
(149, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10620247 ; Nombre: Nombre del Estudiante ; Direccion: BARRIO JOSE W. RODRIGUEZ, SECTOR 2, CASA Nº 7 ; Telefono: 2475143146-4141478192 ; Sexo: F', 'datosPer'),
(150, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10621655 ; Nombre: Nombre del Estudiante ; Direccion: AV. CARACAS 2DA TRANSVERSAL BARRIO 9 DICIEMBRE ; Telefono: 4144735677- ; Sexo: F', 'datosPer'),
(151, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10622292 ; Nombre: JULIO CESAR HIDALGO LOPEZ ; Direccion: URB. LOS TAMARINDOS, SECTOR LAS LLANERITAS, CASA NRO 075 ; Telefono: 2475111026- ; Sexo: M', 'datosPer'),
(152, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11198116 ; Nombre: VICTOR MANUEL CHACON UBAC ; Direccion: RECREO 1 CALLE ANGEL HURTADO Nº 10 ; Telefono: 4167384236- ; Sexo: M', 'datosPer'),
(153, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11222444 ; Nombre: JAIMAR KARINA ; Direccion: Calle Plaza, numero 5 ; Telefono: 1212122121-3453453453 ; Sexo: F', 'datosPer'),
(154, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11235659 ; Nombre: DARRYS RAMON ROMERO GALLEGOS ; Direccion: VECINDARIO JUANAPARO PARCELA 13 FUNDO SD ; Telefono: 2475157968-4141470459 ; Sexo: M', 'datosPer'),
(155, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11236073 ; Nombre: Nombre del Estudiante ; Direccion: BARRIO SANTA ANA DIAGONAL A LA CANCHA ; Telefono: 4168479165- ; Sexo: F', 'datosPer'),
(156, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11237086 ; Nombre: JONNY MOISES AREVALO SALAZAR ; Direccion: GUASIMO I, CALLE PRINCIPAL NRO 16 ; Telefono: 2475154318-4144759830 ; Sexo: M', 'datosPer'),
(157, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11238483 ; Nombre: RUTH IRENE ESCOBAR ; Direccion: BARRIO VALLE VERDE 2 CALLE CASA Nº 4 ; Telefono: 4163398686- ; Sexo: F', 'datosPer'),
(158, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11240153 ; Nombre: GLADYS MIREYA GALLARDO  ; Direccion: BARRIO LA HIDALGUIA II CALLE PRINCIPAL AL FINAL Nº 47 ; Telefono: 2473412941-4165417850 ; Sexo: F', 'datosPer'),
(159, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11241050 ; Nombre: FELIX ENRIQUE LADERA HERNANDEZ ; Direccion: URB. LUIS HERRERA CALLE PRINCIPAL Nº 13 ; Telefono: 4145946878-4162346090 ; Sexo: M', 'datosPer'),
(160, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11244576 ; Nombre: ELIO RAFAEL TOLEDO ; Direccion: BARRIO 9 DICIEMBRE, DETRAS DE LA RESIDENCIA DEL GOBERNADOR,  ; Telefono: 2473425103-4162402645 ; Sexo: M', 'datosPer'),
(161, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11244600 ; Nombre: KALIA JOSEFINA HERRERA BARONI ; Direccion: URB. ALTOS DE PUERTO MIRANDA, MANZANA 20, NRO 20, EDO GUARIC ; Telefono: 2473415151-4144753973 ; Sexo: F', 'datosPer'),
(162, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11691494 ; Nombre: MIGUEL JUSGLADER ANGARITA NAVARRO ; Direccion: URB. JOSE FELIX RIBAS CALLE 07 CASA S/N SAN FDO APURE ; Telefono: 4147541300- ; Sexo: M', 'datosPer'),
(163, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11753724 ; Nombre: SOL MARIA CASTILLO  ; Direccion: BARRIO VALLE VERDE 2 DA CALLE Nº 5 ; Telefono: 2475146771-4144911248 ; Sexo: F', 'datosPer'),
(164, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11755529 ; Nombre: MIGUEL JOSE LEON ; Direccion: EL RECREO SECTOR 2  CALLE 2 CASA Nº 888 ; Telefono: 2473310560- ; Sexo: M', 'datosPer'),
(165, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11756410 ; Nombre: JESUS RAMON SALINAS YNFANTE ; Direccion: CALLE LOS TRILLIZOS ENTRE AV CARACAS Y AV FUERZAS ARMADAS ; Telefono: 4141499723-2473413370 ; Sexo: M', 'datosPer'),
(166, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757198 ; Nombre: GERARDO ENRIQUE TOVAR REBOLLEDO ; Direccion: CALLEJON MADARIAGANº 65 ; Telefono: 4143359247-4243110332 ; Sexo: M', 'datosPer'),
(167, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757859 ; Nombre: WILMER MANUEL GARCIA TOVAR  ; Direccion: BARRIO RAUL LEONI 2DA TRANSVERSAL NRO 7-A ; Telefono: 4161404111- ; Sexo: M', 'datosPer'),
(168, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757914 ; Nombre: LUIS CESAR HERRERA HERNANDEZ ; Direccion: EL RECREO SECTOR III CALLE PRINCIPAL Nº 13 ; Telefono: 2473310387-4144028018 ; Sexo: M', 'datosPer'),
(169, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11760973 ; Nombre: Operador Numero 1 ; Direccion: San Fernando de Apure ; Telefono: 9999999999-8888888888 ; Sexo: F', 'datosPer'),
(170, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11761015 ; Nombre: DANNY SALVADOR MORENO VENERO ; Direccion: CALLE EL MANGO Nº 120 LAS MARIA A 2 CUADRAS DE LA HIELERA LA ; Telefono: 4163109564-4269462287 ; Sexo: M', 'datosPer'),
(171, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11761654 ; Nombre: JHONNY MANUEL MUJICA ; Direccion: URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32 ; Telefono: 2475143084-2473412706 ; Sexo: M', 'datosPer'),
(172, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11762555 ; Nombre: GREGORY JAVIER VIÑA IZQUIERDO ; Direccion: URB. SERAFIN CEDEÑO CALLE Nº 4 CASA Nº 19 ; Telefono: 2473420828-4143920979 ; Sexo: M', 'datosPer'),
(173, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11842915 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: 6TA TRANSVERSAL CASA NRO 58 RESIDENCIAS IRAIDA, APTO 01 BIRU ; Telefono: 2475154849-4145999042 ; Sexo: M', 'datosPer'),
(174, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12123930 ; Nombre: DANELLYS JACKELIN BRAVO GONZALEZ ; Direccion: AV LOS CENTAUROS, EDIF GIRASOL, APTO A-8 ; Telefono: 2473412031-4144598955 ; Sexo: F', 'datosPer'),
(175, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12170265 ; Nombre: GARY ALEXANDER GENESI RODRIGUEZ ; Direccion: URB LLANO ALTO CALLE ARICHUNA Nº 145 ; Telefono: 2472542146-4243291230 ; Sexo: M', 'datosPer'),
(176, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12321020 ; Nombre: JOSE MANUEL LOPEZ LOPEZ  ; Direccion: CALLE PRINCIPAL DE LOS CENTAUROS  ; Telefono: 4144981313- ; Sexo: M', 'datosPer'),
(177, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12321619 ; Nombre: Operador Numero 2 ; Direccion: Biruaquita ; Telefono: 5555555555- ; Sexo: M', 'datosPer'),
(178, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322141 ; Nombre: LUIS ARGELIS PARRA BORJAS ; Direccion: CALLEJON MADARIAGA, NRO 9 CERCA DE LA ESCUELA ANDRES BELLO ; Telefono: 2473412533- ; Sexo: M', 'datosPer'),
(179, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322324 ; Nombre: MAYRA DEL ROSARIO CONTRERAS ; Direccion: URB LOS CENTAUROS CALLE PRINCIPAL VEREDA 4 MANZANA F ; Telefono: 2473410684-4144887573 ; Sexo: F', 'datosPer'),
(180, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322535 ; Nombre: HECTOR JOSE CEBALLOS MENDOZA  ; Direccion: BARRIO LA ODISEA 5TA TRANSVERSAL AL FINAL ; Telefono: 4144776349- ; Sexo: M', 'datosPer'),
(181, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(182, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12323440 ; Nombre: LUZ MARINA LOPEZ DE MUJICA ; Direccion: URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32 ; Telefono: 2475143084-4145860325 ; Sexo: F', 'datosPer'),
(183, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12323480 ; Nombre: LESME JOSE ECHENIQUE ; Direccion: CALLE GIRARDOT NRO 80 A 50 MTRS DE LA AV. FUERZAS ARMADAS ; Telefono: 2473421767-4144762593 ; Sexo: M', 'datosPer'),
(184, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12324342 ; Nombre: YARIDY JOSEFINA MELO GAMEZ ; Direccion: LOS CENTAUROS CALLE PRINCIPAL Nº 09 ; Telefono: 4144735534-4144633497 ; Sexo: F', 'datosPer'),
(185, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12325793 ; Nombre: JOSE LUIS CASTILLO POLANCO ; Direccion: URB. TAMARINDO, SECTOR 1, CASA NRO 12. ; Telefono: 2473414514-4149443952 ; Sexo: M', 'datosPer'),
(186, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12442551 ; Nombre: MELVIN ENRIQUE ORTEGA VILCHEZ ; Direccion: CALLE PAEZ CON QUESERAS DEL MEDIO CASA Nº 74 ; Telefono: 4124517113-4144737043 ; Sexo: M', 'datosPer'),
(187, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12581319 ; Nombre: YELITZA ISABEL SILVA ; Direccion: AV. FUERZAS ARMADAS, SECTOR DIOSESANO, DETRAS DEL COLEGIO, N ; Telefono: 2473424137-4140175810 ; Sexo: F', 'datosPer'),
(188, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12584108 ; Nombre: ALVARO AURELIO DIAZ MUÑOZ ; Direccion: BIRUACA 7ma TRANSVERSAL CASA Nº 16 ; Telefono: 2473645484-4140355934 ; Sexo: M', 'datosPer'),
(189, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12585045 ; Nombre: JUAN RAMON RODRIGUEZ BLANCO ; Direccion: BARRIO CAMPO ALEGRE, CALLE EL GUAYABO, VEREDA EL JOBO, NRO 0 ; Telefono: 2473413864- ; Sexo: M', 'datosPer'),
(190, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12633145 ; Nombre: JUAN GABRIEL PEÑA LUNA ; Direccion: URB. PARAISO, CUARTA CALLE, 2DA CASA ; Telefono: 2473424759-4243317237 ; Sexo: M', 'datosPer'),
(191, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12822308 ; Nombre: DIANA ANGELICA DE LA ROSA DE PIÑATE ; Direccion: SERAFIN CEDEÑO VEREDA 9 Nº 13 ; Telefono: 2473422919-4162346174 ; Sexo: F', 'datosPer'),
(192, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12900925 ; Nombre: NESTOR MARIA HERNANDEZ  ; Direccion: BARRIO JOSE ANTONIO PAEZ 2do CALLEJON CASA Nº 4 ; Telefono: 2473422337-4127849234 ; Sexo: M', 'datosPer'),
(193, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903263 ; Nombre: ILVIA NIXORE CARABALLO ; Direccion: URB. JOSE ANTONIO PAEZ CALLE 21 Nº 26 ; Telefono: 2472540631-4241743892 ; Sexo: F', 'datosPer'),
(194, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903783 ; Nombre: MELGAR ALFREDO GOMEZ CASTILLO ; Direccion: URB. EL TAMARINDO CALLE 5 Nº 16 ; Telefono: 2478085455-4142971861 ; Sexo: F', 'datosPer'),
(195, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903952 ; Nombre: BELKYS YUSANYS HERNANDEZ SALAZAR ; Direccion: BARRIO SAN JOSE, SECTOR 2, CALLE LAS ACASIAS AL FINAL, NRO 2 ; Telefono: 0-4149351598 ; Sexo: F', 'datosPer'),
(196, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(197, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12925467 ; Nombre: YASMIRDA DEL VALLE APARICIO RODRIGUEZ ; Direccion: URB. LOS CENTAUROS, MANZANA 2-E-15, NRO 2, CERCA DE COMPRA Y ; Telefono: 2473411515-4161449647 ; Sexo: F', 'datosPer'),
(198, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13040877 ; Nombre: LARRY AVISAL HENRIQUEZ ESCALONA ; Direccion: BARRIO JOSE WILFREDO RODRIGUEZ,. CALLE PRINCIPAL ; Telefono: 0- ; Sexo: M', 'datosPer'),
(199, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13254403 ; Nombre: YENNYS DIVERSI DONAIRE ; Direccion: LA UNION DE BARINAS CALLE LA BONQUERA AL FINAL ; Telefono: 2475156235-4140396978 ; Sexo: F', 'datosPer'),
(200, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13256357 ; Nombre: Operador Numero 4 ; Direccion: En San Fernando 2000 ; Telefono: 1111111118- ; Sexo: F', 'datosPer'),
(201, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13723533 ; Nombre: FELIX JOSE TORRES VILLANUEVA ; Direccion: AV LOS CENTAUROS AL LADO FARMACIA SAN MARCOS SAN FDO APURE ; Telefono: 2473423564-4143594355 ; Sexo: M', 'datosPer'),
(202, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 14218482 ; Nombre: JHONNY EGREDYS MORENO ; Direccion: BARRIO JOSE WILFREDO  RODRIGUEZ SECTOR I CASA NRO 34 SAN FDO ; Telefono: 4267445378- ; Sexo: M', 'datosPer'),
(203, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 14947894 ; Nombre: CARLOS LUIS GARRIDO PEREZ ; Direccion: CALLE 5 DE JULIO URB. RAUL LEONI ACHAGUAS ; Telefono: 2478821921-4161401752 ; Sexo: M', 'datosPer'),
(204, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15046274 ; Nombre: FERMIN JOVANNY LOVERA CADENAS ; Direccion: CALLE PIAR AL FINAL DIAGONAL A LA AV FUERZAS ARMADAS SAN FDO ; Telefono: 2473411280-4145998874 ; Sexo: M', 'datosPer'),
(205, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15047174 ; Nombre: BERMYS JOSE SANTANA TERAN ; Direccion: CALLE RODRIGUEZ RINCONES NRO 20 ; Telefono: 2473421046-4269322796 ; Sexo: M', 'datosPer'),
(206, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15100167 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: URB. EL MERECURE CALLE 13 SECTOR 02 CASA NRO 25 BIRUACA ; Telefono: 2473640595-4149456716 ; Sexo: M', 'datosPer'),
(207, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15512959 ; Nombre: ISLEYER ESTILITA GALLIPOLY SIERRA ; Direccion: CALLE BOYACA NRO 25 ACHAGUAS ESTADO APURE.- ; Telefono: 2478820248-4243754089 ; Sexo: F', 'datosPer'),
(208, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15546191 ; Nombre: YOSNER EDUARDO ROSALES ACOSTA ; Direccion: SECTOR SAMAN LLORON CALLE BARINAS C/C EL MANGO NRO 2 ; Telefono: 2473411765-4144750382 ; Sexo: M', 'datosPer'),
(209, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15998167 ; Nombre: FREDDY ALEXIS LOPEZ CASTILLO  ; Direccion: AV. MIRANDA, LA DEFENSA CALLE PRINCIPAL ; Telefono: 2475154100-4243685368 ; Sexo: M', 'datosPer'),
(210, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15998947 ; Nombre: SEIKY ASTRID DE LOS D. SAAVEDRA FREITES ; Direccion: AV. MIRANDA EDF. NAVAS PISO 1-1 SECTOR PICACHO ; Telefono: 2473412844-4243602362 ; Sexo: F', 'datosPer'),
(211, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 3248351 ; Nombre: MARWA ALCHEBEL ; Direccion: CASA DE ZINC AL LADO DE LA ZONA EDUCATIVA ; Telefono: 4127569899- ; Sexo: F', 'datosPer'),
(212, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 4111623 ; Nombre: JESUS MANUEL CONTRERAS CONTRERAS ; Direccion: URB. SAN FDO 2000, CASA 5, PARCELA 9, MUNICIPIO CAMAGUAN EDO ; Telefono: 247342914-4145434020 ; Sexo: M', 'datosPer'),
(213, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 5359808 ; Nombre: ELISEO DE JESUS TORRES GOMEZ ; Direccion: URB. LOS TAMARINDOS SECTOR 01, VEREDA 06, CASA Nº 24 ; Telefono: 0-0 ; Sexo: M', 'datosPer'),
(214, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 5360672 ; Nombre: FRANKLIN JOSE PEREZ CASTILLO ; Direccion: URB. LOS TAMARINDOS, SECTOR 1 VEREDA 3 CASA Nº 8 ; Telefono: 2473411519-4140503839 ; Sexo: M', 'datosPer'),
(215, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6026273 ; Nombre: SERGIO ANTONIO COLOMA DURAN ; Direccion: URB. LOS TAMARINDOS, VEREDA 1 Nº 3  DETRAS DEL COMERCIAL LA  ; Telefono: 2473425473-4144748560 ; Sexo: M', 'datosPer'),
(216, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6304676 ; Nombre: JAVIER ALEXANDER REYES  ; Direccion: URB. LOS TAMARINDOS, SECTOR I, VEREDA 55, CASA NRO 1 ; Telefono: 2473424737-4144604294 ; Sexo: M', 'datosPer'),
(217, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6327276 ; Nombre: Nombre del Estudiante ; Direccion: CALLE PPAL CASA NRO 28 ACHAGUAS ; Telefono: 2475155451-4269102113 ; Sexo: M', 'datosPer'),
(218, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6570614 ; Nombre: DORIS DE LA CRUZ AGUIRRE  ; Direccion: CARRETERA VIA ARICHUNA SECTOR PASO ANCHO ; Telefono: 0- ; Sexo: F', 'datosPer'),
(219, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 7333025 ; Nombre: FRANCOWALTER ALCALA MAMANI ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(220, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8160704 ; Nombre: Nombre del Estudiante ; Direccion: CALLE MIRANDA, CASA Nº 39 ; Telefono: 2473429198- ; Sexo: M', 'datosPer'),
(221, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8192754 ; Nombre: SILVIA BRUMELIS ROJAS NUÑEZ ; Direccion: CALLE NEGRO PRIMERO NRO 71, CERCA DE EXPRESOS LOS LLANOS ; Telefono: 2473410932-4144788070 ; Sexo: F', 'datosPer'),
(222, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8196070 ; Nombre: ORLANDO JOSE OJEDA GAMEZ ; Direccion: URB LA TRINIDAD CALLE LA LAGUNA Nº 87 ; Telefono: 2473427058-4143440275 ; Sexo: M', 'datosPer'),
(223, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 82227353 ; Nombre: LUIS CARLOS GRANADOS RUEDA ; Direccion: URB SANTA RUFINA 1RA ETAPA  ; Telefono: 2479895036-4243168777 ; Sexo: M', 'datosPer'),
(224, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8561707 ; Nombre: ABELINO MONTAÑO MONTES ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(225, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9107059 ; Nombre: PABLO ALEJANDRO LEON MARAGUAY ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(226, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9203409 ; Nombre: ANA MARIA GARCIA FRANCO ; Direccion: BARRIO ANTONIO JOSE DE SUCRE ; Telefono: 4243409553- ; Sexo: F', 'datosPer'),
(227, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9590153 ; Nombre: BLANCA ARACELIS NUÑEZ DE HERRERA ; Direccion: BARRIO LA HIDALGUIA, CALLE PRINCIPAL NRO 38 ; Telefono: 4140509458-2473426121 ; Sexo: F', 'datosPer'),
(228, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9590295 ; Nombre: SANTA GUILLERMINA CASTILLO DE MARCHENA ; Direccion: BARRIO EL CALVARIO, CALLE PRINCIPAL, CASA NRO. 94-37 ; Telefono: 2473420110-4162489048 ; Sexo: F', 'datosPer'),
(229, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9591973 ; Nombre: ASDRUBAL HERNAN RUIZ RAMOS ; Direccion: LA RINCONERA VIA ACHAGUAS ; Telefono: 2475141156-4141431341 ; Sexo: M', 'datosPer'),
(230, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9596987 ; Nombre: JESUS ALBERTO LUGO RANGEL ; Direccion: URB. MERECURE, SECTOR 4, TRANSVERSAL II ; Telefono: 2473640923-4144871432 ; Sexo: M', 'datosPer'),
(231, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9684187 ; Nombre: RAMON ANTONIO MORENO PINTO  ; Direccion: AV. REVOLUCION CASA Nº 13  ; Telefono: 2473420362-4164561157 ; Sexo: M', 'datosPer'),
(232, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9684407 ; Nombre: JOSE GREGORIO GARCIA BRICEÑO ; Direccion: URB. LOS TAMARINDOS, AV. JULIO CESAR SANCHEZ OLIVO, SECTOR 1 ; Telefono: 4268453158- ; Sexo: M', 'datosPer'),
(233, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9747257 ; Nombre: RICHARD ANTONIO CUETO SOTO ; Direccion: URB. LA TRINIDAD, 2DA ETAPA, CASA NRO 11 ; Telefono: 4164411295-4144871472 ; Sexo: M', 'datosPer'),
(234, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9870043 ; Nombre: JHONNY OVELLEIRO BENITEZ RIVAS ; Direccion: S/D ; Telefono: 0-0 ; Sexo: M', 'datosPer'),
(235, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9872295 ; Nombre: EUDDY RAFAEL ROBERTI HERNANDEZ ; Direccion: CALLE SANTA ANA Nº 65 ; Telefono: 2473421794-4149453541 ; Sexo: M', 'datosPer'),
(236, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9873538 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA CASA Nº 15 ; Telefono: 2473640780-4143383124 ; Sexo: M', 'datosPer'),
(237, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9875569 ; Nombre: CARLOS ALBERTO ACOSTA SILVA ; Direccion: URB JOSE ANTONIO PAEZ BLOQUE 1 APTO 00-04, PB  ; Telefono: 2472548486-4266403540 ; Sexo: M', 'datosPer'),
(238, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9876685 ; Nombre: JUAN ALEXANDER FLORES FLORES ; Direccion: CALLE PARAGUAY Nº 23  ; Telefono: 2473420991-4144581606 ; Sexo: M', 'datosPer'),
(239, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 99009009 ; Nombre: Administrador ; Direccion: UNEFA - Nucleo Apure ; Telefono: 0- ; Sexo: F', 'datosPer'),
(240, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 1 ; Descripcion: Técnico Superior Universitario en Turismo ; Nivel Academico: 1', 'especialidad'),
(241, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 2 ; Descripcion: Ingeniería Agroindustrial ; Nivel Academico: 1', 'especialidad'),
(242, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 3 ; Descripcion: Ingeniería del Azúcar ; Nivel Academico: 1', 'especialidad'),
(243, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 4 ; Descripcion: Ingeniería Civil ; Nivel Academico: 1', 'especialidad'),
(244, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 5 ; Descripcion: Ingeniería Mecánica ; Nivel Academico: 1', 'especialidad'),
(245, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 6 ; Descripcion: Ingeniería de Sistemas ; Nivel Academico: 1', 'especialidad'),
(246, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 7 ; Descripcion: Diplomado de Capacitación Docente ; Nivel Academico: 2', 'especialidad'),
(247, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 8 ; Descripcion: Talleres de Prevención del VIH y del Virus del Papiloma Humano VPH ; Nivel Academico: 2', 'especialidad'),
(248, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 9 ; Descripcion: Inglés Instrumental ; Nivel Academico: 2', 'especialidad'),
(249, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 10 ; Descripcion: Taller de Inteligencia Emocional y Autoestima ; Nivel Academico: 2', 'especialidad'),
(250, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 11 ; Descripcion: Taller de embarazo precoz en adolescentes ; Nivel Academico: 2', 'especialidad'),
(251, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 12 ; Descripcion: Taller de Lectoescritura ; Nivel Academico: 2', 'especialidad'),
(252, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 13 ; Descripcion: Taller de Tradición, Cultura y Folklore ; Nivel Academico: 2', 'especialidad'),
(253, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 14 ; Descripcion: Electricidad Básica ; Nivel Academico: 2', 'especialidad'),
(254, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 15 ; Descripcion: Comunicaciones Analógicas ; Nivel Academico: 2', 'especialidad'),
(255, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 16 ; Descripcion: Diseño de Páginas Web ; Nivel Academico: 2', 'especialidad'),
(256, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 17 ; Descripcion: Asesoría Comunitaria ; Nivel Academico: 2', 'especialidad'),
(257, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 18 ; Descripcion: Derecho Procesal Laboral (Acreditable a Especialización) ; Nivel Academico: 3', 'especialidad'),
(258, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 19 ; Descripcion: Gerencia Pública (Acreditable a Especialización) ; Nivel Academico: 3', 'especialidad'),
(259, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 20 ; Descripcion: Educación Superior (Acreditable a Maestría) ; Nivel Academico: 3', 'especialidad'),
(260, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 21 ; Descripcion: Tecnología Educativa (Acreditable a Maestría) ; Nivel Academico: 3', 'especialidad'),
(261, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 22 ; Descripcion: Ciencias Jurídicas Militares (Acreditable a Maestría) ; Nivel Academico: 3', 'especialidad'),
(262, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 23 ; Descripcion: Gerencia de Recursos  Humanos (Acreditable a Maestría) ; Nivel Academico: 3', 'especialidad'),
(263, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 24 ; Descripcion: Innovaciones Educativa (Acreditable a Doctorado) ; Nivel Academico: 3', 'especialidad'),
(264, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. especialidad: 25 ; Descripcion: Ciencias Gerenciales (Acreditable a Doctorado) ; Nivel Academico: 3', 'especialidad'),
(265, '12322677', 1, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8160704 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: S', 'expediente'),
(266, '12322677', 2, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10620247 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;39;41;42;45;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(267, '12322677', 3, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10621655 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;46;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: N', 'expediente'),
(268, '12322677', 4, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11236073 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: N', 'expediente'),
(269, '12322677', 5, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6327276 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(270, '', 6, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11691494 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: ACTUALIZAR EXP Y PRESENTÓ TITULO EXTRAVIAD', 'expediente'),
(271, '', 7, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 4111623 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: NOTAS EN FORMATO VIEJO ; Activo: N', 'expediente'),
(272, '', 8, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6304676 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(273, '', 9, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757859 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(274, '', 10, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11842915 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(275, '', 11, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8192754 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(276, '', 12, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13254403 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(277, '', 13, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9203409 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: TARJETA DE IDENTIDA POR SER COLOMBIANA ; Acti', 'expediente'),
(278, '', 14, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9590153 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(279, '', 15, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 13723533 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(280, '', 16, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 14218482 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(281, '', 17, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 14947894 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(282, '', 18, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15046274 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(283, '', 19, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9590295 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(284, '', 20, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15047174 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(285, '', 21, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9596987 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;43;45;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(286, '', 22, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15100167 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;47;48;49;52; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: DOCUMENTOS INCOMPLETOS ; Activo: S', 'expediente'),
(287, '', 23, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9684407 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(288, '', 24, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15512959 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: TITULO EXTRAVIADO ; Activo: S', 'expediente'),
(289, '', 25, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15546191 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(290, '', 26, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9747257 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(291, '', 27, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15998947 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(292, '', 28, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 15998167 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(293, '', 29, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10617017 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(294, '', 30, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10619778 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(295, '', 31, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10622292 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;46;47;48;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(296, '', 32, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11237086 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(297, '', 33, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11244576 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  38;39;40;41;42;45;46;47;48;49; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(298, '', 34, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11244600 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;49; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(299, '', 35, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11761654 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(300, '', 36, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 3248351 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;40;45;48;53; ; Ubicacion: ESTANTE Nº 1 ; Amonestado: N ; Observacion: ESTUDIANTE EXTRANJERO FALTA TITULO TRAMITANDO POR LA ', 'expediente'),
(301, '', 37, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 5359808 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(302, '', 38, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 5360672 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(303, '', 39, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6026273 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(304, '', 40, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 7333025 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  40;42;46; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUE', 'expediente'),
(305, '', 41, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8196070 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(306, '', 42, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 8561707 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  40; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS ', 'expediente'),
(307, '', 43, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 82227353 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRANJERO, CAMBIAR FORMATO DE NOTAS  ; Activo', 'expediente'),
(308, '', 44, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9107059 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  40; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS ', 'expediente'),
(309, '', 45, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9591973 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(310, '', 46, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9870043 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(311, '', 47, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9684187 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;43;44;45;46;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(312, '', 48, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9872295 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(313, '', 49, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 6570614 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;41;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(314, '', 50, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12123930 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(315, '', 51, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322141 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  38;40;41;42;45;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: COPIA CERTIFICADA DE REGISTRO TITULO ; Activo: S', 'expediente'),
(316, '', 52, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9873538 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(317, '', 53, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9875569 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;41;42;43;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTA NOTAS BASICO ; Activo: S', 'expediente'),
(318, '', 54, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 9876685 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(319, '', 55, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10159955 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;40;41;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTA FONDO NEGRO DEL TITULO ; Activo: S', 'expediente'),
(320, '', 56, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10615965 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(321, '', 57, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10616288 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(322, '', 58, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10617990 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(323, '', 59, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11198116 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(324, '', 60, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12323440 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(325, '', 61, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11235659 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(326, '', 62, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11238483 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(327, '', 63, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12323480 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: NOTAS CERTIFICADAS EN FORMATO VIEJO ; ', 'expediente'),
(328, '', 64, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12325793 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(329, '', 65, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12581319 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(330, '', 66, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12585045 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(331, '', 67, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12633145 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;43;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(332, '', 68, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903952 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;49;52; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(333, '', 69, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12925467 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(334, '', 70, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11240153 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(335, '', 71, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11241050 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(336, '', 72, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11753724 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(337, '', 73, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11755529 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(338, '', 74, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11756410 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;47; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(339, '', 75, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757198 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(340, '', 76, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11757914 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(341, '', 77, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11761015 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(342, '', 78, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11762555 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(343, '', 79, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12170265 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(344, '', 80, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12321020 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(345, '', 81, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322324 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(346, '', 82, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12322535 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(347, '', 83, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12324342 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;46;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(348, '', 84, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12442551 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(349, '', 85, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12584108 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;40;42;45;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(350, '', 86, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12822308 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(351, '', 87, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12900925 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;49; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(352, '', 88, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903263 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(353, '', 89, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12903783 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(354, '', 90, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 12904401 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(355, '12322677', 95, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 10111222 ; especialidad: 6 ; Tipo expediente: 11 ; Requisitos:  123;124; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente'),
(356, '12322677', 96, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11222444 ; especialidad: 16 ; Tipo expediente: 7 ; Requisitos:  82;83;84; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requisitos ; Activo: S', 'expediente'),
(357, '12322677', 98, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cedula: 11222444 ; especialidad: 23 ; Tipo expediente: 5 ; Requisitos:  65;66;67;68;70;71; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requisitos ; A', 'expediente'),
(358, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 1 ; Descripcion: Partida de nacimiento (fotocopia simple)! ; Cod. Tipo expediente: 1', 'requisiExp'),
(359, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 2 ; Descripcion: Notas certificadas de educación media (fotocopia simple-a vista del original) ; Cod. Tipo expediente: 1', 'requisiExp');
INSERT INTO `historico` (`codHist`, `cedulaOp`, `numExp`, `numDoc`, `fechaHora`, `operacion`, `cambios`, `tabla`) VALUES
(360, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 3 ; Descripcion: Título de bachiller (fotocopia simple fondo negro–a vista del original, autentificado por la zona educativa o plantel procede ; Cod. Tipo expediente: 1', 'requisiExp'),
(361, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 4 ; Descripcion: Planilla de inscripción del alumno (correspondiente a su primera inscripción en la Unefa a partir de la cohorte 2008) ; Cod. Tipo expediente: 1', 'requisiExp'),
(362, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 5 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada) ; Cod. Tipo expediente: 1', 'requisiExp'),
(363, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 6 ; Descripcion: Carnet de identificación si es militar (fotocopia – a vista del original) ; Cod. Tipo expediente: 1', 'requisiExp'),
(364, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 7 ; Descripcion: Una (1) fotografía de frente (tamaño carnet) ; Cod. Tipo expediente: 1', 'requisiExp'),
(365, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 8 ; Descripcion: Reconocimientos ; Cod. Tipo expediente: 1', 'requisiExp'),
(366, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 9 ; Descripcion: Amonestaciones ; Cod. Tipo expediente: 1', 'requisiExp'),
(367, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 10 ; Descripcion: Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia ; Cod. Tipo expediente: 1', 'requisiExp'),
(368, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 11 ; Descripcion: Certificado de pasantía industrial. (fotocopia – a vista del original, con la firma, nombre, apellido y C.I. del funcionario  ; Cod. Tipo expediente: 1', 'requisiExp'),
(369, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 12 ; Descripcion: Instrumento e instructivo para calificar el informe final de pasantía ; Cod. Tipo expediente: 1', 'requisiExp'),
(370, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 13 ; Descripcion: Acta de la defensa del informe final de pasantía industrial larga (en caso de haberla realizado) ; Cod. Tipo expediente: 1', 'requisiExp'),
(371, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 14 ; Descripcion: Acta de evaluación final del trabajo especial de grado ; Cod. Tipo expediente: 1', 'requisiExp'),
(372, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 15 ; Descripcion: Constancia de culminación del servicio comunitario (fotocopia a vista del original) ; Cod. Tipo expediente: 1', 'requisiExp'),
(373, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 16 ; Descripcion: Récord académico (que indique nombres y apellidos del alumno, firmado por el jefe de Secretaría y Decano del Núcleo, sellado) ; Cod. Tipo expediente: 1', 'requisiExp'),
(374, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 17 ; Descripcion: Solvencia para alumnos. (Dpto. de carrera, Asobies, Coordinación de deportes, biblioteca y laboratorio) ; Cod. Tipo expediente: 1', 'requisiExp'),
(375, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 18 ; Descripcion: Planilla de registro de datos personales del alumno (Fotografía indicada en el ítem No 6 en la parte superior derecha) ; Cod. Tipo expediente: 1', 'requisiExp'),
(376, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 19 ; Descripcion: Planilla de registro de documentos requeridos al alumno para el grado, emitida por el Dpto. de Ingreso, Registro y Egreso ; Cod. Tipo expediente: 1', 'requisiExp'),
(377, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 20 ; Descripcion: Partida de nacimiento (fotocopia simple) ; Cod. Tipo expediente: 2', 'requisiExp'),
(378, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 21 ; Descripcion: Notas certificadas de educación media(fotocopia simple–a vista del original) ; Cod. Tipo expediente: 2', 'requisiExp'),
(379, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 22 ; Descripcion: Título de bachiller(fotocopia simple fondo negro–a vista del original,autentificado por la zona educativa o plantel procedente) ; Cod. Tipo expediente: 2', 'requisiExp'),
(380, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 23 ; Descripcion: Planilla de inscripción del alumno (correspondiente a su primera inscripción en la Unefa a partir de la cohorte 2008) ; Cod. Tipo expediente: 2', 'requisiExp'),
(381, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 24 ; Descripcion: Inscripción militar (fotocopia – a vista del original). En caso de ser mayor de edad ; Cod. Tipo expediente: 2', 'requisiExp'),
(382, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 25 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada) ; Cod. Tipo expediente: 2', 'requisiExp'),
(383, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 26 ; Descripcion: Carnet de identificación si es militar (fotocopia – a vista del original) ; Cod. Tipo expediente: 2', 'requisiExp'),
(384, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 27 ; Descripcion: Fotocopia del oficio de designación (alumnos militares) ; Cod. Tipo expediente: 2', 'requisiExp'),
(385, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 28 ; Descripcion: Una (1) fotografía de frente (tamaño carnet) ; Cod. Tipo expediente: 2', 'requisiExp'),
(386, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 29 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica o preinscripción en el CNU (fotocopia simple) ; Cod. Tipo expediente: 2', 'requisiExp'),
(387, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 30 ; Descripcion: Certificado de salud vigente expedido por el Ministerio del Poder Popular para la Salud (M.P.P.S).(original) ; Cod. Tipo expediente: 2', 'requisiExp'),
(388, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 31 ; Descripcion: Planilla de registro de datos personales(Debe incluir la fotografía indicada en el ítem No 8 en la parte superior derecha) ; Cod. Tipo expediente: 2', 'requisiExp'),
(389, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 32 ; Descripcion: Récord académico firmado por Jefe de Secretaría y el Decano(caso de aprobar todas o algunas materias del término o semestre) ; Cod. Tipo expediente: 2', 'requisiExp'),
(390, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 33 ; Descripcion: Reconocimientos ; Cod. Tipo expediente: 2', 'requisiExp'),
(391, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 34 ; Descripcion: Amonestaciones ; Cod. Tipo expediente: 2', 'requisiExp'),
(392, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 35 ; Descripcion: Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia ; Cod. Tipo expediente: 2', 'requisiExp'),
(393, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 36 ; Descripcion: Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso ; Cod. Tipo expediente: 2', 'requisiExp'),
(394, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 37 ; Descripcion: Partida de nacimiento (fotocopia simple). ; Cod. Tipo expediente: 3', 'requisiExp'),
(395, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 38 ; Descripcion: Notas certificadas de educación media (fotocopia simple – a vista del original). ; Cod. Tipo expediente: 3', 'requisiExp'),
(396, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 39 ; Descripcion: Título de bachiller (fotocopia simple fondo negro – a vista del original, autentificado por la zona educativa o plantel de procedencia) ; Cod. Tipo expediente: 3', 'requisiExp'),
(397, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 40 ; Descripcion: Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa). ; Cod. Tipo expediente: 3', 'requisiExp'),
(398, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 41 ; Descripcion: Inscripción militar (fotocopia – a vista del original). En caso de ser mayor de edad. ; Cod. Tipo expediente: 3', 'requisiExp'),
(399, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 42 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada). ; Cod. Tipo expediente: 3', 'requisiExp'),
(400, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 43 ; Descripcion: Carnet de identificación si es militar (fotocopia – a vista del original). ; Cod. Tipo expediente: 3', 'requisiExp'),
(401, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 44 ; Descripcion: Oficio de designación (alumnos militares). (fotocopia simple). ; Cod. Tipo expediente: 3', 'requisiExp'),
(402, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 45 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 3', 'requisiExp'),
(403, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 46 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica (fotocopia simple). ; Cod. Tipo expediente: 3', 'requisiExp'),
(404, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 47 ; Descripcion: Certificado de salud vigente expedido por el M.P.P.S. (original). ; Cod. Tipo expediente: 3', 'requisiExp'),
(405, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 48 ; Descripcion: Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 8 en la parte superior derecha). ; Cod. Tipo expediente: 3', 'requisiExp'),
(406, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 49 ; Descripcion: Récord académico firmado por el Jefe de División de Secretaría y Decano del Núcleo (en caso de haber aprobado el término e incluso sólo ; Cod. Tipo expediente: 3', 'requisiExp'),
(407, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 50 ; Descripcion: Reconocimientos. ; Cod. Tipo expediente: 3', 'requisiExp'),
(408, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 51 ; Descripcion: Amonestaciones. ; Cod. Tipo expediente: 3', 'requisiExp'),
(409, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 52 ; Descripcion: Comunicaciones relacionadas en caso de reingreso, traslado, cambio de carrera, equivalencia. ; Cod. Tipo expediente: 3', 'requisiExp'),
(410, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 53 ; Descripcion: Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 3', 'requisiExp'),
(411, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 54 ; Descripcion: (1) FOTOCOPIA DE LA CEDULA DE IDENTIDAD (AMPLIADA Y LEGIBLE) ; Cod. Tipo expediente: 4', 'requisiExp'),
(412, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 55 ; Descripcion: PLANILLA DE REGISTRO DE DOCUMENTOS ; Cod. Tipo expediente: 4', 'requisiExp'),
(413, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 56 ; Descripcion: PLANILLA DE DATOS PERSONALES CON FOTO DE FRENTE, TAMAÑO CARNET ; Cod. Tipo expediente: 4', 'requisiExp'),
(414, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 57 ; Descripcion: (1) PLANILLA DE PREINSCRIPCION E INSCRIPCION VIA WEB DEL CINU ; Cod. Tipo expediente: 4', 'requisiExp'),
(415, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 58 ; Descripcion: (1) FOTOCOPIA DEL COMPROBANTE DE PREINSCRIPCION POR EL RUSNIES ; Cod. Tipo expediente: 4', 'requisiExp'),
(416, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 59 ; Descripcion: AUTENTICIDAD DEL TITULO DE BACHILLER (ORIGINAL) ; Cod. Tipo expediente: 4', 'requisiExp'),
(417, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 60 ; Descripcion: FONDO NEGRO DEL TITULO DE BACHILLER (AUTENTIFICADO POR LA INSTITUCION DE PROCEDENCIA Y ZONA EDUCATIVA) FIRMADO Y SELLADO A VISTA DEL ORIGINAL ; Cod. Tipo expediente:', 'requisiExp'),
(418, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 61 ; Descripcion: (1) COPIA SIMPLE DEL TITULO DE BACHILLER ; Cod. Tipo expediente: 4', 'requisiExp'),
(419, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 62 ; Descripcion: (1) FOTOCOPIA DE LA PARTIDA DE NACIMIENTO (VISTA AL ORIGINAL) ; Cod. Tipo expediente: 4', 'requisiExp'),
(420, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 63 ; Descripcion: COPIA DE NOTAS CERTIFICADAS DE 1 A 5 AÑO (VISTA AL ORIGINAL) FIRMADAS, SELLADAS Y CON TIMBRES FISCALES EN CADA HOJA ; Cod. Tipo expediente: 4', 'requisiExp'),
(421, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 64 ; Descripcion: CERTIFICADO DE SALUD ORIGINAL VIGENTE ; Cod. Tipo expediente: 4', 'requisiExp'),
(422, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 65 ; Descripcion: Notas certificadas de Pregrado (fotocopia simple – a vista del original). ; Cod. Tipo expediente: 5', 'requisiExp'),
(423, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 66 ; Descripcion: Título obtenido de Pregrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. Tip', 'requisiExp'),
(424, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 67 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada). ; Cod. Tipo expediente: 5', 'requisiExp'),
(425, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 68 ; Descripcion: Planilla de inscripción del alumno (correspondiente a su primera inscripción en el programa de Postgrado cursado en la Unefa). ; Cod. Tipo expediente: 5', 'requisiExp'),
(426, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 69 ; Descripcion: Acta de evaluación del trabajo de grado con el sello del Decanato y firma de los evaluadores). ; Cod. Tipo expediente: 5', 'requisiExp'),
(427, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 70 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 5', 'requisiExp'),
(428, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 71 ; Descripcion: Evaluación final del trabajo especial de grado. ; Cod. Tipo expediente: 5', 'requisiExp'),
(429, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 72 ; Descripcion: Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 6 en la parte superior derecha). ; Cod. Tipo expediente: 5', 'requisiExp'),
(430, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 73 ; Descripcion: Planilla de control de documentos requeridos, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 5', 'requisiExp'),
(431, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 74 ; Descripcion: Notas certificadas de Postgrado (fotocopia simple – a vista del original). ; Cod. Tipo expediente: 6', 'requisiExp'),
(432, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 75 ; Descripcion: Título obtenido de Postgrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universi ; Cod. Tipo expediente: 6', 'requisiExp'),
(433, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 76 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada). ; Cod. Tipo expediente: 6', 'requisiExp'),
(434, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 77 ; Descripcion: Planilla de inscripción del alumno (correspondiente a su primera inscripción en el programa de Postgrado cursado en la Unefa). ; Cod. Tipo expediente: 6', 'requisiExp'),
(435, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 78 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 6', 'requisiExp'),
(436, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 79 ; Descripcion: Acta de evaluación de la tesis doctoral. ; Cod. Tipo expediente: 6', 'requisiExp'),
(437, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 80 ; Descripcion: Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 5 en la parte superior derecha). ; Cod. Tipo expediente: 6', 'requisiExp'),
(438, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 81 ; Descripcion: Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 6', 'requisiExp'),
(439, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 82 ; Descripcion: Notas certificadas de Doctorado (fotocopia simple – a vista del original). ; Cod. Tipo expediente: 7', 'requisiExp'),
(440, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 83 ; Descripcion: Título obtenido de Doctorado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. Ti', 'requisiExp'),
(441, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 84 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada). ; Cod. Tipo expediente: 7', 'requisiExp'),
(442, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 85 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 7', 'requisiExp'),
(443, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 86 ; Descripcion: Acta de evaluación del trabajo intelectual. ; Cod. Tipo expediente: 7', 'requisiExp'),
(444, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 87 ; Descripcion: Certificación del programa del postdoctorado cursado (fotocopia simple). ; Cod. Tipo expediente: 7', 'requisiExp'),
(445, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 88 ; Descripcion: Planilla de registro de datos personales del alumno (incluir la fotografía indicada en el ítem No 4 en la parte superior derecha). ; Cod. Tipo expediente: 7', 'requisiExp'),
(446, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 89 ; Descripcion: Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 7', 'requisiExp'),
(447, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 90 ; Descripcion: Partida de nacimiento (original o fotocopia simple). ; Cod. Tipo expediente: 8', 'requisiExp'),
(448, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 91 ; Descripcion: Notas certificadas de Pregrado (original o fotocopia simple – a vista del original). ; Cod. Tipo expediente: 8', 'requisiExp'),
(449, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 92 ; Descripcion: Título obtenido de Pregrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. Tip', 'requisiExp'),
(450, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 93 ; Descripcion: Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa). ; Cod. Tipo expediente: 8', 'requisiExp'),
(451, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 94 ; Descripcion: Cédula de Identidad (fotocopia ampliada y legible – a vista del original vigente y laminada). ; Cod. Tipo expediente: 8', 'requisiExp'),
(452, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 95 ; Descripcion: Dos (2) fotografías de frente (tamaño carnet). ; Cod. Tipo expediente: 8', 'requisiExp'),
(453, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 96 ; Descripcion: Resumen curricular con soportes. ; Cod. Tipo expediente: 8', 'requisiExp'),
(454, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 97 ; Descripcion: Historial profesional para la evaluación de credenciales. ; Cod. Tipo expediente: 8', 'requisiExp'),
(455, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 98 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 8', 'requisiExp'),
(456, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 99 ; Descripcion: Guía para la evaluación de la entrevista del proceso de selección (firmada por el Coordinador del programa o entrevistador). ; Cod. Tipo expediente: 8', 'requisiExp'),
(457, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 100 ; Descripcion: Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 8', 'requisiExp'),
(458, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 101 ; Descripcion: Partida de nacimiento (original o fotocopia simple). ; Cod. Tipo expediente: 9', 'requisiExp'),
(459, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 102 ; Descripcion: Notas certificadas de Postgrado (original o fotocopia simple – a vista del original). ; Cod. Tipo expediente: 9', 'requisiExp'),
(460, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 103 ; Descripcion: Título obtenido de Postgrado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. T', 'requisiExp'),
(461, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 104 ; Descripcion: Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa). ; Cod. Tipo expediente: 9', 'requisiExp'),
(462, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 105 ; Descripcion: Cédula de Identidad (fotocopia ampliada – a vista del original vigente y laminada). ; Cod. Tipo expediente: 9', 'requisiExp'),
(463, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 106 ; Descripcion: Dos (2) fotografías de frente (tamaño carnet). ; Cod. Tipo expediente: 9', 'requisiExp'),
(464, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 107 ; Descripcion: Resumen curricular con soportes. ; Cod. Tipo expediente: 9', 'requisiExp'),
(465, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 108 ; Descripcion: Historial profesional para la evaluación de credenciales. ; Cod. Tipo expediente: 9', 'requisiExp'),
(466, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 109 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 9', 'requisiExp'),
(467, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 110 ; Descripcion: Guía para la evaluación de la entrevista del proceso de selección (firmada por el Coordinador del programa o entrevistador). ; Cod. Tipo expediente: 9', 'requisiExp'),
(468, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 111 ; Descripcion:  Propuesta de investigación (Objetivo No 1 del trabajo de investigación). ; Cod. Tipo expediente: 9', 'requisiExp'),
(469, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 112 ; Descripcion:  Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 9', 'requisiExp'),
(470, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 113 ; Descripcion: Partida de nacimiento (original o fotocopia simple). 2. Notas certificadas de Doctorado (original o fotocopia simple – a vista del original). ; Cod. Tipo expediente', 'requisiExp'),
(471, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 114 ; Descripcion: Título obtenido de Doctorado (fotocopia simple fondo negro – a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. T', 'requisiExp'),
(472, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 115 ; Descripcion: Planilla de inscripción del alumno (correspondiente a los estudios a cursar y/o cursados en la Unefa). ; Cod. Tipo expediente: 10', 'requisiExp'),
(473, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 116 ; Descripcion: Cédula de identidad (fotocopia ampliada – a vista del original vigente y laminada). ; Cod. Tipo expediente: 10', 'requisiExp'),
(474, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 117 ; Descripcion: Dos (2) fotografías de frente (tamaño carnet). ; Cod. Tipo expediente: 10', 'requisiExp'),
(475, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 118 ; Descripcion: Resumen curricular con soportes. ; Cod. Tipo expediente: 10', 'requisiExp'),
(476, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 119 ; Descripcion: Historial profesional para la evaluación de credenciales. ; Cod. Tipo expediente: 10', 'requisiExp'),
(477, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 120 ; Descripcion: Entrevista preliminar del proceso de admisión, elaborado por el Coordinador de estudios postdoctorales (el formato es entregado a los aspirantes para su po ; Cod. T', 'requisiExp'),
(478, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 121 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 10', 'requisiExp'),
(479, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 122 ; Descripcion:  Planilla de control de documentos requeridos al alumno, emitida por el Departamento de Ingreso, Registro y Egreso. ; Cod. Tipo expediente: 10', 'requisiExp'),
(480, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 123 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 11', 'requisiExp'),
(481, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 124 ; Descripcion: Planilla de inscripción. ; Cod. Tipo expediente: 11', 'requisiExp'),
(482, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 125 ; Descripcion: Cédula de identidad vigente (fotocopia ampliada a 155 %-a vista del original vigente y laminada). ; Cod. Tipo expediente: 11', 'requisiExp'),
(483, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 126 ; Descripcion: Deposito bancario de la inscripción (original o fotocopia legible). ; Cod. Tipo expediente: 11', 'requisiExp'),
(484, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 127 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 12', 'requisiExp'),
(485, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 128 ; Descripcion: Título de Pregrado (fotocopia fondo negro – a vista del original), en caso que el Curso / Diplomado así lo requiera. ; Cod. Tipo expediente: 12', 'requisiExp'),
(486, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 129 ; Descripcion: Notas certificadas de Pregrado (fotocopia simple – a vista del original). ; Cod. Tipo expediente: 12', 'requisiExp'),
(487, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 130 ; Descripcion: Cédula de identidad (fotocopia ampliada a 155 % – a vista del original vigente y laminada). ; Cod. Tipo expediente: 12', 'requisiExp'),
(488, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 131 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 12', 'requisiExp'),
(489, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 132 ; Descripcion: Deposito Bancario (original o fotocopia legible). ; Cod. Tipo expediente: 12', 'requisiExp'),
(490, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 133 ; Descripcion: Síntesis curricular (sin soportes) ; Cod. Tipo expediente: 12', 'requisiExp'),
(491, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 134 ; Descripcion: Planilla de preinscripción. ; Cod. Tipo expediente: 13', 'requisiExp'),
(492, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 135 ; Descripcion: Título de bachiller (fondo negro - a vista del original, en caso que el Curso así lo requiera). ; Cod. Tipo expediente: 13', 'requisiExp'),
(493, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 136 ; Descripcion: Notas certificadas de educación media (fotocopia simple-a vista del original). ; Cod. Tipo expediente: 13', 'requisiExp'),
(494, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 137 ; Descripcion: Cédula de identidad (fotocopia ampliada a 155 % – a vista del original vigente y laminada). ; Cod. Tipo expediente: 13', 'requisiExp'),
(495, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 138 ; Descripcion: Una (1) fotografía de frente (tamaño carnet). ; Cod. Tipo expediente: 13', 'requisiExp'),
(496, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 139 ; Descripcion: Deposito Bancario (original o fotocopia legible). ; Cod. Tipo expediente: 13', 'requisiExp'),
(497, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 140 ; Descripcion: Alumnos militares: (1) COPIA DEL CARNET DE IDENTIFICACION ; Cod. Tipo expediente: 4', 'requisiExp'),
(498, '99009009', 0, 0, '2013-03-07 17:20:47', 'INSERCION', ' Cod. Requisito: 141 ; Descripcion: Copia del carnet militar (MAYOR DE EDAD) ; Cod. Tipo expediente: 4', 'requisiExp'),
(499, '12322677', 0, 1, '2013-03-07 17:37:36', 'INSERCION', ' Fecha Creacion: 2013-03-07 17:37:36 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-07 17:37:36 ; Titulo: S', 'documento'),
(500, '12322677', 0, 1, '2013-03-07 17:41:52', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-07 17:41:52 ; Titulo: Solicitud ', 'documento'),
(501, '99009009', 0, 0, '2013-03-07 17:42:15', 'MODIFICACION', ' Cedula: 11222444 ; Nombre: JAIMAR KARINA ; Direccion: Calle Plaza, numero 5 ; Telefono: 1212122121-3453453453 ; Sexo: F', 'datosPer'),
(502, '12322677', 98, 0, '2013-03-07 17:42:16', 'MODIFICACION', ' Cedula: 11222444 ; especialidad: 23 ; Tipo expediente: 5 ; Requisitos:  65;66;67;68;69;70;71;72;73; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requi', 'expediente'),
(503, '99009009', 0, 0, '2013-03-07 17:52:24', 'MODIFICACION', ' Cedula: 11222444 ; Nombre: JAIMAR KARINA ; Direccion: Calle Plaza, numero 5 ; Telefono: 1212122121-3453453453 ; Sexo: F', 'datosPer'),
(504, '12322677', 96, 0, '2013-03-07 17:52:24', 'MODIFICACION', ' Cedula: 11222444 ; especialidad: 16 ; Tipo expediente: 7 ; Requisitos:  82;83;84;85;86; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requisitos ; Acti', 'expediente'),
(505, '99009009', 0, 0, '2013-03-07 18:13:59', 'INSERCION', ' Cedula: 77777777 ; Nombre: 777ddddddddddddddd ; Direccion: ddddddddddddd ; Telefono: 4444444444- ; Sexo: M', 'datosPer'),
(506, '12322677', 99, 0, '2013-03-07 18:13:59', 'INSERCION', ' Cedula: 77777777 ; especialidad: 1 ; Tipo expediente: 12 ; Requisitos:   ; Ubicacion: dddddddddddddd ; Amonestado: N ; Observacion: ddddddddddd ; Activo: S', 'expediente'),
(507, '99009009', 0, 0, '2013-03-08 14:13:41', 'INSERCION', ' Cedula: 12547495 ; Nombre: Operador Luis Gonzalez ; Direccion: Calabozo ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(508, '99009009', 0, 0, '2013-03-08 14:16:35', 'MODIFICACION', ' Cod. especialidad: 3 ; Descripcion: Ingenieria del Azucar ; Nivel Academico: 1', 'especialidad'),
(509, '99009009', 0, 0, '2013-03-08 14:17:10', 'MODIFICACION', ' Cod. Requisito: 141 ; Descripcion: Copia del carnet militar (Mayor de edad) ; Cod. Tipo expediente: 4', 'requisiExp'),
(510, '99009009', 0, 0, '2013-03-08 14:38:32', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis Gonzalez ; Direccion: Calabozo ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(511, '99009009', 0, 0, '2013-03-08 14:38:32', 'MODIFICACION', ' Cedula: 12547495 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(512, '12322677', 0, 1, '2013-03-08 14:49:10', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-08 14:49:10 ; Titulo: Solicitud ', 'documento'),
(513, '12322677', 0, 1, '2013-03-08 14:50:33', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-08 14:50:33 ; Titulo: Solicitud de nuevos manuales por graves deterioros ; Ubicacion: Estante 11, Carpeta 7', 'documento'),
(514, '12322677', 0, 2, '2013-03-19 11:06:42', 'INSERCION', ' Fecha Creacion: 2013-03-19 11:06:42 ; Departamento: Dpto. Deporte-Dpto. Desarrollo Estudiantil ; Tipo documento: Recortes de prensa, fotografías y otros documentos ; Fecha Actualizacion: 2013-03-19 11:06:42 ; Titulo: Actividad realizada frente a la Catedral ; Ubicacion: Estante 4, Carpeta 7', 'documento'),
(515, '12322677', 0, 2, '2013-03-19 11:47:19', 'MODIFICACION', ' Fecha Creacion: 2013-03-19 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-19 11:47:19 ; Titulo: Solicitud de nuevos manuales por inundacion ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(516, '12322677', 0, 1, '2013-03-19 11:55:57', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-19 11:55:57 ; Titulo: Actividad realizada frente a la Catedral ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(517, '12322677', 0, 1, '2013-03-19 11:58:11', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-19 11:58:11 ; Titulo: Actividad realizada en Decanato ; Ubicacion: Estante 2, Carpeta 2', 'documento'),
(518, '12322677', 0, 3, '2013-03-19 12:00:25', 'INSERCION', ' Fecha Creacion: 2013-03-19 12:00:25 ; Departamento: Dpto. Desarrollo Estudiantil-Div. Asuntos Soc ; Tipo documento: Estadísticas de la Matrícula Estudiantil ; Fecha Actualizacion: 2013-03-19 12:00:25 ; Titulo: sdfasdfsadfasdfsad ; Ubicacion: fdgdsfg dsfgsdfg', 'documento'),
(519, '12322677', 0, 3, '2013-03-19 12:01:40', 'ELIMINACION', ' Fecha Creacion: 2013-03-19 ; Departamento: Dpto. Desarrollo Estudiantil-Div. Asuntos Soc ; Tipo documento: Estadísticas de la Matrícula Estudiantil ; Fecha Actualizacion: 2013-03-19 ; Titulo: sdfasdfsadfasdfsad ; Ubicacion: fdgdsfg dsfgsdfg', 'documento'),
(520, '12322677', 0, 4, '2013-03-19 15:52:36', 'INSERCION', ' Fecha Creacion: 2013-03-19 15:52:36 ; Departamento: Dpto. Postgrado-Div. Academica ; Tipo documento: Normativa Legal por Ingreso ; Fecha Actualizacion: 2013-03-19 15:52:36 ; Titulo: dfadsf dsfasdf asdfa sdfasdfasdfasdfa ; Ubicacion: fdf sdfasdfadsf dsf sdfs', 'documento'),
(521, '12322677', 0, 4, '2013-03-19 15:52:52', 'MODIFICACION', ' Fecha Creacion: 2013-03-19 ; Departamento: Dpto. Postgrado-Div. Academica ; Tipo documento: Normativa Legal por Ingreso ; Fecha Actualizacion: 2013-03-19 15:52:52 ; Titulo: Solicitud de nuevos manuales en Biblioteca ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(522, '99009009', 0, 0, '2013-03-20 15:27:31', 'INSERCION', ' Cedula: 11111111 ; Nombre: FULANITO DE TAL ; Direccion: Calle Plaza ; Telefono: 3333333333- ; Sexo: M', 'datosPer'),
(523, '99009009', 0, 0, '2013-03-20 15:28:06', 'INSERCION', ' Cedula: 11111111 ; Nombre: Sutanita de Tales ; Direccion: Calle Plaza, numero 5 ; Telefono: 4243038087- ; Sexo: M', 'datosPer'),
(524, '99009009', 0, 0, '2013-03-20 15:30:17', 'INSERCION', ' Cedula: 11111111 ; Nombre: JAIMAR KARINA ; Direccion: CALABOZO ; Telefono: 1111111118- ; Sexo: F', 'datosPer'),
(525, '99009009', 0, 0, '2013-03-21 08:52:03', 'INSERCION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(526, '12322677', 100, 0, '2013-03-21 08:52:03', 'INSERCION', ' Cedula: 91234567 ; especialidad: 4 ; Tipo expediente: 8 ; Requisitos:   ; Ubicacion: sadfads fasdfadsfadsf ; Amonestado: N ; Observacion: efw fwfwerfwerew ; Activo: S', 'expediente'),
(527, '99009009', 0, 0, '2013-03-21 08:58:29', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(528, '99009009', 0, 0, '2013-03-21 08:58:46', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(529, '99009009', 0, 0, '2013-03-21 08:59:29', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(530, '99009009', 0, 0, '2013-03-21 09:00:20', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(531, '99009009', 0, 0, '2013-03-21 09:03:47', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: deqweqweq ; Telefono: 3323232- ; Sexo: F', 'datosPer'),
(532, '12322677', 100, 0, '2013-03-21 09:03:47', 'MODIFICACION', ' Cedula: 91234567 ; especialidad: 4 ; Tipo expediente: 8 ; Requisitos:  90;91; ; Ubicacion: sadfads fasdfadsfadsf ; Amonestado: N ; Observacion: efw fwfwerfwerew ; Activo: S', 'expediente'),
(533, '99009009', 0, 0, '2013-03-21 09:06:21', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: Direccion de Fulanita Extrema ; Telefono: 1111111111-2222222222 ; Sexo: F', 'datosPer'),
(534, '12322677', 100, 0, '2013-03-21 09:06:21', 'MODIFICACION', ' Cedula: 91234567 ; especialidad: 4 ; Tipo expediente: 8 ; Requisitos:  90;91; ; Ubicacion: sadfads fasdfadsfadsf ; Amonestado: N ; Observacion: efw fwfwerfwerew ; Activo: S', 'expediente'),
(535, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10111222 ; Nombre: JOSE DE JESUS URBANEJA IZQUIERDO ; Direccion: CALABOZO ; Telefono: 4243038087-3453453453 ; Sexo: M', 'datosPer'),
(536, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10111333 ; Nombre: BRESMELIMAR AIMEL ; Direccion: Calle Plaza ; Telefono: 4243038087- ; Sexo: F', 'datosPer'),
(537, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10111444 ; Nombre: BRESMEL JESUS ; Direccion: Calle Plaza, numero 5 ; Telefono: 4243038087- ; Sexo: M', 'datosPer'),
(538, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10159955 ; Nombre: MOISES ANDRES SEPULVEDA CHAVARRIAGA ; Direccion: URB LLANO ALTO CALLE META Nº 346 ; Telefono: 4249670887- ; Sexo: M', 'datosPer'),
(539, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10615965 ; Nombre: JOSE DE JESUS LOPEZ SILVA ; Direccion: LA CRUZ DE AGUA VIA SAN JUAN DE PAYARA ; Telefono: 2475149923-4140848781 ; Sexo: M', 'datosPer'),
(540, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10616288 ; Nombre: DIMAN ANTONIO COLINA RIVERO ; Direccion: SECTOR GUASIMO 2 Nº 52 CALLE PRINCIPAL ; Telefono: 2473411618- ; Sexo: M', 'datosPer'),
(541, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10617017 ; Nombre: RAFAEL MANUEL TORRES CERPA ; Direccion: URB. SANTA RUFINA, SECTOR 1, CALLE 10, NRO 35 ; Telefono: 2473645815-4161404136 ; Sexo: M', 'datosPer'),
(542, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10617990 ; Nombre: YRMA URIMARE VERENZUELA ROMAN ; Direccion: BARRIO SAN JOSE Nº 2257 BIRUACA ; Telefono: 2473645036-4141784785 ; Sexo: F', 'datosPer'),
(543, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10619778 ; Nombre: ROSA MELEIDA GONZALEZ PEÑA ; Direccion: CALLE LOS JABILLOS NRO 21 CERCA DE VARIEDADES MARGARITA ; Telefono: 2473415023-4144740940 ; Sexo: F', 'datosPer'),
(544, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10620247 ; Nombre: Nombre del Estudiante ; Direccion: BARRIO JOSE W. RODRIGUEZ, SECTOR 2, CASA Nº 7 ; Telefono: 2475143146-4141478192 ; Sexo: F', 'datosPer'),
(545, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10621655 ; Nombre: Nombre del Estudiante ; Direccion: AV. CARACAS 2DA TRANSVERSAL BARRIO 9 DICIEMBRE ; Telefono: 4144735677- ; Sexo: F', 'datosPer'),
(546, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 10622292 ; Nombre: JULIO CESAR HIDALGO LOPEZ ; Direccion: URB. LOS TAMARINDOS, SECTOR LAS LLANERITAS, CASA NRO 075 ; Telefono: 2475111026- ; Sexo: M', 'datosPer'),
(547, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11198116 ; Nombre: VICTOR MANUEL CHACON UBAC ; Direccion: RECREO 1 CALLE ANGEL HURTADO Nº 10 ; Telefono: 4167384236- ; Sexo: M', 'datosPer'),
(548, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11222444 ; Nombre: JAIMAR KARINA ; Direccion: Calle Plaza, numero 5 ; Telefono: 1212122121-3453453453 ; Sexo: F', 'datosPer'),
(549, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11235659 ; Nombre: DARRYS RAMON ROMERO GALLEGOS ; Direccion: VECINDARIO JUANAPARO PARCELA 13 FUNDO SD ; Telefono: 2475157968-4141470459 ; Sexo: M', 'datosPer'),
(550, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11236073 ; Nombre: Nombre del Estudiante ; Direccion: BARRIO SANTA ANA DIAGONAL A LA CANCHA ; Telefono: 4168479165- ; Sexo: F', 'datosPer'),
(551, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11237086 ; Nombre: JONNY MOISES AREVALO SALAZAR ; Direccion: GUASIMO I, CALLE PRINCIPAL NRO 16 ; Telefono: 2475154318-4144759830 ; Sexo: M', 'datosPer'),
(552, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11238483 ; Nombre: RUTH IRENE ESCOBAR ; Direccion: BARRIO VALLE VERDE 2 CALLE CASA Nº 4 ; Telefono: 4163398686- ; Sexo: F', 'datosPer'),
(553, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11240153 ; Nombre: GLADYS MIREYA GALLARDO  ; Direccion: BARRIO LA HIDALGUIA II CALLE PRINCIPAL AL FINAL Nº 47 ; Telefono: 2473412941-4165417850 ; Sexo: F', 'datosPer'),
(554, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11241050 ; Nombre: FELIX ENRIQUE LADERA HERNANDEZ ; Direccion: URB. LUIS HERRERA CALLE PRINCIPAL Nº 13 ; Telefono: 4145946878-4162346090 ; Sexo: M', 'datosPer'),
(555, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11244576 ; Nombre: ELIO RAFAEL TOLEDO ; Direccion: BARRIO 9 DICIEMBRE, DETRAS DE LA RESIDENCIA DEL GOBERNADOR,  ; Telefono: 2473425103-4162402645 ; Sexo: M', 'datosPer'),
(556, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11244600 ; Nombre: KALIA JOSEFINA HERRERA BARONI ; Direccion: URB. ALTOS DE PUERTO MIRANDA, MANZANA 20, NRO 20, EDO GUARIC ; Telefono: 2473415151-4144753973 ; Sexo: F', 'datosPer'),
(557, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11691494 ; Nombre: MIGUEL JUSGLADER ANGARITA NAVARRO ; Direccion: URB. JOSE FELIX RIBAS CALLE 07 CASA S/N SAN FDO APURE ; Telefono: 4147541300- ; Sexo: M', 'datosPer'),
(558, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11753724 ; Nombre: SOL MARIA CASTILLO  ; Direccion: BARRIO VALLE VERDE 2 DA CALLE Nº 5 ; Telefono: 2475146771-4144911248 ; Sexo: F', 'datosPer'),
(559, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11755529 ; Nombre: MIGUEL JOSE LEON ; Direccion: EL RECREO SECTOR 2  CALLE 2 CASA Nº 888 ; Telefono: 2473310560- ; Sexo: M', 'datosPer'),
(560, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11756410 ; Nombre: JESUS RAMON SALINAS YNFANTE ; Direccion: CALLE LOS TRILLIZOS ENTRE AV CARACAS Y AV FUERZAS ARMADAS ; Telefono: 4141499723-2473413370 ; Sexo: M', 'datosPer'),
(561, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11757198 ; Nombre: GERARDO ENRIQUE TOVAR REBOLLEDO ; Direccion: CALLEJON MADARIAGANº 65 ; Telefono: 4143359247-4243110332 ; Sexo: M', 'datosPer'),
(562, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11757859 ; Nombre: WILMER MANUEL GARCIA TOVAR  ; Direccion: BARRIO RAUL LEONI 2DA TRANSVERSAL NRO 7-A ; Telefono: 4161404111- ; Sexo: M', 'datosPer'),
(563, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11757914 ; Nombre: LUIS CESAR HERRERA HERNANDEZ ; Direccion: EL RECREO SECTOR III CALLE PRINCIPAL Nº 13 ; Telefono: 2473310387-4144028018 ; Sexo: M', 'datosPer'),
(564, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11760973 ; Nombre: Operador Numero 1 ; Direccion: San Fernando de Apure ; Telefono: 9999999999-8888888888 ; Sexo: F', 'datosPer'),
(565, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11761015 ; Nombre: DANNY SALVADOR MORENO VENERO ; Direccion: CALLE EL MANGO Nº 120 LAS MARIA A 2 CUADRAS DE LA HIELERA LA ; Telefono: 4163109564-4269462287 ; Sexo: M', 'datosPer'),
(566, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11761654 ; Nombre: JHONNY MANUEL MUJICA ; Direccion: URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32 ; Telefono: 2475143084-2473412706 ; Sexo: M', 'datosPer'),
(567, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11762555 ; Nombre: GREGORY JAVIER VIÑA IZQUIERDO ; Direccion: URB. SERAFIN CEDEÑO CALLE Nº 4 CASA Nº 19 ; Telefono: 2473420828-4143920979 ; Sexo: M', 'datosPer'),
(568, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 11842915 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: 6TA TRANSVERSAL CASA NRO 58 RESIDENCIAS IRAIDA, APTO 01 BIRU ; Telefono: 2475154849-4145999042 ; Sexo: M', 'datosPer'),
(569, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12123930 ; Nombre: DANELLYS JACKELIN BRAVO GONZALEZ ; Direccion: AV LOS CENTAUROS, EDIF GIRASOL, APTO A-8 ; Telefono: 2473412031-4144598955 ; Sexo: F', 'datosPer'),
(570, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12170265 ; Nombre: GARY ALEXANDER GENESI RODRIGUEZ ; Direccion: URB LLANO ALTO CALLE ARICHUNA Nº 145 ; Telefono: 2472542146-4243291230 ; Sexo: M', 'datosPer'),
(571, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12321020 ; Nombre: JOSE MANUEL LOPEZ LOPEZ  ; Direccion: CALLE PRINCIPAL DE LOS CENTAUROS  ; Telefono: 4144981313- ; Sexo: M', 'datosPer'),
(572, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12321619 ; Nombre: Operador Numero 2 ; Direccion: Biruaquita ; Telefono: 5555555555- ; Sexo: M', 'datosPer'),
(573, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12322141 ; Nombre: LUIS ARGELIS PARRA BORJAS ; Direccion: CALLEJON MADARIAGA, NRO 9 CERCA DE LA ESCUELA ANDRES BELLO ; Telefono: 2473412533- ; Sexo: M', 'datosPer'),
(574, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12322324 ; Nombre: MAYRA DEL ROSARIO CONTRERAS ; Direccion: URB LOS CENTAUROS CALLE PRINCIPAL VEREDA 4 MANZANA F ; Telefono: 2473410684-4144887573 ; Sexo: F', 'datosPer'),
(575, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12322535 ; Nombre: HECTOR JOSE CEBALLOS MENDOZA  ; Direccion: BARRIO LA ODISEA 5TA TRANSVERSAL AL FINAL ; Telefono: 4144776349- ; Sexo: M', 'datosPer'),
(576, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(577, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12323440 ; Nombre: LUZ MARINA LOPEZ DE MUJICA ; Direccion: URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32 ; Telefono: 2475143084-4145860325 ; Sexo: F', 'datosPer'),
(578, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12323480 ; Nombre: LESME JOSE ECHENIQUE ; Direccion: CALLE GIRARDOT NRO 80 A 50 MTRS DE LA AV. FUERZAS ARMADAS ; Telefono: 2473421767-4144762593 ; Sexo: M', 'datosPer'),
(579, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12324342 ; Nombre: YARIDY JOSEFINA MELO GAMEZ ; Direccion: LOS CENTAUROS CALLE PRINCIPAL Nº 09 ; Telefono: 4144735534-4144633497 ; Sexo: F', 'datosPer'),
(580, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12325793 ; Nombre: JOSE LUIS CASTILLO POLANCO ; Direccion: URB. TAMARINDO, SECTOR 1, CASA NRO 12. ; Telefono: 2473414514-4149443952 ; Sexo: M', 'datosPer'),
(581, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12442551 ; Nombre: MELVIN ENRIQUE ORTEGA VILCHEZ ; Direccion: CALLE PAEZ CON QUESERAS DEL MEDIO CASA Nº 74 ; Telefono: 4124517113-4144737043 ; Sexo: M', 'datosPer');
INSERT INTO `historico` (`codHist`, `cedulaOp`, `numExp`, `numDoc`, `fechaHora`, `operacion`, `cambios`, `tabla`) VALUES
(582, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis Gonzalez ; Direccion: Calabozo ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(583, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12581319 ; Nombre: YELITZA ISABEL SILVA ; Direccion: AV. FUERZAS ARMADAS, SECTOR DIOSESANO, DETRAS DEL COLEGIO, N ; Telefono: 2473424137-4140175810 ; Sexo: F', 'datosPer'),
(584, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12584108 ; Nombre: ALVARO AURELIO DIAZ MUÑOZ ; Direccion: BIRUACA 7ma TRANSVERSAL CASA Nº 16 ; Telefono: 2473645484-4140355934 ; Sexo: M', 'datosPer'),
(585, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12585045 ; Nombre: JUAN RAMON RODRIGUEZ BLANCO ; Direccion: BARRIO CAMPO ALEGRE, CALLE EL GUAYABO, VEREDA EL JOBO, NRO 0 ; Telefono: 2473413864- ; Sexo: M', 'datosPer'),
(586, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12633145 ; Nombre: JUAN GABRIEL PEÑA LUNA ; Direccion: URB. PARAISO, CUARTA CALLE, 2DA CASA ; Telefono: 2473424759-4243317237 ; Sexo: M', 'datosPer'),
(587, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12822308 ; Nombre: DIANA ANGELICA DE LA ROSA DE PIÑATE ; Direccion: SERAFIN CEDEÑO VEREDA 9 Nº 13 ; Telefono: 2473422919-4162346174 ; Sexo: F', 'datosPer'),
(588, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12900925 ; Nombre: NESTOR MARIA HERNANDEZ  ; Direccion: BARRIO JOSE ANTONIO PAEZ 2do CALLEJON CASA Nº 4 ; Telefono: 2473422337-4127849234 ; Sexo: M', 'datosPer'),
(589, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12903263 ; Nombre: ILVIA NIXORE CARABALLO ; Direccion: URB. JOSE ANTONIO PAEZ CALLE 21 Nº 26 ; Telefono: 2472540631-4241743892 ; Sexo: F', 'datosPer'),
(590, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12903783 ; Nombre: MELGAR ALFREDO GOMEZ CASTILLO ; Direccion: URB. EL TAMARINDO CALLE 5 Nº 16 ; Telefono: 2478085455-4142971861 ; Sexo: F', 'datosPer'),
(591, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12903952 ; Nombre: BELKYS YUSANYS HERNANDEZ SALAZAR ; Direccion: BARRIO SAN JOSE, SECTOR 2, CALLE LAS ACASIAS AL FINAL, NRO 2 ; Telefono: 0-4149351598 ; Sexo: F', 'datosPer'),
(592, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(593, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 12925467 ; Nombre: YASMIRDA DEL VALLE APARICIO RODRIGUEZ ; Direccion: URB. LOS CENTAUROS, MANZANA 2-E-15, NRO 2, CERCA DE COMPRA Y ; Telefono: 2473411515-4161449647 ; Sexo: F', 'datosPer'),
(594, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 13040877 ; Nombre: LARRY AVISAL HENRIQUEZ ESCALONA ; Direccion: BARRIO JOSE WILFREDO RODRIGUEZ,. CALLE PRINCIPAL ; Telefono: 0- ; Sexo: M', 'datosPer'),
(595, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 13254403 ; Nombre: YENNYS DIVERSI DONAIRE ; Direccion: LA UNION DE BARINAS CALLE LA BONQUERA AL FINAL ; Telefono: 2475156235-4140396978 ; Sexo: F', 'datosPer'),
(596, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 13723533 ; Nombre: FELIX JOSE TORRES VILLANUEVA ; Direccion: AV LOS CENTAUROS AL LADO FARMACIA SAN MARCOS SAN FDO APURE ; Telefono: 2473423564-4143594355 ; Sexo: M', 'datosPer'),
(597, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 14218482 ; Nombre: JHONNY EGREDYS MORENO ; Direccion: BARRIO JOSE WILFREDO  RODRIGUEZ SECTOR I CASA NRO 34 SAN FDO ; Telefono: 4267445378- ; Sexo: M', 'datosPer'),
(598, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 14947894 ; Nombre: CARLOS LUIS GARRIDO PEREZ ; Direccion: CALLE 5 DE JULIO URB. RAUL LEONI ACHAGUAS ; Telefono: 2478821921-4161401752 ; Sexo: M', 'datosPer'),
(599, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15046274 ; Nombre: FERMIN JOVANNY LOVERA CADENAS ; Direccion: CALLE PIAR AL FINAL DIAGONAL A LA AV FUERZAS ARMADAS SAN FDO ; Telefono: 2473411280-4145998874 ; Sexo: M', 'datosPer'),
(600, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15047174 ; Nombre: BERMYS JOSE SANTANA TERAN ; Direccion: CALLE RODRIGUEZ RINCONES NRO 20 ; Telefono: 2473421046-4269322796 ; Sexo: M', 'datosPer'),
(601, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15100167 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: URB. EL MERECURE CALLE 13 SECTOR 02 CASA NRO 25 BIRUACA ; Telefono: 2473640595-4149456716 ; Sexo: M', 'datosPer'),
(602, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15512959 ; Nombre: ISLEYER ESTILITA GALLIPOLY SIERRA ; Direccion: CALLE BOYACA NRO 25 ACHAGUAS ESTADO APURE.- ; Telefono: 2478820248-4243754089 ; Sexo: F', 'datosPer'),
(603, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15546191 ; Nombre: YOSNER EDUARDO ROSALES ACOSTA ; Direccion: SECTOR SAMAN LLORON CALLE BARINAS C/C EL MANGO NRO 2 ; Telefono: 2473411765-4144750382 ; Sexo: M', 'datosPer'),
(604, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15998167 ; Nombre: FREDDY ALEXIS LOPEZ CASTILLO  ; Direccion: AV. MIRANDA, LA DEFENSA CALLE PRINCIPAL ; Telefono: 2475154100-4243685368 ; Sexo: M', 'datosPer'),
(605, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 15998947 ; Nombre: SEIKY ASTRID DE LOS D. SAAVEDRA FREITES ; Direccion: AV. MIRANDA EDF. NAVAS PISO 1-1 SECTOR PICACHO ; Telefono: 2473412844-4243602362 ; Sexo: F', 'datosPer'),
(606, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 3248351 ; Nombre: MARWA ALCHEBEL ; Direccion: CASA DE ZINC AL LADO DE LA ZONA EDUCATIVA ; Telefono: 4127569899- ; Sexo: F', 'datosPer'),
(607, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 4111623 ; Nombre: JESUS MANUEL CONTRERAS CONTRERAS ; Direccion: URB. SAN FDO 2000, CASA 5, PARCELA 9, MUNICIPIO CAMAGUAN EDO ; Telefono: 247342914-4145434020 ; Sexo: M', 'datosPer'),
(608, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 5359808 ; Nombre: ELISEO DE JESUS TORRES GOMEZ ; Direccion: URB. LOS TAMARINDOS SECTOR 01, VEREDA 06, CASA Nº 24 ; Telefono: 0-0 ; Sexo: M', 'datosPer'),
(609, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 5360672 ; Nombre: FRANKLIN JOSE PEREZ CASTILLO ; Direccion: URB. LOS TAMARINDOS, SECTOR 1 VEREDA 3 CASA Nº 8 ; Telefono: 2473411519-4140503839 ; Sexo: M', 'datosPer'),
(610, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 6026273 ; Nombre: SERGIO ANTONIO COLOMA DURAN ; Direccion: URB. LOS TAMARINDOS, VEREDA 1 Nº 3  DETRAS DEL COMERCIAL LA  ; Telefono: 2473425473-4144748560 ; Sexo: M', 'datosPer'),
(611, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 6304676 ; Nombre: JAVIER ALEXANDER REYES  ; Direccion: URB. LOS TAMARINDOS, SECTOR I, VEREDA 55, CASA NRO 1 ; Telefono: 2473424737-4144604294 ; Sexo: M', 'datosPer'),
(612, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 6327276 ; Nombre: Nombre del Estudiante ; Direccion: CALLE PPAL CASA NRO 28 ACHAGUAS ; Telefono: 2475155451-4269102113 ; Sexo: M', 'datosPer'),
(613, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 6570614 ; Nombre: DORIS DE LA CRUZ AGUIRRE  ; Direccion: CARRETERA VIA ARICHUNA SECTOR PASO ANCHO ; Telefono: 0- ; Sexo: F', 'datosPer'),
(614, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 7333025 ; Nombre: FRANCOWALTER ALCALA MAMANI ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(615, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 77777777 ; Nombre: 777ddddddddddddddd ; Direccion: ddddddddddddd ; Telefono: 4444444444- ; Sexo: M', 'datosPer'),
(616, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 8160704 ; Nombre: Nombre del Estudiante ; Direccion: CALLE MIRANDA, CASA Nº 39 ; Telefono: 2473429198- ; Sexo: M', 'datosPer'),
(617, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 8192754 ; Nombre: SILVIA BRUMELIS ROJAS NUÑEZ ; Direccion: CALLE NEGRO PRIMERO NRO 71, CERCA DE EXPRESOS LOS LLANOS ; Telefono: 2473410932-4144788070 ; Sexo: F', 'datosPer'),
(618, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 8196070 ; Nombre: ORLANDO JOSE OJEDA GAMEZ ; Direccion: URB LA TRINIDAD CALLE LA LAGUNA Nº 87 ; Telefono: 2473427058-4143440275 ; Sexo: M', 'datosPer'),
(619, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 82227353 ; Nombre: LUIS CARLOS GRANADOS RUEDA ; Direccion: URB SANTA RUFINA 1RA ETAPA  ; Telefono: 2479895036-4243168777 ; Sexo: M', 'datosPer'),
(620, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 8561707 ; Nombre: ABELINO MONTAÑO MONTES ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(621, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9107059 ; Nombre: PABLO ALEJANDRO LEON MARAGUAY ; Direccion: NO PRESENTO ; Telefono: 0- ; Sexo: M', 'datosPer'),
(622, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: Direccion de Fulanita Extrema ; Telefono: 1111111111-2222222222 ; Sexo: F', 'datosPer'),
(623, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9203409 ; Nombre: ANA MARIA GARCIA FRANCO ; Direccion: BARRIO ANTONIO JOSE DE SUCRE ; Telefono: 4243409553- ; Sexo: F', 'datosPer'),
(624, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9590153 ; Nombre: BLANCA ARACELIS NUÑEZ DE HERRERA ; Direccion: BARRIO LA HIDALGUIA, CALLE PRINCIPAL NRO 38 ; Telefono: 4140509458-2473426121 ; Sexo: F', 'datosPer'),
(625, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9590295 ; Nombre: SANTA GUILLERMINA CASTILLO DE MARCHENA ; Direccion: BARRIO EL CALVARIO, CALLE PRINCIPAL, CASA NRO. 94-37 ; Telefono: 2473420110-4162489048 ; Sexo: F', 'datosPer'),
(626, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9591973 ; Nombre: ASDRUBAL HERNAN RUIZ RAMOS ; Direccion: LA RINCONERA VIA ACHAGUAS ; Telefono: 2475141156-4141431341 ; Sexo: M', 'datosPer'),
(627, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9596987 ; Nombre: JESUS ALBERTO LUGO RANGEL ; Direccion: URB. MERECURE, SECTOR 4, TRANSVERSAL II ; Telefono: 2473640923-4144871432 ; Sexo: M', 'datosPer'),
(628, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9684187 ; Nombre: RAMON ANTONIO MORENO PINTO  ; Direccion: AV. REVOLUCION CASA Nº 13  ; Telefono: 2473420362-4164561157 ; Sexo: M', 'datosPer'),
(629, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9684407 ; Nombre: JOSE GREGORIO GARCIA BRICEÑO ; Direccion: URB. LOS TAMARINDOS, AV. JULIO CESAR SANCHEZ OLIVO, SECTOR 1 ; Telefono: 4268453158- ; Sexo: M', 'datosPer'),
(630, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9747257 ; Nombre: RICHARD ANTONIO CUETO SOTO ; Direccion: URB. LA TRINIDAD, 2DA ETAPA, CASA NRO 11 ; Telefono: 4164411295-4144871472 ; Sexo: M', 'datosPer'),
(631, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9870043 ; Nombre: JHONNY OVELLEIRO BENITEZ RIVAS ; Direccion: S/D ; Telefono: 0-0 ; Sexo: M', 'datosPer'),
(632, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9872295 ; Nombre: EUDDY RAFAEL ROBERTI HERNANDEZ ; Direccion: CALLE SANTA ANA Nº 65 ; Telefono: 2473421794-4149453541 ; Sexo: M', 'datosPer'),
(633, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9873538 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA CASA Nº 15 ; Telefono: 2473640780-4143383124 ; Sexo: M', 'datosPer'),
(634, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9875569 ; Nombre: CARLOS ALBERTO ACOSTA SILVA ; Direccion: URB JOSE ANTONIO PAEZ BLOQUE 1 APTO 00-04, PB  ; Telefono: 2472548486-4266403540 ; Sexo: M', 'datosPer'),
(635, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 9876685 ; Nombre: JUAN ALEXANDER FLORES FLORES ; Direccion: CALLE PARAGUAY Nº 23  ; Telefono: 2473420991-4144581606 ; Sexo: M', 'datosPer'),
(636, '99009009', 0, 0, '2013-03-21 09:26:13', 'MODIFICACION', ' Cedula: 99009009 ; Nombre: Administrador ; Direccion: UNEFA - Nucleo Apure ; Telefono: 0- ; Sexo: F', 'datosPer'),
(637, '99009009', 0, 0, '2013-03-21 09:27:16', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(638, '99009009', 0, 0, '2013-03-21 09:27:16', 'MODIFICACION', ' Cedula: 12321619 ; Nombre: Operador Numero 2 ; Direccion: Biruaquita ; Telefono: 5555555555- ; Sexo: M', 'datosPer'),
(639, '99009009', 0, 0, '2013-03-21 09:27:16', 'MODIFICACION', ' Cedula: 11760973 ; Nombre: Operador Numero 1 ; Direccion: San Fernando de Apure ; Telefono: 9999999999-8888888888 ; Sexo: F', 'datosPer'),
(640, '99009009', 0, 0, '2013-03-21 09:27:16', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis Gonzalez ; Direccion: Calabozo ; Telefono: 9999999999- ; Sexo: M', 'datosPer'),
(641, '99009009', 0, 0, '2013-03-21 09:27:59', 'MODIFICACION', ' Cedula: 99009009 ; Nombre: Administrador ; Direccion: UNEFA - Nucleo Apure ; Telefono: 0- ; Sexo: F', 'datosPer'),
(642, '12322677', 0, 0, '2013-03-21 09:55:21', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(643, '12322677', 0, 0, '2013-03-21 09:57:06', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(644, '12322677', 0, 0, '2013-03-21 10:01:17', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(645, '12322677', 0, 0, '2013-03-21 10:03:12', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(646, '12322677', 0, 0, '2013-03-21 10:14:38', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(647, '12322677', 0, 0, '2013-03-21 10:22:58', 'INSERCION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(648, '12322677', 101, 0, '2013-03-21 10:22:58', 'INSERCION', ' Cedula: 99222222 ; especialidad: 18 ; Tipo expediente: 13 ; Requisitos:   ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(649, '12322677', 0, 0, '2013-03-21 10:23:10', 'MODIFICACION', ' Cedula: 99222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(650, '12322677', 101, 0, '2013-03-21 10:23:10', 'MODIFICACION', ' Cedula: 99222222 ; especialidad: 18 ; Tipo expediente: 13 ; Requisitos:  134;135; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(651, '99009009', 101, 0, '2013-03-21 10:25:22', 'ELIMINACION', ' Cedula: 99222222 ; especialidad: 18 ; Tipo expediente: 13 ; Requisitos:  134;135; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(652, '12322677', 0, 0, '2013-03-21 11:41:14', 'MODIFICACION', ' Cedula: 99222222 ; Nombre: Roxanne de los Angeles Pulido Vilchez ; Direccion: Calle Plaza, numero 5 ; Telefono: 3333333333- ; Sexo: F', 'datosPer'),
(653, '12322677', 102, 0, '2013-03-21 11:41:14', 'INSERCION', ' Cedula: 99222222 ; especialidad: 19 ; Tipo expediente: 5 ; Requisitos:   ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente'),
(654, '99009009', 102, 0, '2013-03-21 11:43:26', 'ELIMINACION', ' Cedula: 99222222 ; especialidad: 19 ; Tipo expediente: 5 ; Requisitos:   ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente'),
(655, '12322677', 0, 0, '2013-03-21 11:44:04', 'MODIFICACION', ' Cedula: 91234567 ; Nombre: Fulanita Extrema ; Direccion: Direccion de Fulanita Extrema ; Telefono: 1111111111- ; Sexo: F', 'datosPer'),
(656, '12322677', 100, 0, '2013-03-21 11:44:04', 'MODIFICACION', ' Cedula: 91234567 ; especialidad: 4 ; Tipo expediente: 8 ; Requisitos:  90;91;93;94; ; Ubicacion: sadfads fasdfadsfadsf ; Amonestado: N ; Observacion: efw fwfwerfwerew ; Activo: S', 'expediente'),
(657, '12322677', 0, 0, '2013-03-21 11:46:03', 'INSERCION', ' Cedula: 99333333 ; Nombre: Fulanita Extrema pero Chevere ; Direccion: deqweqweq dsdadsadada ; Telefono: 8888888888-3333333333 ; Sexo: F', 'datosPer'),
(658, '12322677', 103, 0, '2013-03-21 11:46:03', 'INSERCION', ' Cedula: 99333333 ; especialidad: 16 ; Tipo expediente: 6 ; Requisitos:   ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(659, '12322677', 0, 0, '2013-03-21 11:46:13', 'MODIFICACION', ' Cedula: 99333333 ; Nombre: Fulanita Extrema pero Chevere ; Direccion: deqweqweq dsdadsadada ; Telefono: 8888888888-3333333333 ; Sexo: F', 'datosPer'),
(660, '12322677', 103, 0, '2013-03-21 11:46:13', 'MODIFICACION', ' Cedula: 99333333 ; especialidad: 16 ; Tipo expediente: 6 ; Requisitos:  78;79; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(661, '99009009', 0, 0, '2013-03-21 16:08:53', 'INSERCION', ' Cod. especialidad: 26 ; Descripcion: Ingenieria Electronica ; Nivel Academico: 1', 'especialidad'),
(662, '99009009', 0, 0, '2013-03-21 16:52:14', 'MODIFICACION', ' Cod. especialidad: 26 ; Descripcion: Ingenieria Electronica MICROPROCESADORES ; Nivel Academico: 1', 'especialidad'),
(663, '99009009', 0, 0, '2013-03-21 16:52:25', 'ELIMINACION', ' Cod. especialidad: 26 ; Descripcion: Ingenieria Electronica MICROPROCESADORES ; Nivel Academico: 1', 'especialidad'),
(664, '99009009', 0, 0, '2013-03-21 16:53:37', 'INSERCION', ' Cod. Requisito: 142 ; Descripcion: XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXX ; Cod. Tipo expediente: 8', 'requisiExp'),
(665, '99009009', 0, 0, '2013-03-21 16:54:06', 'MODIFICACION', ' Cod. Requisito: 127 ; Descripcion: AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(666, '99009009', 0, 0, '2013-03-21 16:57:03', 'ELIMINACION', ' Cod. Requisito: 127 ; Descripcion: AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(667, '99009009', 0, 0, '2013-03-22 08:24:34', 'ELIMINACION', ' Cod. Requisito: 142 ; Descripcion: XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXX ; Cod. Tipo expediente: 8', 'requisiExp'),
(668, '99009009', 0, 0, '2013-03-22 08:25:14', 'INSERCION', ' Cod. Requisito: 143 ; Descripcion: AAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 1', 'requisiExp'),
(669, '99009009', 0, 0, '2013-03-22 08:27:03', 'MODIFICACION', ' Cod. Requisito: 143 ; Descripcion: BBBBBBBBBBBBBBBBBBBBBBBBBBB ; Cod. Tipo expediente: 1', 'requisiExp'),
(670, '99009009', 0, 0, '2013-03-22 08:28:04', 'ELIMINACION', ' Cod. Requisito: 143 ; Descripcion: BBBBBBBBBBBBBBBBBBBBBBBBBBB ; Cod. Tipo expediente: 1', 'requisiExp'),
(671, '99009009', 0, 0, '2013-03-22 09:20:27', 'INSERCION', ' Cod. Requisito: 144 ; Descripcion: CCCCCCCCCCCCCCCCCCCCCC ; Cod. Tipo expediente: 12', 'requisiExp'),
(672, '99009009', 0, 0, '2013-03-22 09:41:47', 'ELIMINACION', ' Cod. Requisito: 144 ; Descripcion: CCCCCCCCCCCCCCCCCCCCCC ; Cod. Tipo expediente: 12', 'requisiExp'),
(673, '99009009', 0, 0, '2013-03-22 09:44:23', 'INSERCION', ' Cod. especialidad: 26 ; Descripcion: electronica ; Nivel Academico: 1', 'especialidad'),
(674, '99009009', 0, 0, '2013-03-22 09:44:45', 'MODIFICACION', ' Cod. especialidad: 26 ; Descripcion: Ing. Electronica ; Nivel Academico: 1', 'especialidad'),
(675, '99009009', 0, 0, '2013-03-22 09:45:10', 'ELIMINACION', ' Cod. especialidad: 26 ; Descripcion: Ing. Electronica ; Nivel Academico: 1', 'especialidad'),
(676, '99009009', 0, 0, '2013-03-22 10:09:01', 'INSERCION', ' Cod. Requisito: 145 ; Descripcion: AAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(677, '99009009', 0, 0, '2013-03-22 10:43:11', 'MODIFICACION', ' Cod. Requisito: 145 ; Descripcion: CCCC CCC CCC ; Cod. Tipo expediente: 8', 'requisiExp'),
(678, '99009009', 0, 0, '2013-03-22 10:47:26', 'MODIFICACION', ' Cod. Requisito: 145 ; Descripcion: NNNNNNNNAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(679, '99009009', 0, 0, '2013-03-22 11:20:57', 'MODIFICACION', ' Cod. Requisito: 145 ; Descripcion: PRUEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(680, '99009009', 0, 0, '2013-03-22 11:28:35', 'ELIMINACION', ' Cod. Requisito: 145 ; Descripcion: PRUEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 8', 'requisiExp'),
(681, '99009009', 0, 0, '2013-03-22 11:28:48', 'INSERCION', ' Cod. Requisito: 146 ; Descripcion: PRUEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ; Cod. Tipo expediente: 13', 'requisiExp'),
(682, '99009009', 0, 0, '2013-03-22 11:29:53', 'MODIFICACION', ' Cod. Requisito: 146 ; Descripcion: BBBBBBBBBBBBBBBBBBBBBBBBB ; Cod. Tipo expediente: 13', 'requisiExp'),
(683, '99009009', 0, 0, '2013-03-22 11:29:59', 'ELIMINACION', ' Cod. Requisito: 146 ; Descripcion: BBBBBBBBBBBBBBBBBBBBBBBBB ; Cod. Tipo expediente: 13', 'requisiExp'),
(684, '99009009', 0, 0, '2013-03-22 11:48:07', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 9999999999-2222222222 ; Sexo: M', 'datosPer'),
(685, '99009009', 0, 0, '2013-03-22 11:48:21', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(686, '99009009', 0, 0, '2013-03-22 11:48:37', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(687, '99009009', 0, 0, '2013-03-22 11:48:53', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(688, '99009009', 0, 0, '2013-03-22 11:51:27', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(689, '99009009', 0, 0, '2013-03-22 11:52:56', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(690, '99009009', 0, 0, '2013-03-22 11:55:57', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(691, '99009009', 0, 0, '2013-03-22 14:28:00', 'MODIFICACION', ' Cedula: 99009009 ; Nombre: Administrador ; Direccion: UNEFA - Nucleo Apure ; Telefono: 0- ; Sexo: F', 'datosPer'),
(692, '99009009', 0, 0, '2013-03-22 14:28:30', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis ; Direccion: Calabozo ; Telefono: 9999999999-3453453453 ; Sexo: M', 'datosPer'),
(693, '99009009', 0, 0, '2013-03-22 14:44:15', 'MODIFICACION', ' Cedula: 99009009 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(694, '99009009', 0, 0, '2013-03-22 14:44:39', 'MODIFICACION', ' Cedula: 99009009 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(695, '99009009', 0, 0, '2013-03-22 14:55:08', 'MODIFICACION', ' Cedula: 99009009 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(696, '99009009', 0, 0, '2013-03-22 15:08:37', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis G ; Direccion: Calabozo ; Telefono: 1111111111-3453453453 ; Sexo: M', 'datosPer'),
(697, '99009009', 0, 0, '2013-03-22 15:09:02', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 1111111111-2222222222 ; Sexo: M', 'datosPer'),
(698, '99009009', 0, 0, '2013-03-22 15:09:02', 'MODIFICACION', ' Cedula: 12322677 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(699, '12322677', 0, 0, '2013-03-22 15:09:54', 'MODIFICACION', ' Cedula: 10620247 ; Nombre: Nombre de la Estudiante ; Direccion: BARRIO JOSE W. RODRIGUEZ, SECTOR 2, CASA Nº 7 ; Telefono: 2475143146-2222222222 ; Sexo: F', 'datosPer'),
(700, '12322677', 2, 0, '2013-03-22 15:09:54', 'MODIFICACION', ' Cedula: 10620247 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;39;41;42;45;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(701, '12322677', 0, 0, '2013-03-22 15:13:50', 'INSERCION', ' Cedula: 91222222 ; Nombre: Fulanito Extremista ; Direccion: deqweqweq ; Telefono: 8888888888- ; Sexo: M', 'datosPer'),
(702, '12322677', 104, 0, '2013-03-22 15:13:50', 'INSERCION', ' Cedula: 91222222 ; especialidad: 17 ; Tipo expediente: 1 ; Requisitos:  1; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(703, '12322677', 0, 2, '2013-03-28 10:55:58', 'ELIMINACION', ' Fecha Creacion: 2013-03-19 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-19 ; Titulo: Solicitud de nuevos manuales por inundacion ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(704, '12322677', 0, 5, '2013-03-28 11:05:25', 'INSERCION', ' Fecha Creacion: 2013-03-28 11:05:25 ; Departamento: Unidad de Salud Integral-Dpto. Desarrollo Est ; Tipo documento: Convenios ; Fecha Actualizacion: 2013-03-28 11:05:25 ; Titulo: Convenio con INSALUD para chequeos medicos ; Ubicacion: Estante 4, Carpeta 7', 'documento'),
(705, '12322677', 0, 6, '2013-03-28 11:05:59', 'INSERCION', ' Fecha Creacion: 2013-03-28 11:05:59 ; Departamento: Dpto. Investigación-Div. Academica ; Tipo documento: Actas de modificación de calificaciones ; Fecha Actualizacion: 2013-03-28 11:05:59 ; Titulo: wdkjdfsakldjl djslajd asljd asldjal ; Ubicacion: sldfjs dlfjskldjflskdf', 'documento'),
(706, '12322677', 0, 6, '2013-03-28 11:06:20', 'ELIMINACION', ' Fecha Creacion: 2013-03-28 ; Departamento: Dpto. Investigación-Div. Academica ; Tipo documento: Actas de modificación de calificaciones ; Fecha Actualizacion: 2013-03-28 ; Titulo: wdkjdfsakldjl djslajd asljd asldjal ; Ubicacion: sldfjs dlfjskldjflskdf', 'documento'),
(707, '99009009', 0, 0, '2013-03-28 13:28:22', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Luis G ; Direccion: Calabozo ; Telefono: 1111111111-3453453453 ; Sexo: M', 'datosPer'),
(708, '99009009', 0, 0, '2013-03-28 13:28:22', 'MODIFICACION', ' Cedula: 12547495 ; SE REALIZO CAMBIO DE CLAVE!!! ', 'clavePer'),
(709, '99009009', 0, 0, '2013-03-28 13:45:34', 'MODIFICACION', ' Cod. especialidad: 1 ; Descripcion: Tecnico Superior Universitario en Turismo ; Nivel Academico: 1', 'especialidad'),
(710, '12547495', 0, 7, '2013-03-28 14:02:26', 'INSERCION', ' Fecha Creacion: 2013-03-28 14:02:26 ; Departamento: Dpto. Servicios Generales-Div. Administrativa ; Tipo documento: Informes de rendimiento académico ; Fecha Actualizacion: 2013-03-28 14:02:26 ; Titulo: pruebas ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(711, '12547495', 0, 7, '2013-03-28 14:02:49', 'MODIFICACION', ' Fecha Creacion: 2013-03-28 ; Departamento: Dpto. Servicios Generales-Div. Administrativa ; Tipo documento: Informes de rendimiento académico ; Fecha Actualizacion: 2013-03-28 14:02:49 ; Titulo: pruebas de Dpto ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(712, '12547495', 0, 7, '2013-03-28 14:03:18', 'ELIMINACION', ' Fecha Creacion: 2013-03-28 ; Departamento: Dpto. Servicios Generales-Div. Administrativa ; Tipo documento: Informes de rendimiento académico ; Fecha Actualizacion: 2013-03-28 ; Titulo: pruebas de Dpto ; Ubicacion: Estante 1, Carpeta 1', 'documento'),
(713, '12547495', 0, 1, '2013-03-28 14:04:51', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-28 14:04:51 ; Titulo: Actividad realizada en Decanato ; Ubicacion: Estante 2, Carpeta 2.', 'documento'),
(714, '12547495', 0, 1, '2013-03-28 14:05:05', 'MODIFICACION', ' Fecha Creacion: 2013-03-07 ; Departamento: Biblioteca-Dpto. Desarrollo Estudiantil ; Tipo documento: Reglamentos y manuales de la Unefa ; Fecha Actualizacion: 2013-03-28 14:05:05 ; Titulo: Actividad realizada en Decanato ; Ubicacion: Estante 2, Carpeta 2', 'documento'),
(715, '12547495', 0, 8, '2013-03-28 14:06:30', 'INSERCION', ' Fecha Creacion: 2013-03-28 14:06:30 ; Departamento: Dpto. Administración y Finanzas-Div. Administ ; Tipo documento: Actas de Evaluación ; Fecha Actualizacion: 2013-03-28 14:06:30 ; Titulo: convenio ; Ubicacion: t1c1', 'documento'),
(716, '12547495', 0, 8, '2013-03-28 14:07:02', 'ELIMINACION', ' Fecha Creacion: 2013-03-28 ; Departamento: Dpto. Administración y Finanzas-Div. Administ ; Tipo documento: Actas de Evaluación ; Fecha Actualizacion: 2013-03-28 ; Titulo: convenio ; Ubicacion: t1c1', 'documento'),
(717, '12322677', 0, 0, '2013-04-06 18:09:32', 'INSERCION', ' Cedula: 16913015 ; Nombre: July Diaz ; Direccion: Calabozo ; Telefono: 2468711222- ; Sexo: F', 'datosPer'),
(718, '12322677', 105, 0, '2013-04-06 18:09:32', 'INSERCION', ' Cedula: 16913015 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;49;53; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(719, '12322677', 0, 0, '2013-04-06 18:10:48', 'MODIFICACION', ' Cedula: 16913015 ; Nombre: July Diaz ; Direccion: Calabozo ; Telefono: 2468711222- ; Sexo: F', 'datosPer'),
(720, '12322677', 105, 0, '2013-04-06 18:10:48', 'MODIFICACION', ' Cedula: 16913015 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(721, '99009009', 105, 0, '2013-04-07 10:52:44', 'ELIMINACION', ' Cedula: 16913015 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(722, '99009009', 0, 0, '2013-04-07 10:54:06', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador numero 4 ; Direccion: Calabozo ; Telefono: 1111111111-3453453453 ; Sexo: M', 'datosPer'),
(723, '99009009', 0, 0, '2013-04-07 10:54:17', 'MODIFICACION', ' Cedula: 12547495 ; Nombre: Operador Numero 4 ; Direccion: Calabozo ; Telefono: 1111111111-3453453453 ; Sexo: M', 'datosPer'),
(724, '99009009', 104, 0, '2013-04-07 11:12:30', 'ELIMINACION', ' Cedula: 91222222 ; especialidad: 17 ; Tipo expediente: 1 ; Requisitos:  1; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(725, '99009009', 103, 0, '2013-04-07 11:19:40', 'ELIMINACION', ' Cedula: 99333333 ; especialidad: 16 ; Tipo expediente: 6 ; Requisitos:  78;79; ; Ubicacion: gggggggggggggggg hhhhhhhhhhhhhhhhh ; Amonestado: N ; Observacion: gdfd dsdfg dgf dfg df df dfgdf g ; Activo: S', 'expediente'),
(726, '99009009', 100, 0, '2013-04-07 11:28:18', 'ELIMINACION', ' Cedula: 91234567 ; especialidad: 4 ; Tipo expediente: 8 ; Requisitos:  90;91;93;94; ; Ubicacion: sadfads fasdfadsfadsf ; Amonestado: N ; Observacion: efw fwfwerfwerew ; Activo: S', 'expediente'),
(727, '99009009', 99, 0, '2013-04-07 13:21:08', 'ELIMINACION', ' Cedula: 77777777 ; especialidad: 1 ; Tipo expediente: 12 ; Requisitos:   ; Ubicacion: dddddddddddddd ; Amonestado: N ; Observacion: ddddddddddd ; Activo: S', 'expediente'),
(728, '99009009', 0, 0, '2013-04-08 10:26:28', 'MODIFICACION', ' Cod. Requisito: 29 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica o preinscripción en el CNU (fotocopia simple) ; Cod. Tipo expediente: 2', 'requisiExp'),
(729, '99009009', 0, 0, '2013-04-08 10:26:48', 'MODIFICACION', ' Cod. Requisito: 28 ; Descripcion: Una (1) fotografía de frente (tamaño carnet) ; Cod. Tipo expediente: 2', 'requisiExp'),
(730, '99009009', 0, 0, '2013-04-08 10:27:20', 'MODIFICACION', ' Cod. Requisito: 29 ; Descripcion: Comprobante de presentación de la prueba de aptitud acadmica o preinscripción en el CNU (fotocopia simple) ; Cod. Tipo expediente: 2', 'requisiExp'),
(731, '99009009', 0, 0, '2013-04-08 10:27:31', 'MODIFICACION', ' Cod. Requisito: 29 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica o preinscripción en el CNU (fotocopia simple) ; Cod. Tipo expediente: 2', 'requisiExp'),
(732, '99009009', 0, 0, '2013-04-08 10:27:47', 'MODIFICACION', ' Cod. Requisito: 28 ; Descripcion: Una (1) fotografa de frente (tamaño carnet) ; Cod. Tipo expediente: 2', 'requisiExp'),
(733, '99009009', 0, 0, '2013-04-08 10:28:00', 'MODIFICACION', ' Cod. Requisito: 28 ; Descripcion: Una (1) fotografía de frente (tamaño carnet) ; Cod. Tipo expediente: 2', 'requisiExp'),
(734, '99009009', 0, 0, '2013-04-08 10:31:14', 'MODIFICACION', ' Cod. Requisito: 38 ; Descripcion: Notas certificadas de educación media (fotocopia simple - a vista del original). ; Cod. Tipo expediente: 3', 'requisiExp'),
(735, '99009009', 0, 0, '2013-04-08 10:32:00', 'MODIFICACION', ' Cod. Requisito: 46 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica (fotocopia simple). ; Cod. Tipo expediente: 3', 'requisiExp'),
(736, '99009009', 0, 0, '2013-04-08 10:37:18', 'MODIFICACION', ' Cod. Requisito: 46 ; Descripcion: Comprobante de presentación de la prueba de aptitud académica (fotocopia simple) ; Cod. Tipo expediente: 3', 'requisiExp'),
(737, '99009009', 0, 0, '2013-04-08 10:41:15', 'MODIFICACION', ' Cod. Requisito: 66 ; Descripcion: Título obtenido de Pregrado (fotocopia simple fondo negro - a vista del original, autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. Tipo expediente: 5', 'requisiExp'),
(738, '99009009', 0, 0, '2013-04-08 10:43:44', 'MODIFICACION', ' Cod. Requisito: 92 ; Descripcion: Título obtenido de Pregrado (fotocopia simple a fondo negro-a vista del original) autenticado por la Secretaría General de la Universidad de procedencia). ; Cod. Tipo expediente: 8', 'requisiExp'),
(739, '99009009', 0, 0, '2013-04-08 10:46:53', 'MODIFICACION', ' Cod. especialidad: 21 ; Descripcion: Tecnología Educativa (Acreditable a Maestría) ; Nivel Academico: 3', 'especialidad'),
(740, '99009009', 0, 0, '2013-04-08 10:50:26', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure, Ñaíé oá ; Telefono: 1111111111-2222222222 ; Sexo: M', 'datosPer'),
(741, '99009009', 0, 0, '2013-04-08 10:50:45', 'MODIFICACION', ' Cedula: 12322677 ; Nombre: Operador Numero 3 ; Direccion: San Fernando de Apure ; Telefono: 1111111111-2222222222 ; Sexo: M', 'datosPer'),
(742, '12322677', 0, 0, '2013-04-08 11:25:13', 'MODIFICACION', ' Cedula: 8160704 ; Nombre: Nombre del Estudiante ; Direccion: CALLE MIRANDA, CASA Nº 39 ; Telefono: 2473429198- ; Sexo: M', 'datosPer'),
(743, '12322677', 1, 0, '2013-04-08 11:25:13', 'MODIFICACION', ' Cedula: 8160704 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: S', 'expediente'),
(744, '12322677', 0, 0, '2013-04-08 12:00:51', 'MODIFICACION', ' Cedula: 8160704 ; Nombre: Nombre del Estudiante ; Direccion: CALLE MIRANDA, CASA Nº 39 ; Telefono: 2473429198- ; Sexo: M', 'datosPer'),
(745, '12322677', 1, 0, '2013-04-08 12:00:51', 'MODIFICACION', ' Cedula: 8160704 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: S', 'expediente'),
(746, '12322677', 0, 0, '2013-04-08 12:01:42', 'MODIFICACION', ' Cedula: 6327276 ; Nombre: Nombre del Estudiante ; Direccion: CALLE PPAL CASA NRO 28 ACHAGUAS ; Telefono: 2475155451-4269102113 ; Sexo: M', 'datosPer'),
(747, '12322677', 5, 0, '2013-04-08 12:01:42', 'MODIFICACION', ' Cedula: 6327276 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(748, '12322677', 0, 0, '2013-04-08 12:01:52', 'MODIFICACION', ' Cedula: 11691494 ; Nombre: MIGUEL JUSGLADER ANGARITA NAVARRO ; Direccion: URB. JOSE FELIX RIBAS CALLE 07 CASA S/N SAN FDO APURE ; Telefono: 4147541300- ; Sexo: M', 'datosPer'),
(749, '12322677', 6, 0, '2013-04-08 12:01:52', 'MODIFICACION', ' Cedula: 11691494 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: ACTUALIZAR EXP Y PRESENTÓ TITULO EXTRAVIADO ; Activo: S', 'expediente'),
(750, '12322677', 0, 0, '2013-04-08 12:02:06', 'MODIFICACION', ' Cedula: 6304676 ; Nombre: JAVIER ALEXANDER REYES  ; Direccion: URB. LOS TAMARINDOS, SECTOR I, VEREDA 55, CASA NRO 1 ; Telefono: 2473424737-4144604294 ; Sexo: M', 'datosPer'),
(751, '12322677', 8, 0, '2013-04-08 12:02:06', 'MODIFICACION', ' Cedula: 6304676 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(752, '12322677', 0, 0, '2013-04-08 12:02:15', 'MODIFICACION', ' Cedula: 11757859 ; Nombre: WILMER MANUEL GARCIA TOVAR  ; Direccion: BARRIO RAUL LEONI 2DA TRANSVERSAL NRO 7-A ; Telefono: 4161404111- ; Sexo: M', 'datosPer'),
(753, '12322677', 9, 0, '2013-04-08 12:02:15', 'MODIFICACION', ' Cedula: 11757859 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(754, '12322677', 0, 0, '2013-04-08 12:02:24', 'MODIFICACION', ' Cedula: 11842915 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: 6TA TRANSVERSAL CASA NRO 58 RESIDENCIAS IRAIDA, APTO 01 BIRU ; Telefono: 2475154849-4145999042 ; Sexo: M', 'datosPer'),
(755, '12322677', 10, 0, '2013-04-08 12:02:24', 'MODIFICACION', ' Cedula: 11842915 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(756, '99009009', 96, 0, '2013-04-13 15:01:16', 'ELIMINACION', ' Cedula: 11222444 ; especialidad: 16 ; Tipo expediente: 7 ; Requisitos:  82;83;84;85;86; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requisitos ; Activo: S', 'expediente'),
(757, '12322677', 0, 0, '2013-04-17 08:54:08', 'MODIFICACION', ' Cedula: 10111222 ; Nombre: JOSE DE JESUS URBANEJA IZQUIERDO ; Direccion: CALABOZO ; Telefono: 4243038087-3453453453 ; Sexo: M', 'datosPer'),
(758, '12322677', 95, 0, '2013-04-17 08:54:08', 'MODIFICACION', ' Cedula: 10111222 ; especialidad: 6 ; Tipo expediente: 11 ; Requisitos:  123;124; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente'),
(759, '12322677', 0, 0, '2013-04-17 08:54:40', 'MODIFICACION', ' Cedula: 11222444 ; Nombre: JAIMAR KARINA ; Direccion: Calle Plaza, numero 5 ; Telefono: 1212122121-3453453453 ; Sexo: F', 'datosPer'),
(760, '12322677', 98, 0, '2013-04-17 08:54:40', 'MODIFICACION', ' Cedula: 11222444 ; especialidad: 23 ; Tipo expediente: 5 ; Requisitos:  65;66;67;68;69;70;71;72;73; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono y le agregue unos requisitos ; Activo: S', 'expediente'),
(761, '12322677', 0, 0, '2013-04-17 08:54:55', 'MODIFICACION', ' Cedula: 12822308 ; Nombre: DIANA ANGELICA DE LA ROSA DE PIÑATE ; Direccion: SERAFIN CEDEÑO VEREDA 9 Nº 13 ; Telefono: 2473422919-4162346174 ; Sexo: F', 'datosPer'),
(762, '12322677', 86, 0, '2013-04-17 08:54:55', 'MODIFICACION', ' Cedula: 12822308 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(763, '12322677', 0, 0, '2013-04-17 08:55:04', 'MODIFICACION', ' Cedula: 12900925 ; Nombre: NESTOR MARIA HERNANDEZ  ; Direccion: BARRIO JOSE ANTONIO PAEZ 2do CALLEJON CASA Nº 4 ; Telefono: 2473422337-4127849234 ; Sexo: M', 'datosPer'),
(764, '12322677', 87, 0, '2013-04-17 08:55:04', 'MODIFICACION', ' Cedula: 12900925 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;49; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(765, '12322677', 0, 0, '2013-04-17 08:55:11', 'MODIFICACION', ' Cedula: 12903263 ; Nombre: ILVIA NIXORE CARABALLO ; Direccion: URB. JOSE ANTONIO PAEZ CALLE 21 Nº 26 ; Telefono: 2472540631-4241743892 ; Sexo: F', 'datosPer'),
(766, '12322677', 88, 0, '2013-04-17 08:55:11', 'MODIFICACION', ' Cedula: 12903263 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(767, '12322677', 0, 0, '2013-04-17 08:55:19', 'MODIFICACION', ' Cedula: 12903783 ; Nombre: MELGAR ALFREDO GOMEZ CASTILLO ; Direccion: URB. EL TAMARINDO CALLE 5 Nº 16 ; Telefono: 2478085455-4142971861 ; Sexo: F', 'datosPer'),
(768, '12322677', 89, 0, '2013-04-17 08:55:19', 'MODIFICACION', ' Cedula: 12903783 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(769, '12322677', 0, 0, '2013-04-17 08:55:27', 'MODIFICACION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(770, '12322677', 90, 0, '2013-04-17 08:55:27', 'MODIFICACION', ' Cedula: 12904401 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(771, '12322677', 0, 0, '2013-04-17 08:56:02', 'MODIFICACION', ' Cedula: 12322324 ; Nombre: MAYRA DEL ROSARIO CONTRERAS ; Direccion: URB LOS CENTAUROS CALLE PRINCIPAL VEREDA 4 MANZANA F ; Telefono: 2473410684-4144887573 ; Sexo: F', 'datosPer'),
(772, '12322677', 81, 0, '2013-04-17 08:56:02', 'MODIFICACION', ' Cedula: 12322324 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(773, '12322677', 0, 0, '2013-04-17 08:56:12', 'MODIFICACION', ' Cedula: 12322535 ; Nombre: HECTOR JOSE CEBALLOS MENDOZA  ; Direccion: BARRIO LA ODISEA 5TA TRANSVERSAL AL FINAL ; Telefono: 4144776349- ; Sexo: M', 'datosPer'),
(774, '12322677', 82, 0, '2013-04-17 08:56:12', 'MODIFICACION', ' Cedula: 12322535 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(775, '12322677', 0, 0, '2013-04-17 08:56:19', 'MODIFICACION', ' Cedula: 12324342 ; Nombre: YARIDY JOSEFINA MELO GAMEZ ; Direccion: LOS CENTAUROS CALLE PRINCIPAL Nº 09 ; Telefono: 4144735534-4144633497 ; Sexo: F', 'datosPer'),
(776, '12322677', 83, 0, '2013-04-17 08:56:19', 'MODIFICACION', ' Cedula: 12324342 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;46;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(777, '12322677', 0, 0, '2013-04-17 08:56:28', 'MODIFICACION', ' Cedula: 12442551 ; Nombre: MELVIN ENRIQUE ORTEGA VILCHEZ ; Direccion: CALLE PAEZ CON QUESERAS DEL MEDIO CASA Nº 74 ; Telefono: 4124517113-4144737043 ; Sexo: M', 'datosPer'),
(778, '12322677', 84, 0, '2013-04-17 08:56:28', 'MODIFICACION', ' Cedula: 12442551 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(779, '12322677', 0, 0, '2013-04-17 08:56:37', 'MODIFICACION', ' Cedula: 12442551 ; Nombre: MELVIN ENRIQUE ORTEGA VILCHEZ ; Direccion: CALLE PAEZ CON QUESERAS DEL MEDIO CASA Nº 74 ; Telefono: 4124517113-4144737043 ; Sexo: M', 'datosPer'),
(780, '12322677', 84, 0, '2013-04-17 08:56:37', 'MODIFICACION', ' Cedula: 12442551 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(781, '12322677', 0, 0, '2013-04-17 08:56:45', 'MODIFICACION', ' Cedula: 12584108 ; Nombre: ALVARO AURELIO DIAZ MUÑOZ ; Direccion: BIRUACA 7ma TRANSVERSAL CASA Nº 16 ; Telefono: 2473645484-4140355934 ; Sexo: M', 'datosPer'),
(782, '12322677', 85, 0, '2013-04-17 08:56:45', 'MODIFICACION', ' Cedula: 12584108 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;40;42;45;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(783, '12322677', 0, 0, '2013-04-17 08:58:02', 'MODIFICACION', ' Cedula: 4111623 ; Nombre: JESUS MANUEL CONTRERAS CONTRERAS ; Direccion: URB. SAN FDO 2000, CASA 5, PARCELA 9, MUNICIPIO CAMAGUAN EDO ; Telefono: 247342914-4145434020 ; Sexo: M', 'datosPer'),
(784, '12322677', 7, 0, '2013-04-17 08:58:02', 'MODIFICACION', ' Cedula: 4111623 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: NOTAS EN FORMATO VIEJO ; Activo: N', 'expediente'),
(785, '12322677', 0, 0, '2013-04-17 08:58:12', 'MODIFICACION', ' Cedula: 8192754 ; Nombre: SILVIA BRUMELIS ROJAS NUÑEZ ; Direccion: CALLE NEGRO PRIMERO NRO 71, CERCA DE EXPRESOS LOS LLANOS ; Telefono: 2473410932-4144788070 ; Sexo: F', 'datosPer'),
(786, '12322677', 11, 0, '2013-04-17 08:58:12', 'MODIFICACION', ' Cedula: 8192754 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(787, '12322677', 0, 0, '2013-04-17 08:58:20', 'MODIFICACION', ' Cedula: 13254403 ; Nombre: YENNYS DIVERSI DONAIRE ; Direccion: LA UNION DE BARINAS CALLE LA BONQUERA AL FINAL ; Telefono: 2475156235-4140396978 ; Sexo: F', 'datosPer'),
(788, '12322677', 12, 0, '2013-04-17 08:58:20', 'MODIFICACION', ' Cedula: 13254403 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(789, '12322677', 0, 0, '2013-04-17 08:58:28', 'MODIFICACION', ' Cedula: 9203409 ; Nombre: ANA MARIA GARCIA FRANCO ; Direccion: BARRIO ANTONIO JOSE DE SUCRE ; Telefono: 4243409553- ; Sexo: F', 'datosPer'),
(790, '12322677', 13, 0, '2013-04-17 08:58:28', 'MODIFICACION', ' Cedula: 9203409 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: TARJETA DE IDENTIDA POR SER COLOMBIANA ; Activo: S', 'expediente'),
(791, '12322677', 0, 0, '2013-04-17 08:58:34', 'MODIFICACION', ' Cedula: 9590153 ; Nombre: BLANCA ARACELIS NUÑEZ DE HERRERA ; Direccion: BARRIO LA HIDALGUIA, CALLE PRINCIPAL NRO 38 ; Telefono: 4140509458-2473426121 ; Sexo: F', 'datosPer'),
(792, '12322677', 14, 0, '2013-04-17 08:58:34', 'MODIFICACION', ' Cedula: 9590153 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(793, '12322677', 0, 0, '2013-04-17 08:58:41', 'MODIFICACION', ' Cedula: 9590153 ; Nombre: BLANCA ARACELIS NUÑEZ DE HERRERA ; Direccion: BARRIO LA HIDALGUIA, CALLE PRINCIPAL NRO 38 ; Telefono: 4140509458-2473426121 ; Sexo: F', 'datosPer'),
(794, '12322677', 14, 0, '2013-04-17 08:58:41', 'MODIFICACION', ' Cedula: 9590153 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(795, '12322677', 0, 0, '2013-04-17 08:58:47', 'MODIFICACION', ' Cedula: 13723533 ; Nombre: FELIX JOSE TORRES VILLANUEVA ; Direccion: AV LOS CENTAUROS AL LADO FARMACIA SAN MARCOS SAN FDO APURE ; Telefono: 2473423564-4143594355 ; Sexo: M', 'datosPer'),
(796, '12322677', 15, 0, '2013-04-17 08:58:47', 'MODIFICACION', ' Cedula: 13723533 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(797, '12322677', 0, 0, '2013-04-17 08:59:07', 'MODIFICACION', ' Cedula: 14218482 ; Nombre: JHONNY EGREDYS MORENO ; Direccion: BARRIO JOSE WILFREDO  RODRIGUEZ SECTOR I CASA NRO 34 SAN FDO ; Telefono: 4267445378- ; Sexo: M', 'datosPer'),
(798, '12322677', 16, 0, '2013-04-17 08:59:07', 'MODIFICACION', ' Cedula: 14218482 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(799, '12322677', 0, 0, '2013-04-17 08:59:14', 'MODIFICACION', ' Cedula: 14947894 ; Nombre: CARLOS LUIS GARRIDO PEREZ ; Direccion: CALLE 5 DE JULIO URB. RAUL LEONI ACHAGUAS ; Telefono: 2478821921-4161401752 ; Sexo: M', 'datosPer'),
(800, '12322677', 17, 0, '2013-04-17 08:59:14', 'MODIFICACION', ' Cedula: 14947894 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(801, '12322677', 0, 0, '2013-04-17 08:59:21', 'MODIFICACION', ' Cedula: 15046274 ; Nombre: FERMIN JOVANNY LOVERA CADENAS ; Direccion: CALLE PIAR AL FINAL DIAGONAL A LA AV FUERZAS ARMADAS SAN FDO ; Telefono: 2473411280-4145998874 ; Sexo: M', 'datosPer'),
(802, '12322677', 18, 0, '2013-04-17 08:59:21', 'MODIFICACION', ' Cedula: 15046274 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente');
INSERT INTO `historico` (`codHist`, `cedulaOp`, `numExp`, `numDoc`, `fechaHora`, `operacion`, `cambios`, `tabla`) VALUES
(803, '12322677', 0, 0, '2013-04-17 08:59:27', 'MODIFICACION', ' Cedula: 9590295 ; Nombre: SANTA GUILLERMINA CASTILLO DE MARCHENA ; Direccion: BARRIO EL CALVARIO, CALLE PRINCIPAL, CASA NRO. 94-37 ; Telefono: 2473420110-4162489048 ; Sexo: F', 'datosPer'),
(804, '12322677', 19, 0, '2013-04-17 08:59:27', 'MODIFICACION', ' Cedula: 9590295 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(805, '12322677', 0, 0, '2013-04-17 08:59:37', 'MODIFICACION', ' Cedula: 9590295 ; Nombre: SANTA GUILLERMINA CASTILLO DE MARCHENA ; Direccion: BARRIO EL CALVARIO, CALLE PRINCIPAL, CASA NRO. 94-37 ; Telefono: 2473420110-4162489048 ; Sexo: F', 'datosPer'),
(806, '12322677', 19, 0, '2013-04-17 08:59:37', 'MODIFICACION', ' Cedula: 9590295 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(807, '12322677', 0, 0, '2013-04-17 08:59:43', 'MODIFICACION', ' Cedula: 15047174 ; Nombre: BERMYS JOSE SANTANA TERAN ; Direccion: CALLE RODRIGUEZ RINCONES NRO 20 ; Telefono: 2473421046-4269322796 ; Sexo: M', 'datosPer'),
(808, '12322677', 20, 0, '2013-04-17 08:59:43', 'MODIFICACION', ' Cedula: 15047174 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(809, '12322677', 0, 0, '2013-04-17 08:59:54', 'MODIFICACION', ' Cedula: 9596987 ; Nombre: JESUS ALBERTO LUGO RANGEL ; Direccion: URB. MERECURE, SECTOR 4, TRANSVERSAL II ; Telefono: 2473640923-4144871432 ; Sexo: M', 'datosPer'),
(810, '12322677', 21, 0, '2013-04-17 08:59:54', 'MODIFICACION', ' Cedula: 9596987 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;43;45;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(811, '12322677', 0, 0, '2013-04-17 09:00:10', 'MODIFICACION', ' Cedula: 15100167 ; Nombre: JORGE LUIS HERNANDEZ BOLIVAR ; Direccion: URB. EL MERECURE CALLE 13 SECTOR 02 CASA NRO 25 BIRUACA ; Telefono: 2473640595-4149456716 ; Sexo: M', 'datosPer'),
(812, '12322677', 22, 0, '2013-04-17 09:00:10', 'MODIFICACION', ' Cedula: 15100167 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;47;48;49;52; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: DOCUMENTOS INCOMPLETOS ; Activo: S', 'expediente'),
(813, '12322677', 0, 0, '2013-04-17 09:00:17', 'MODIFICACION', ' Cedula: 9684407 ; Nombre: JOSE GREGORIO GARCIA BRICEÑO ; Direccion: URB. LOS TAMARINDOS, AV. JULIO CESAR SANCHEZ OLIVO, SECTOR 1 ; Telefono: 4268453158- ; Sexo: M', 'datosPer'),
(814, '12322677', 23, 0, '2013-04-17 09:00:17', 'MODIFICACION', ' Cedula: 9684407 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(815, '12322677', 0, 0, '2013-04-17 09:00:25', 'MODIFICACION', ' Cedula: 15512959 ; Nombre: ISLEYER ESTILITA GALLIPOLY SIERRA ; Direccion: CALLE BOYACA NRO 25 ACHAGUAS ESTADO APURE.- ; Telefono: 2478820248-4243754089 ; Sexo: F', 'datosPer'),
(816, '12322677', 24, 0, '2013-04-17 09:00:25', 'MODIFICACION', ' Cedula: 15512959 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion: TITULO EXTRAVIADO ; Activo: S', 'expediente'),
(817, '12322677', 0, 0, '2013-04-17 09:00:32', 'MODIFICACION', ' Cedula: 15546191 ; Nombre: YOSNER EDUARDO ROSALES ACOSTA ; Direccion: SECTOR SAMAN LLORON CALLE BARINAS C/C EL MANGO NRO 2 ; Telefono: 2473411765-4144750382 ; Sexo: M', 'datosPer'),
(818, '12322677', 25, 0, '2013-04-17 09:00:32', 'MODIFICACION', ' Cedula: 15546191 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(819, '12322677', 0, 0, '2013-04-17 09:01:29', 'MODIFICACION', ' Cedula: 10620247 ; Nombre: Nombre de la Estudiante ; Direccion: BARRIO JOSE W. RODRIGUEZ, SECTOR 2, CASA Nº 7 ; Telefono: 2475143146-2222222222 ; Sexo: F', 'datosPer'),
(820, '12322677', 2, 0, '2013-04-17 09:01:29', 'MODIFICACION', ' Cedula: 10620247 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;39;41;42;45;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(821, '12322677', 0, 0, '2013-04-17 09:01:34', 'MODIFICACION', ' Cedula: 10621655 ; Nombre: Nombre del Estudiante ; Direccion: AV. CARACAS 2DA TRANSVERSAL BARRIO 9 DICIEMBRE ; Telefono: 4144735677- ; Sexo: F', 'datosPer'),
(822, '12322677', 3, 0, '2013-04-17 09:01:34', 'MODIFICACION', ' Cedula: 10621655 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;46;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: N', 'expediente'),
(823, '12322677', 0, 0, '2013-04-17 09:01:39', 'MODIFICACION', ' Cedula: 11236073 ; Nombre: Nombre del Estudiante ; Direccion: BARRIO SANTA ANA DIAGONAL A LA CANCHA ; Telefono: 4168479165- ; Sexo: F', 'datosPer'),
(824, '12322677', 4, 0, '2013-04-17 09:01:39', 'MODIFICACION', ' Cedula: 11236073 ; especialidad: 1 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: ARCHIVO ; Amonestado: N ; Observacion: NOTAS ORIGINALES; FALTAN COPIAS ; Activo: N', 'expediente'),
(825, '12322677', 0, 0, '2013-04-17 09:02:07', 'MODIFICACION', ' Cedula: 9747257 ; Nombre: RICHARD ANTONIO CUETO SOTO ; Direccion: URB. LA TRINIDAD, 2DA ETAPA, CASA NRO 11 ; Telefono: 4164411295-4144871472 ; Sexo: M', 'datosPer'),
(826, '12322677', 26, 0, '2013-04-17 09:02:07', 'MODIFICACION', ' Cedula: 9747257 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(827, '12322677', 0, 0, '2013-04-17 09:02:14', 'MODIFICACION', ' Cedula: 15998947 ; Nombre: SEIKY ASTRID DE LOS D. SAAVEDRA FREITES ; Direccion: AV. MIRANDA EDF. NAVAS PISO 1-1 SECTOR PICACHO ; Telefono: 2473412844-4243602362 ; Sexo: F', 'datosPer'),
(828, '12322677', 27, 0, '2013-04-17 09:02:14', 'MODIFICACION', ' Cedula: 15998947 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(829, '12322677', 0, 0, '2013-04-17 09:02:21', 'MODIFICACION', ' Cedula: 15998167 ; Nombre: FREDDY ALEXIS LOPEZ CASTILLO  ; Direccion: AV. MIRANDA, LA DEFENSA CALLE PRINCIPAL ; Telefono: 2475154100-4243685368 ; Sexo: M', 'datosPer'),
(830, '12322677', 28, 0, '2013-04-17 09:02:21', 'MODIFICACION', ' Cedula: 15998167 ; especialidad: 5 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;48;53; ; Ubicacion: ESTANTE NRO 2 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(831, '12322677', 0, 0, '2013-04-17 09:02:29', 'MODIFICACION', ' Cedula: 10617017 ; Nombre: RAFAEL MANUEL TORRES CERPA ; Direccion: URB. SANTA RUFINA, SECTOR 1, CALLE 10, NRO 35 ; Telefono: 2473645815-4161404136 ; Sexo: M', 'datosPer'),
(832, '12322677', 29, 0, '2013-04-17 09:02:29', 'MODIFICACION', ' Cedula: 10617017 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(833, '12322677', 0, 0, '2013-04-17 09:02:36', 'MODIFICACION', ' Cedula: 10619778 ; Nombre: ROSA MELEIDA GONZALEZ PEÑA ; Direccion: CALLE LOS JABILLOS NRO 21 CERCA DE VARIEDADES MARGARITA ; Telefono: 2473415023-4144740940 ; Sexo: F', 'datosPer'),
(834, '12322677', 30, 0, '2013-04-17 09:02:36', 'MODIFICACION', ' Cedula: 10619778 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;40;41;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(835, '12322677', 0, 0, '2013-04-17 09:14:13', 'MODIFICACION', ' Cedula: 10622292 ; Nombre: JULIO CESAR HIDALGO LOPEZ ; Direccion: URB. LOS TAMARINDOS, SECTOR LAS LLANERITAS, CASA NRO 075 ; Telefono: 2475111026- ; Sexo: M', 'datosPer'),
(836, '12322677', 31, 0, '2013-04-17 09:14:14', 'MODIFICACION', ' Cedula: 10622292 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;46;47;48;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(837, '12322677', 0, 0, '2013-04-17 09:14:21', 'MODIFICACION', ' Cedula: 11237086 ; Nombre: JONNY MOISES AREVALO SALAZAR ; Direccion: GUASIMO I, CALLE PRINCIPAL NRO 16 ; Telefono: 2475154318-4144759830 ; Sexo: M', 'datosPer'),
(838, '12322677', 32, 0, '2013-04-17 09:14:21', 'MODIFICACION', ' Cedula: 11237086 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(839, '12322677', 0, 0, '2013-04-17 09:14:30', 'MODIFICACION', ' Cedula: 11244576 ; Nombre: ELIO RAFAEL TOLEDO ; Direccion: BARRIO 9 DICIEMBRE, DETRAS DE LA RESIDENCIA DEL GOBERNADOR,  ; Telefono: 2473425103-4162402645 ; Sexo: M', 'datosPer'),
(840, '12322677', 33, 0, '2013-04-17 09:14:30', 'MODIFICACION', ' Cedula: 11244576 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  38;39;40;41;42;45;46;47;48;49; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(841, '12322677', 0, 0, '2013-04-17 09:14:38', 'MODIFICACION', ' Cedula: 11244600 ; Nombre: KALIA JOSEFINA HERRERA BARONI ; Direccion: URB. ALTOS DE PUERTO MIRANDA, MANZANA 20, NRO 20, EDO GUARIC ; Telefono: 2473415151-4144753973 ; Sexo: F', 'datosPer'),
(842, '12322677', 34, 0, '2013-04-17 09:14:38', 'MODIFICACION', ' Cedula: 11244600 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;49; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(843, '12322677', 0, 0, '2013-04-17 09:14:45', 'MODIFICACION', ' Cedula: 11761654 ; Nombre: JHONNY MANUEL MUJICA ; Direccion: URB. LUIS HERRERA, CALLE PRINCIPAL NRO 32 ; Telefono: 2475143084-2473412706 ; Sexo: M', 'datosPer'),
(844, '12322677', 35, 0, '2013-04-17 09:14:45', 'MODIFICACION', ' Cedula: 11761654 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(845, '12322677', 0, 0, '2013-04-18 10:25:51', 'MODIFICACION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(846, '12322677', 90, 0, '2013-04-18 10:25:52', 'MODIFICACION', ' Cedula: 12904401 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(847, '12322677', 0, 0, '2013-04-18 10:25:52', 'MODIFICACION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(848, '12322677', 90, 0, '2013-04-18 10:25:52', 'MODIFICACION', ' Cedula: 12904401 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(849, '12322677', 0, 0, '2013-04-18 10:26:05', 'MODIFICACION', ' Cedula: 10111222 ; Nombre: JOSE DE JESUS URBANEJA IZQUIERDO ; Direccion: CALABOZO ; Telefono: 4243038087-3453453453 ; Sexo: M', 'datosPer'),
(850, '12322677', 95, 0, '2013-04-18 10:26:05', 'MODIFICACION', ' Cedula: 10111222 ; especialidad: 6 ; Tipo expediente: 11 ; Requisitos:  123;124;125;126; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente'),
(851, '12322677', 0, 0, '2013-04-18 10:26:29', 'MODIFICACION', ' Cedula: 12324342 ; Nombre: YARIDY JOSEFINA MELO GAMEZ ; Direccion: LOS CENTAUROS CALLE PRINCIPAL Nº 09 ; Telefono: 4144735534-4144633497 ; Sexo: F', 'datosPer'),
(852, '12322677', 83, 0, '2013-04-18 10:26:29', 'MODIFICACION', ' Cedula: 12324342 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(853, '12322677', 0, 0, '2013-04-18 10:26:49', 'MODIFICACION', ' Cedula: 12322324 ; Nombre: MAYRA DEL ROSARIO CONTRERAS ; Direccion: URB LOS CENTAUROS CALLE PRINCIPAL VEREDA 4 MANZANA F ; Telefono: 2473410684-4144887573 ; Sexo: F', 'datosPer'),
(854, '12322677', 81, 0, '2013-04-18 10:26:49', 'MODIFICACION', ' Cedula: 12322324 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(855, '12322677', 0, 0, '2013-04-18 10:26:56', 'MODIFICACION', ' Cedula: 12900925 ; Nombre: NESTOR MARIA HERNANDEZ  ; Direccion: BARRIO JOSE ANTONIO PAEZ 2do CALLEJON CASA Nº 4 ; Telefono: 2473422337-4127849234 ; Sexo: M', 'datosPer'),
(856, '12322677', 87, 0, '2013-04-18 10:26:56', 'MODIFICACION', ' Cedula: 12900925 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;46;47;48;49; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(857, '12322677', 0, 0, '2013-04-18 10:34:37', 'MODIFICACION', ' Cedula: 12904401 ; Nombre: JOSE RICARDO RUIZ SALINAS ; Direccion: ENTRADA PRINCIPAL DE SANTA RUFINA  ; Telefono: 4143470011- ; Sexo: M', 'datosPer'),
(858, '12322677', 90, 0, '2013-04-18 10:34:37', 'MODIFICACION', ' Cedula: 12904401 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(859, '12322677', 0, 0, '2013-04-18 10:34:47', 'MODIFICACION', ' Cedula: 12324342 ; Nombre: YARIDY JOSEFINA MELO GAMEZ ; Direccion: LOS CENTAUROS CALLE PRINCIPAL Nº 09 ; Telefono: 4144735534-4144633497 ; Sexo: F', 'datosPer'),
(860, '12322677', 83, 0, '2013-04-18 10:34:47', 'MODIFICACION', ' Cedula: 12324342 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(861, '12322677', 36, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 3248351 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;40;45;48;53; ; Ubicacion: ESTANTE Nº 1 ; Amonestado: N ; Observacion: ESTUDIANTE EXTRANJERO FALTA TITULO TRAMITANDO POR LA ZONA EDUCATIVA ; Activo: S', 'expediente'),
(862, '12322677', 37, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 5359808 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(863, '12322677', 38, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 5360672 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;49;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(864, '12322677', 39, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 6026273 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(865, '12322677', 40, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 7333025 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  40;42;46; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS   ; Activo: S', 'expediente'),
(866, '12322677', 41, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 8196070 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(867, '12322677', 42, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 8561707 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS ; Activo: S', 'expediente'),
(868, '12322677', 43, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 82227353 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRANJERO, CAMBIAR FORMATO DE NOTAS  ; Activo: S', 'expediente'),
(869, '12322677', 44, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 9107059 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  40; ; Ubicacion: 01 ; Amonestado: N ; Observacion: ALUMNO EXTRAJERO, NO TIENE NOTAS, TITULO NINGUNO DE LOS DOCUMENTOS REQUERIDOS ; Activo: S', 'expediente'),
(870, '12322677', 45, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 9591973 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(871, '12322677', 46, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 9870043 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(872, '12322677', 47, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 9684187 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(873, '12322677', 48, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 9872295 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(874, '12322677', 49, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 6570614 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;41;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(875, '12322677', 50, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 12123930 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(876, '12322677', 51, 0, '2013-04-18 10:46:02', 'MODIFICACION', ' Cedula: 12322141 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: COPIA CERTIFICADA DE REGISTRO TITULO ; Activo: S', 'expediente'),
(877, '12322677', 52, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 9873538 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(878, '12322677', 53, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 9875569 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;41;42;43;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTA NOTAS BASICO ; Activo: S', 'expediente'),
(879, '12322677', 54, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 9876685 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(880, '12322677', 55, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 10159955 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;40;41;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTA FONDO NEGRO DEL TITULO ; Activo: S', 'expediente'),
(881, '12322677', 56, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 10615965 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(882, '12322677', 57, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 10616288 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(883, '12322677', 58, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 10617990 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(884, '12322677', 59, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 11198116 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(885, '12322677', 60, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12323440 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(886, '12322677', 61, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 11235659 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(887, '12322677', 62, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 11238483 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(888, '12322677', 63, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12323480 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;49;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion: NOTAS CERTIFICADAS EN FORMATO VIEJO ; Activo: S', 'expediente'),
(889, '12322677', 64, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12325793 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(890, '12322677', 65, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12581319 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(891, '12322677', 66, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12585045 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;41;42;45;46;47;48; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(892, '12322677', 67, 0, '2013-04-18 10:52:17', 'MODIFICACION', ' Cedula: 12633145 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;42;43;45;46;47;48;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(893, '12322677', 68, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 12903952 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;47;48;49;52; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(894, '12322677', 69, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 12925467 ; especialidad: 6 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: ESTANTE NRO 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(895, '12322677', 70, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11240153 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  38;39;40;42;45;47;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(896, '12322677', 71, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11241050 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(897, '12322677', 72, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11753724 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;42;45;47; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(898, '12322677', 73, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11755529 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(899, '12322677', 74, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11756410 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;45;47; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(900, '12322677', 75, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11757198 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(901, '12322677', 76, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11757914 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(902, '12322677', 77, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11761015 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(903, '12322677', 78, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 11762555 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;39;40;42;48; ; Ubicacion: 01 ; Amonestado: N ; Observacion: FALTAN DOCUMENTOS ; Activo: N', 'expediente'),
(904, '12322677', 79, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 12170265 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: N', 'expediente'),
(905, '12322677', 80, 0, '2013-04-18 11:00:00', 'MODIFICACION', ' Cedula: 12321020 ; especialidad: 4 ; Tipo expediente: 3 ; Requisitos:  37;38;39;40;41;42;45;46;47;48;53; ; Ubicacion: 01 ; Amonestado: N ; Observacion:  ; Activo: S', 'expediente'),
(906, '12322677', 95, 0, '2013-04-18 11:02:35', 'MODIFICACION', ' Cedula: 10111222 ; especialidad: 6 ; Tipo expediente: 11 ; Requisitos:  123;124;125;126; ; Ubicacion: ESTANTE 1 ; Amonestado: N ; Observacion: Le cambie el telefono ; Activo: S', 'expediente');

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
