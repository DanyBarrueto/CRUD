-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 18:04:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eiatec2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('adsasdsad@gmail.com|127.0.0.1', 'i:1;', 1717078436),
('adsasdsad@gmail.com|127.0.0.1:timer', 'i:1717078436;', 1717078436),
('asdasds@gmail.com|127.0.0.1', 'i:1;', 1717077151),
('asdasds@gmail.com|127.0.0.1:timer', 'i:1717077151;', 1717077151);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_cargo` varchar(100) NOT NULL,
  `Cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_cargo`, `Cargo`) VALUES
('1', 'Abogado(a)'),
('10', 'Auxiliar Administrativo'),
('100', 'Practicante Universitario Compras'),
('101', 'Practicante Universitario Contable'),
('102', 'Practicante Universitario Forestal'),
('103', 'Practicante Universitario Gestion Humana'),
('104', 'Practicante Universitario Gología'),
('105', 'Practicante Universitario Hidrólogia'),
('106', 'Practicante Universitario Hseq'),
('107', 'Practicante Universitario Juridico'),
('108', 'Practicante Universitario Social'),
('109', 'Practicante Universitario TIC'),
('11', 'Auxiliar Administrativa'),
('110', 'Prof. Ambiental'),
('111', 'Profesional  Social'),
('112', 'Profesional Abiótico'),
('113', 'Profesional Abiótico Senior'),
('114', 'Profesional Administrativo'),
('115', 'Profesional Agrólogo (a)'),
('116', 'Profesional Agrónomo (a)'),
('117', 'Profesional Ambiental'),
('118', 'Profesional Antropologo'),
('119', 'Profesional Arqueólogia'),
('12', 'Auxiliar Ambiental'),
('120', 'Profesional Biólogo'),
('121', 'Profesional Biólogo Herpetólogo'),
('122', 'Profesional Biólogo Mastozoólogo'),
('123', 'Profesional Biólogo Ornitólogo'),
('124', 'Profesional Biólogo Senior'),
('125', 'Profesional Biotico'),
('126', 'Profesional Biótico Intermedio'),
('127', 'Profesional Biótico Junior'),
('128', 'Profesional Biótico Senior'),
('129', 'Profesional Catastral'),
('13', 'Auxiliar Comercial'),
('130', 'Profesional Civil'),
('131', 'Profesional Comercial'),
('132', 'Profesional De Aseguramiento De Información - Sig'),
('133', 'Profesional De Minas'),
('134', 'Profesional De Petróleos'),
('135', 'Profesional Especializado'),
('136', 'Profesional Finanzas'),
('137', 'Profesional Forestal'),
('138', 'Profesional Geógrafo'),
('139', 'Profesional Geología'),
('14', 'Auxiliar Compras'),
('140', 'Profesional Hseq'),
('141', 'Profesional Industrial'),
('142', 'Profesional Intermedio - Gestión Documental De Proyectos'),
('143', 'Profesional Intermedio - Gestor Social'),
('144', 'Profesional Intermedio - Supervisión De Contratos'),
('145', 'Profesional Intermedio- Supervisión de contratos'),
('146', 'Profesional Junior Social'),
('147', 'Profesional Jurídico'),
('148', 'Profesional Predial'),
('149', 'Profesional Predial Senior'),
('15', 'Auxiliar Contable'),
('150', 'Profesional Senior Abogado'),
('151', 'Profesional Senior Social'),
('152', 'Profesional SIG '),
('153', 'Profesional Sig /Profesional De Aseguramiento De Información'),
('154', 'Profesional Sig Junior'),
('155', 'Profesional Sig Senior'),
('156', 'Profesional Social'),
('157', 'Profesional Social Experta'),
('158', 'Psicólogo (a)'),
('159', 'Sociólogo (a)'),
('16', 'Auxiliar de  servicios  generales'),
('160', 'Subgerente'),
('161', 'Técnico Sistemas '),
('162', 'Técnico TIC'),
('163', 'Tecnóloga con Conocimiento Específico - Ambiental'),
('164', 'Tecnólogo CE Forestal'),
('165', 'Tecnólogo Con Conocimiento Especifico En Biología'),
('166', 'Tecnólogo Con Conocimiento Especifico Forestal'),
('167', 'Tecnóloga Con Conocimiento Especifico Forestal'),
('168', 'Tecnólogo Geólogo'),
('169', 'Tecnologo Social'),
('17', 'Auxiliar de Campo'),
('170', 'Tesoreria'),
('171', 'Cambiarlo'),
('18', 'Auxiliar De Servicios Generales'),
('19', 'Auxiliar Forestal'),
('2', 'Administracion Sistemas'),
('20', 'Auxiliar Gestion Humana'),
('21', 'Auxiliar hseq'),
('22', 'Auxiliar Social'),
('23', 'Auxiliar Tecnico'),
('24', 'Auxliar Compras'),
('25', 'Biólogo'),
('26', 'Biólogo Epífito  '),
('27', 'Contador Junior'),
('28', 'Coordinador (a) Gestion Humana'),
('29', 'Coordinador (a) Hseq'),
('3', 'Administrativo'),
('30', 'Coordinador Administrativo (a)'),
('31', 'Coordinador Comercial'),
('32', 'Coordinador Compras'),
('33', 'Coordinador Contable'),
('34', 'Coordinador de Arqueología'),
('35', 'Coordinador De Proyectos'),
('36', 'Coordinador GEB'),
('37', 'Coordinador Gestión Humana'),
('38', 'Coordinador Jurídico'),
('39', 'Coordinador Logístico'),
('4', 'Agrólogo (a)'),
('40', 'Coordinador Proyectos'),
('41', 'Coordinadora Proyectos '),
('42', 'Coordinador T.I'),
('43', 'Coordinador TIC'),
('44', 'Coordinador Administrativo'),
('45', 'Coordinador Social'),
('46', 'Coordinadora Social'),
('47', 'Cordinador HSEQ'),
('48', 'Cordinador Proyectos'),
('49', 'Cordinador Sistemas'),
('5', 'Agrónomo (a)'),
('50', 'Desarrollo de Proyectos'),
('51', 'Director Administrativo'),
('52', 'Ecólogo (a)'),
('53', 'Estructurador De Proyectos Pvc - Social'),
('54', 'Forestal'),
('55', 'Formulador(a) De Proyectos'),
('56', 'Geógrafo (a)'),
('57', 'Geologo (a)'),
('58', 'Gerente Administrativo'),
('59', 'Gerente Comercial'),
('6', 'Ambiental'),
('60', 'Gerente General'),
('61', 'Gerente Técnica'),
('62', 'Gestor Compras'),
('63', 'Gestor Contable'),
('64', 'Gestor de facturación'),
('65', 'Gestor Documental - Tecnico'),
('66', 'Gestor Financiero - Técnico'),
('67', 'Gestor Hseq'),
('68', 'Gestor Predial'),
('69', 'Gestor Social'),
('7', 'Antropólogo (a)'),
('70', 'Gestora Contable'),
('71', 'Gestora Social'),
('72', 'Hidrólogo (a)'),
('73', 'Ingeniero ambiental'),
('74', 'Ingeniero Catastral'),
('75', 'Ingeniero Civil'),
('76', 'Ingeniero De Petróleos'),
('77', 'Ingeniero de petróleos'),
('78', 'Ingeniero Forestal'),
('79', 'Ingeniero Hidrólogo'),
('8', 'Arqueólogo (a)'),
('80', 'Ingeniero Minas'),
('81', 'Logistico'),
('82', 'Logistico/Conduccion'),
('83', 'Pasante ambiental'),
('84', 'Pasante Universitario Administrativo'),
('85', 'Pasante Universitario Ambiental'),
('86', 'Pasante Universitario Biólogo'),
('87', 'Pasante Universitario Compras'),
('88', 'Pasante Universitario Contable'),
('89', 'Pasante Universitario Forestal'),
('9', 'Asistente Administrativa'),
('90', 'Pasante Universitario Gestion Humana'),
('91', 'Pasante Universitario Gología'),
('92', 'Pasante Universitario Hidrólogia'),
('93', 'Pasante Universitario Hseq'),
('94', 'Pasante Universitario Juridico'),
('95', 'Pasante Universitario Social'),
('96', 'Pasante Universitario TIC'),
('97', 'Practicante Universitario Administrativo'),
('98', 'Practicante Universitario Ambiental'),
('99', 'Practicante Universitario Biólogo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinadores`
--

CREATE TABLE `coordinadores` (
  `ID_coordinador` varchar(50) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coordinadores`
--

INSERT INTO `coordinadores` (`ID_coordinador`, `Nombre`) VALUES
('1', 'Nayive Gutierrez Romero'),
('10', 'Sara Mayerly Amado Ariza'),
('11', 'Ancizar Sanchez Urriago'),
('12', 'Cristhian Bernardo Rivera'),
('13', 'Marcela Cabrera'),
('14', 'Andres Valbuena'),
('15', 'Adriana Palma'),
('16', 'Cristhian Rivera'),
('17', 'Maria Gomez'),
('18', 'Monica Valderrama'),
('19', 'Madeline Ossa'),
('2', 'Wilson Ramírez Pineda'),
('20', 'Carlos Galan'),
('21', 'Ninguno'),
('22', 'Cambiarlo'),
('3', 'Sandra Milena Perez Pico'),
('4', 'Rubén Darío Ramírez Motta'),
('5', 'Steven Ricardo Garzón Burgos'),
('6', 'Nara Marcela Niño Martinez'),
('7', 'Camila Rivera Paez'),
('8', 'Clara Johanna Rodriguez Melo'),
('9', 'Diego Fernando Mantilla Rincon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `ID_direccion` varchar(50) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`ID_direccion`, `Direccion`) VALUES
('1', 'Norte'),
('2', 'Centro'),
('3', 'Sur'),
('4', 'Local');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `ID_equipo` int(11) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Codigo` varchar(50) DEFAULT NULL,
  `ID_tipo` varchar(50) DEFAULT NULL,
  `ID_marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(500) DEFAULT NULL,
  `Num_serie` varchar(500) DEFAULT NULL,
  `Id_producto` varchar(500) DEFAULT NULL,
  `Procesador` varchar(500) DEFAULT NULL,
  `Ram` varchar(50) DEFAULT NULL,
  `Disco` varchar(50) DEFAULT NULL,
  `GPU_APU` varchar(50) DEFAULT NULL,
  `Sistema_operativo` varchar(50) DEFAULT NULL,
  `ID_licencia` varchar(50) DEFAULT NULL,
  `Display` varchar(50) DEFAULT NULL,
  `Anydesk` varchar(50) DEFAULT NULL,
  `ID_ubicacion` varchar(50) DEFAULT NULL,
  `ID_oficina` varchar(50) DEFAULT NULL,
  `ID_direccion` varchar(50) DEFAULT NULL,
  `Clave_equipo` varchar(50) DEFAULT NULL,
  `ID_trabajador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID_equipo`, `Estado`, `Codigo`, `ID_tipo`, `ID_marca`, `Modelo`, `Num_serie`, `Id_producto`, `Procesador`, `Ram`, `Disco`, `GPU_APU`, `Sistema_operativo`, `ID_licencia`, `Display`, `Anydesk`, `ID_ubicacion`, `ID_oficina`, `ID_direccion`, `Clave_equipo`, `ID_trabajador`) VALUES
(1, 'Asignado', '1002', '2', '2', 'ZenBook UX434IQ_Q407IQ', 'LAN0CV14R241439', 'Cambiarlo', 'AMD Ryzen 5 5500U with Radeon Graphics 2.10GHz', '8GB', '500GB', 'NVIDIA GeForce MX350', 'Windows11', '2', '14\" FHD', '417118591', '1', '1', '2', 'EArgC23$', 1),
(2, 'Asignado', '0571', '2', '2', 'X415E', 'N4N0CV02B655148', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', 'Cambiarlo', '1596010666', '1', '1', '2', 'EAmmC23$', 2),
(3, 'Asignado', '0228', '2', '1', 'N2001', 'NHQ7MAL01B1410E1853400', '00327-31080-90027-AAOEM', 'Intel(R) Core(TM) i5-10300H CPU @ 2.50GHz   2.50 GHz', '8GB', '256GB+1TB', 'NVIDIA GeForce GTX 1650', 'Windows11', '3', '15.6\" FHD', '1428695704', '3', '3', '3', 'EAptC23$', 3),
(4, 'Asignado', '0767', '2', '2', 'ASUS TUF Gaming F15 FX506LHB_FX506LHB', 'N6NRCX013433224', '00342-43279-59078-AAOEM', 'Cambiarlo', '8GB', '512GB', 'NVIDIA GeForce GTX 1650', 'Windows11', '3', '15.6\" FHD', '1372538767', '2', '2', '1', 'EAabC23$', 4),
(5, 'Asignado', '0538', '2', '4', 'Boh-WAQ9R', 'XVSPM2091100483', '00342-41422-50692-AAOEM', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '8GB', '1TB+512GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '715816531', '1', '4', '2', 'EAehC23$', 5),
(6, 'Pendiente', 'P1', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '4', '2', 'EÁadC23$', 6),
(7, 'Asignado', '0598', '2', '2', 'X45JA-EK2094W', 'NCN0CX039059508', 'Cambiarlo', 'Intel(R) Core ™ I5-1035G1 CPU @ 1.00 GHz 1.19GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1606501015', '2', '2', '1', 'EApgC23$', 7),
(8, 'Asignado', '0800', '2', '2', 'Vivobook X1605EA', 'R4N0CV09K73516B', '00342-43359-13044-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '16GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1448199048', '1', '1', '2', 'EAmcC23$', 8),
(9, 'Asignado', '0855', '2', '3', 'V14 ADA', 'PF2YRQW5', '00330-53687-75007-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB +1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1925721383', '1', '4', '2', 'EAmcC23$', 9),
(10, 'Asignado', '0847', '2', '2', 'Vivobook Go E1504FA_E1504FA', 'RBN0CV13E31348D', '00342-43422-40338-AAOEM', 'AMD Ryzen 5 7520U with Radeon Graphics            2.80 GHz', '8GB', '512GB', 'AMD Radeon(TM) Graphics', 'Windows11', '3', '15,6\" FHD', '1079566868', '12', '6', '2', 'Cambiarlo', 10),
(11, 'Asignado', '0608', '2', '3', '82H7', 'PF40P03W', '00342-43306-67882-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '14\"', '1532000841', '1', '1', '2', 'EAmpC23$', 11),
(12, 'Pendiente', 'P4', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EAsuC23$', 12),
(13, 'Asignado', '0835', '2', '5', 'RTL8821CE', '5CD9176438', '00327-30708-24909-AAOEM', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx 2.00GHz', '8GB', '128GB +1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '637343959', '1', '1', '2', 'EAcvC23$', 13),
(14, 'Asignado', 'PDTE11', '2', '8', 'SATELLITE S55 - A5176 ', '1E105073S', '00326-10000-00000-AA960', 'Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz   2.40 GHz', '8GB', '500GB', 'Intel(R) HD Graphics Family', 'Windows11', '1', 'Cambiarlo', '1512033959', '1', '4', '2', 'EAfcC23$', 14),
(15, 'Asignado', '0671', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000620', '00327-31101-21307-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '14\" IPS', '838114586', '2', '2', '1', 'EAfrC23$', 15),
(16, 'Asignado', '0545', '2', '3', '82C6', 'PF2XDXPL', '00330-53689-87028-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '12GB', '1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', '14\"FHD ', '1570364676', '1', '6', '2', 'EÁrsC23$', 16),
(17, 'Asignado', '0842', '2', '3', '82C6', 'PF2XDPT5', '00330-53689-68852-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', '14\" FHD', '1161198022', '1', '1', '2', 'EAdpC23$', 17),
(18, 'Asignado', 'PDTE15', '2', '3', 'IdeaPad 3 82 KT', 'PF4BZ0WF', '00325-80000-00000-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics @ 2.10 GHz', '12GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1212331293', '2', '2', '1', 'EAgsC23$', 18),
(19, 'Pendiente', 'P27', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EAjrC23$', 19),
(20, 'Pendiente', 'P5', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '3', 'EAmmC23$', 20),
(21, 'Asignado', 'PDTE16', '2', '3', 'V14', 'PF2XDM87', '00330-53689-87027-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '968811863', '1', '1', '2', 'EAldC23$', 21),
(22, 'Asignado', '054', '2', '3', '81F4', 'YD04R2RR', '00327-30209-74198-AAOEM', 'Intel(R) Core(TM) i3-8130U CPU @ 2.20GHz   2.20 GHz', '12GB ', '512GB', 'Intel(R) UHD Graphics 620', 'Windows11', '3', '14\"FHD', '1939719334', '1', '1', '2', 'EAjpC23$', 22),
(23, 'Asignado', 'PDTE18', '2', '3', '82KT', 'PF4BZ0Y9', '00331-10000-00001-AA014', 'AMD Ryzen 5 5500U with Radeon Graphics 2.10 GHz', '12GB', '512GB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1627599284', '2', '2', '1', 'EAepC23$', 23),
(24, 'Asignado', '0849', '2', '3', '82XQ', 'PF4HPHFC', '00342-43404-78861-AAOEM', 'AMD Ryzen 5 7520U with Radeon Graphics 2.80 GHz', '8GB', '512GB', 'AMD Radeon(TM) 610M', 'Windows11', '3', '15,6\" FHD', '1097608122', '1', '6', '2', 'EAgrC23$', 24),
(25, 'No aplica', 'E1', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EBdhC23$', 25),
(26, 'Asignado', '0674', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000722', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '120GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '388176167 (Cambiarlo)', '2', '2', '1', 'EBmgC23$', 26),
(27, 'No aplica', 'A12', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EBlfC23$', 27),
(28, 'Asignado', '0678', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000800', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '128GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '794 449 409', '2', '2', '1', 'ECrpC23$', 28),
(29, 'Asignado', '0529', '2', '3', 'IDEAPAD GAMING 3', 'PF3KWENK', '00342-41452-36421-AAOEM', 'Intel(R) Core ™ I5-10300H CPU @ 2.50GHz 2.50GHz', '16GB', '256GB+1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '902645231', '1', '4', '2', 'ECvvC23$', 29),
(30, 'Pendiente', 'P37', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'ECabC23$', 30),
(31, 'Pendiente', 'P6', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'ECamC23$', 31),
(32, 'No aplica', 'A1', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', NULL, NULL, 'Cambiarlo', NULL, '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EChgC23$', 32),
(33, 'Pendiente', 'P7', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'EChgC23$', 33),
(34, 'Asignado', '0564', '2', '2', 'M413DA-EB466T', 'M2N0CX05197906G', '00327-60000-00000-AA335', 'AMD RYZEN 7 3700U with Radeon Vega Mobile Gfx 2.30GHz', '8GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '821782504', '1', '1', '2', 'ECmfC23$', 34),
(35, 'Asignado', '0052', '2', '4', 'BOHK-WAX9X', 'XVSPM20911001485', '00342-41422-50694-AAOEM', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx  2.10 GHz', '8GB', '1TB', 'AMD Radeon(TM) Vega 8 Graphics', 'Windows10', '3', 'Cambiarlo', '1952069813', '1', '1', '2', 'ECtsC23$', 35),
(36, 'Asignado', '0820', '2', '2', 'Vivobook_ASUSLaptop X1504ZA_X1504ZA', 'R8N0CX03N260337', 'Cambiarlo', 'Intel(R) Core(TM) i5-1235U, 1300 12th Gen ', '8GB', '500GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '15,6 FHD', '1982765055', '1', '1', '2', 'ECjrC23$', 36),
(37, 'Asignado', '0677', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000513', '00327-31101-21200-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '14\" IPS', '1763803947', '1', '6', '2', 'ECamC23$', 37),
(38, 'Asignado', '0572', '2', '2', 'X415E', 'N4N0CV02B48114H', 'Cambiarlo', 'Procesador Intel® Core™ i5-1135G7 @ 2,4 GHz - 4,2 GHz', '8GB', '256GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1873297863', '1', '1', '2', 'ECyoC23$', 38),
(39, 'Pendiente', 'P8', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'ECbrC23$', 39),
(40, 'Asignado', '0797', '2', '7', 'Vostro 3400', '3VG56W3', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB+1TB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', '14\" HD ', '1807871049', '2', '2', '1', 'ECebC23$', 40),
(41, 'Asignado', '0687', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000535', '00327-31101-21222-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1826299941', '1', '1', '2', 'ECygC23$', 41),
(42, 'Pendiente', 'P9', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'ECccC23$', 42),
(43, 'Asignado', 'PDTE33', '2', '3', 'IdeaPad 3 82 KT', 'PF4BZ8SD', '00325-80000-00000-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics @ 2.10 GHz', '12GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1635896131', '2', '2', '1', 'ECccC23$', 43),
(44, 'Asignado', '0823', '2', '2', 'F15 FX506HC_FX506HC', 'R1NRCX06641304D', '00342-43196-54525-AAOEM', '11th Gen Intel(R) Core(TM) i5-11400H @ 2.70GHz   2.69 GHz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1 000 854 504', '1', '1', '2', 'ECcoC23$', 44),
(45, 'Asignado', '0536', '2', '2', 'VivoBook X505ZA_X505ZA', 'K1N0CX15423604B', '00330-80000-00000-AA242', 'AMD Ryzen™ 5 7520U with Radeon Graphics 2.8GHz', '8GB', '128GB+1TB', 'Cambiarlo', 'Windows10', '2', '15\" FHD', '135576639', '1', '1', '2', 'ECcvC23$', 45),
(46, 'Asignado', '4063', '2', '3', 'G5045', 'PF08RX71', 'Cambiarlo', 'AMD A8-6410', '8GB', '650GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1512187418', '1', '1', '2', 'EClfC23$', 46),
(47, 'Asignado', 'PDTE37', '2', '3', 'IdeaPad 3 82 KT', 'PF4BZ0DX', '00325-80000-00000-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics @ 2.10 GHz', '12GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1911382444', '2', '2', '1', 'EDmlC23$', 47),
(48, 'No aplica', 'A16', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EDecC23$', 48),
(49, 'Pendiente', 'P10', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '12GB', '1TB+128GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '1', '4', '4', 'EDfbC23$', 49),
(50, 'Asignado', '0854', '2', '5', '15 CW0003LA', '5CD917643P', '00327-30708-26701-AAOEM', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx     2.00 GHz', '8GB', '512GB', 'AMD Radeon(TM) Vega 8 Graphics', 'Windows10', '3', 'Cambiarlo', '571096015', '1', '1', '2', 'EDmgC23$', 50),
(51, 'Pendiente', 'P11', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EDvbC23$', 51),
(52, 'Asignado', '0850', '2', '2', 'ASUSLaptop M1402IA_M1402IA', 'R1N0CV06F208027', '00342-42325-27936-AAOEM', 'AMD Ryzen 5 4600H with Radeon Graphics            3.00 GHz', '16GB', '512GB', 'AMD Radeon(TM) Graphics', 'Windows11', '3', '14\"FHD ', '1764810580', '1', '4', '2', 'EDgsC23$', 52),
(53, 'Asignado', 'PDTE40', '2', '3', 'IdeaPad 3 82 KT', 'PF4BYZLY', '00325-80000-00000-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics 2.10 GHz', '12GB', '512GB', 'Cambiarlo', 'Windows11', '5', 'Cambiarlo', '1545777379', '2', '2', '1', 'EDacC23$', 53),
(54, 'Pendiente', 'P35', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EDjsC23$', 54),
(55, 'Asignado', 'PDTE41', '2', '2', 'VivoBook_ASUSLaptop X415EA_X415EA', 'N4N0CV02B553144', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', 'Cambiarlo', '944 577 491', '2', '2', '1', 'EDpaC23$', 55),
(56, 'Pendiente', 'P29', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EDrhC23$', 56),
(57, 'Asignado', '0848', '2', '3', '82XQ', 'PF4HX54A', '00342-43404-67907-AAOEM', 'AMD Ryzen 5 7520U with Radeon Graphics 2.80 GHz', '8GB', '512GB', 'AMD Radeon(TM) 610M', 'Windows11', '3', '15,6\" FHD', '1292872068', '1', '1', '2', 'EDmaC23$', 57),
(58, 'Pendiente', 'P12', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EDarC23$', 58),
(59, 'Asignado', '0597', '2', '2', 'Vivobook_ASUSLaptop X1502ZA_X1502ZA', 'SNR1N0CV049648029', '00342-42325-21632-AAOEM', '12th Gen Intel(R) Core(TM) i7-1260P   2.10 GHz', '16GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', 'Cambiarlo', '312792036', '2', '2', '1', 'EDaaC23$', 59),
(60, 'Asignado', '0573', '2', '2', 'VivoBook_ASUSLaptop X415EA_X415EA', 'N4N0CV02B51014E', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', 'Cambiarlo', '1335346441', '1', '1', '2', 'EDcmC23$', 60),
(61, 'Pendiente', 'P13', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'EDkdC23$', 61),
(62, 'Asignado', '0570', '2', '2', 'Q407l', '12MLAN0CV14R366435', 'Cambiarlo', 'AMD Ryzen™ 5 4500U with Radeon Vega Mobile Gfx 3.8 GHz', '8GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '920849187', '1', '1', '2', 'EDmoC23$', 62),
(63, 'Asignado', 'PDTE46', '2', '1', 'N17C4', 'NXGY9AL0389150F5E63400', '00327-30704-97471-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '437937341', '3', '3', '3', 'EDmcC23$', 63),
(64, 'Asignado', '0681', '2', '4', 'KLVD-WDH9', 'BJHPM21C17000103', '00327-31099-30708-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '14\" IPS', '1 060 316 755', '2', '2', '1', 'EDpmC23$', 64),
(65, 'Asignado', '0556', '2', '2', 'X1502Z', 'N7N0CV05B60827E', 'Cambiarlo', 'Intel® Core™ i5-1240P 1.7 GHz - 4.4 GHz', '16GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '1', '1', '2', 'EDpoC23$', 65),
(66, 'Asignado', '0836', '2', '2', 'M409DA-BV387', 'L7N0CV15D093307', '00330-80000-00000-AA701', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '4GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1652714542', '1', '1', '2', 'EDfmC23$', 66),
(67, 'Asignado', 'PDTE49', '2', '4', 'Nbl-WAQ9R', 'M6TPM20806000274', '00327-70000-00001-AAO61', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '8GB', '512GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1193480264', '1', '4', '2', 'EDfmC23$', 67),
(68, 'Pendiente', 'P14', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'EDfsC23$', 68),
(69, 'Asignado', '0660', '2', '2', 'TUF Gaming FX505GT', 'LANRCV00H758420', '00325-81926-16082-AAOEM', 'Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz   2.59 GHz', '16GB', '1TB+512GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '501626672', '1', '1', '2', 'EDjrC23$', 69),
(70, 'Pendiente', 'P38', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EDamC23$', 70),
(71, 'No aplica', 'E2', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'Cambiarlo', 71),
(72, 'Asignado', '0540', '2', '3', 'IDEA PAD 3 14ITL6', 'PF3CZRV8', '00327-31098-94415-AAOEM', 'INTEL CORE i5', '8GB', '256GB ', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '582581832', '3', '3', '3', 'EEfmC23$', 72),
(73, 'Asignado', '0852', '2', '3', '82C6', 'PF2XDXN7', '00330-53687-56708-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1867077683', '1', '1', '2', 'EEgmC23$', 73),
(74, 'Asignado', '0676', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000822', '00327-31101-22501-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '120GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', 'Cambiarlo', '388176167', '2', '2', '1', 'EEjdC23$', 74),
(75, 'Asignado', '0661', '2', '3', 'IdeaPad 3 14ITL6', 'PF49MKP7', '00342-43328-27796-AAOEM', '11th Gen Intel(R) Core(TM) i5-1155G7 @ 2.50GHz   2.50 GHz', '8GB', '256GB', 'Cambiarlo', 'Windows11', '2', 'Cambiarlo', '1909470595', '1', '1', '2', 'EE aC23$', 75),
(76, 'No aplica', 'A2', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EEemC23$', 76),
(77, 'No aplica', 'A3', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EEemC23$', 77),
(78, 'Asignado', '0768', '2', '2', 'Gaming F15 FX506LHB', 'N6NRCX01345722C', '00342-43279-59102-AAOEM', 'Intel(R) Core(TM) i5-10300H CPU @ 2.50GHz   2.50 GHz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '571807502', '2', '2', '1', 'EFdpC23$', 78),
(79, 'No aplica', 'A10', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EFafC23$', 79),
(80, 'Asignado', 'PDTE59', '2', '1', 'Aspire A315-58', 'NXADDAL02U2360AAC23400', '00331-10000-00001-AA793', '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz   3.00 GHz', '8GB', '256GB', 'Intel(R) UHD Graphics', 'Windows11', '2', '15,6 LCD', '1 954 728 013', '8', '8', '1', 'EFrcC23$', 80),
(81, 'En Garantia', '0683', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000601', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '256GB', 'Gráficos Intel Iris Xe', 'Windows11', '1', '14\" IPS', 'Cambiarlo', '5', '6', '1', 'Cambiarlo', 81),
(82, 'Asignado', '0673', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000702', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '120GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '595743737', '2', '2', '1', 'EGe C23$', 82),
(83, 'No aplica', 'E4', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EGesC23$', 83),
(84, 'No aplica', 'A9', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EGd C23$', 84),
(85, 'No aplica', 'A15', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'EGj C23$', 85),
(86, 'Asignado', '0179', '2', '2', 'VivoBook_ASUSLaptop X412DA_X412DA', 'K6N0CV01P29323C', '00327-30720-52692-AAOEM', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10 GHz', '8GB', '512GB', 'AMD Radeon(TM) Vega 8 Graphics', 'Windows11', '3', '14\"FHD', '1193934209', '3', '3', '3', 'EGavC23$', 86),
(87, 'Pendiente', 'P15', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EHrcC23$', 87),
(88, 'Asignado', '0839', '2', '2', 'VivoBook X505ZA ', 'K1N0CX154247047', '00330-80000-00000-AA003', 'AMD Ryzen 5 2600U with Radeon Vega Mobile Gfx 2.10GHz', '8GB', '256GB+1TB', 'AMD Radeon(TM) Vega 8 Graphics', 'Windows10', '2', '15.6 Display', '1568222108', '1', '4', '2', 'EHdcC23$', 88),
(89, 'Asignado', 'PDTE65', '2', '3', 'V14 ADA', 'PF2YARCJ', '00330-80000-00000-AA394', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1 189 345 979', '9', '6', '2', 'EHcaC23$', 89),
(90, 'Asignado', '0883', '2', '3', '80KY', 'PF0BXGE7', '00327-30000-00000-AAOEM', 'Intel(R) Core(TM) i3-4005U CPU @ 1.70GHz  1.70 GHz', '8GB', '512GB', 'Intel(R) HD Graphics Family', 'Windows10', '3', '14\" LED', '1444479491', '1', '4', '2', 'EIbvC23$', 90),
(91, 'No aplica', 'A13', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EJarC23$', 91),
(92, 'Asignado', '0688', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000758', '00327-31101-22437-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Gráficos Intel Iris Xe', 'Windows11', '3', '14\" IPS', '1225403270', '2', '2', '1', 'EJhgC23$', 92),
(93, 'Pendiente', 'P16', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EJccC23$', 93),
(94, 'Asignado', '0559', '2', '2', 'M409DA-BV387', 'L7N0CV15D02630C', 'Cambiarlo', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '12GB', '1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1158508146', '1', '1', '2', 'EJfcC23$', 94),
(95, 'Pendiente', 'P17', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EJadC23$', 95),
(96, 'Asignado', 'PDTE70', '2', '4', 'NBL-WAQ9R', 'M6TPM20807000651', '00342-41420-58323-AAOEM', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1287606224', '1', '1', '2', 'EJppC23$', 96),
(97, 'Asignado', '0568', '2', '3', 'IDEAPAD 5 81 YH', 'MP1VD9KS', '00325-81908-55666-AAOEM', 'Intel(R) Core ™ I5-1035G1 CPU @ 1.00 GHz 1.19GHz', '8GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1497626450', '1', '4', '2', 'EJptC23$', 97),
(98, 'No aplica', 'A14', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EJovC23$', 98),
(99, 'Asignado', '0534', '2', '2', 'FX506LH', 'N3NRCX02407509C', 'Cambiarlo', 'Intel(R) Core ™ I5-10300H CPU @ 2.50GHz 2.50GHz', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1812397660', '1', '1', '2', 'EJmoC23$', 99),
(100, 'Pendiente', 'P34', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EJdrC23$', 100),
(101, 'No aplica', 'A20', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EJjmC23$', 101),
(102, 'Asignado', '0841', '2', '3', '82C6', 'PF2YAREL', '00330-53687-77255-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', '14\" FHD', '649316217', '1', '1', '2', 'EJvvC23$', 102),
(103, 'Asignado', '0601', '2', '3', 'V14 ADA', 'PF2YB1R3', '00330-53687-56729-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1352841156', '1', '1', '2', 'EJacC23$', 103),
(104, 'Asignado', '0560', '2', '2', 'X505ZA_X505ZA', 'K4N0CX03858015D    ', '00326-10000-00000-AA632', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx 2.00GHz', '8GB', '128GB+512GB', 'AMD Radeon(TM) Vega 8 Mobile Graphics', 'Windows10', '1', '15\" Full HD', '1679264089', '1', '6', '2', 'EJerC23$', 104),
(105, 'Asignado', 'PDTE75', '2', '3', '82C6', 'PF2YRWCW', '00330-53689-63096-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1342435225', '10', '6', '2', 'EJecC23$', 105),
(106, 'Asignado', '0679', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000571', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '388176167', '2', '2', '1', 'EJctC23$', 106),
(107, 'Asignado', '0790', '2', '2', 'X415', 'N4N0CV02B65214C', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', 'Cambiarlo', '1291600291', '2', '2', '1', 'EJdjC23$', 107),
(108, 'Asignado', '0013', '2', '3', '81WA', 'PF3FLMLA    ', '00342-43223-44925-AAOEM', 'CORE I5', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '639773329', '3', '3', '3', 'EJfpC23$', 108),
(109, 'Asignado', 'PDTE80', '2', '3', 'V14 ADA', 'PF2YAYV4', '00330-53687-75012-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1949522601', '11', '6', '2', 'EJczC23$', 109),
(110, 'Pendiente', 'P36', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EJmcC23$', 110),
(111, 'No aplica', 'A18', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EJcfC23$', 111),
(112, 'Asignado', '0670', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000951', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '120GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '388176167', '2', '2', '1', 'EJcgC23$', 112),
(113, 'Pendiente', 'P18', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '2', '1', 'EKagC23$', 113),
(114, 'Asignado', '0607', '2', '3', 'IDEA PAD 3 14ITL6', 'PF40C4E8', '00342-43306-67892-AAOEM', 'Intel(R) Core ™ I5-10300H CPU @ 2.50GHz 2.50GHz', '8GB', '256GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1575291090 - 1750268845', '1', '1', '2', 'EKggC23$', 114),
(115, 'Asignado', '0095', '2', '2', 'M413DA-EB466T', 'M2N0CX05196206D', '00342-41437-14350-AAOEM', 'RYZEN 7', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '561461375', '3', '3', '3', 'EKlmC23$', 115),
(116, 'Asignado', '0880', '2', '2', 'Vivobook Go E1504FA_E1504FA', 'RBN0CV13E246489', '00342-43422-43486-AAOEM', 'AMD Ryzen 5 7520U with Radeon Graphics 2.80 GHz', '8GB', '512GB', 'AMD Radeon(TM) Graphics', 'Windows11', '3', '15,6\" FHD', '1331594693', '1', '1', '2', 'EKgaC23$', 116),
(117, 'Asignado', '0610', '1', '5', 'HP Pro 3130 Microtower PC', 'MXL12606P2', '00331-10000-00001-AA161', 'Intel(R) Core(TM) i5 CPU  650  @ 3.20GHz   3.20 GHz', '8GB', '1TB+1TB', 'Intel(R) HD Graphics', 'Windows10', '2', 'Samsung 19\"', '1587966555', '1', '1', '2', 'EKxgC23$', 117),
(118, 'Pendiente', 'P41', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'ELcrC23$', 118),
(119, 'Pendiente', 'P20', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'ELccC23$', 119),
(120, 'Asignado', '0838', '2', '3', 'IDEA PAD 3 14ITL6', 'PF3D5R8W', '00327-31099-61543-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Cambiarlo', 'Windows10', '3', '15,6\", HD ', '731343465', '1', '1', '2', 'ELdgC23$', 120),
(121, 'Asignado', '0561', '2', '2', 'VivoBook X505ZA ', 'K4N0CX038541153', '00330-80000-00000-AA793', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx 2.00GHz', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1884946768', '1', '1', '2', 'ELmdC23$', 121),
(122, 'Asignado', '0807', '2', '2', 'VivoBook X415JAB', 'R1N0CX00Z71402G', 'Cambiarlo', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz, 1190 Mhz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1708670874', '1', '1', '2', 'ELcaC23$', 122),
(123, 'Pendiente', 'P21', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'ELdvC23$', 123),
(124, 'Pendiente', 'P31', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'ELssC23$', 124),
(125, 'En Garantia', '0683', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000787', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '256GB', 'Gráficos Intel Iris Xe', 'Windows11', '1', '14\" IPS', '1 109 584 685', '5', '6', '1', 'ELjfC23$', 125),
(126, 'Asignado', '0846', '2', '3', 'IDEAPAD 320', 'PF11G4PD', '00327-30019-50063-AAOEM', 'AMD A12-9720P RADEON R7, 12 COMPUTE CORES 4C+8G   2.70 GHz', '16GB', '610GB+283GB', 'AMD Radeon R7 Graphics', 'Windows10', '3', 'Cambiarlo', '1 287 325 351', '1', '1', '2', 'ELqpC23$', 126),
(127, 'Asignado', '0557', '2', '3', 'PF9XBO806001', 'PF2EB6XJ', 'Cambiarlo', 'Intel® Core ™ I7-1165G7 @ 2.80GHz', '16GB', '1TB', 'NVIDIA GeForce GTX 1660 Ti', 'Windows10', '1', '17.3” FHD', '1 657 156 901', '1', '1', '2', 'ELdvC23$', 127),
(128, 'Pendiente', 'P22', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '1', 'ELerC23$', 128),
(129, 'Asignado', '0684', '2', '4', 'KLVD-WDH9', 'BJHPM21C17000469', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '256GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '388176167', '2', '2', '1', 'ELepC23$', 129),
(130, 'Asignado', '0658', '2', '7', 'VOSTRO 14 3000', 'C05R5W3', '00327-30816-52900-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '128GB+1TB', 'Intel(R) Iris(R) Xe Graphics Family', 'Windows11', '3', '14\" HD Display', '1813709794', '6', '6', '3', 'ELfnC23$', 130),
(131, 'Asignado', '0685', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000712', '00327-31101-21399-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Intel Iris Xe Graphics', 'Windows10', '3', '14\" IPS', '1863931333', '2', '2', '1', 'ELmbC23$', 131),
(132, 'Asignado', '0539', '2', '3', 'V14', 'PF2YARE1', '00330-53468-87038-AAOEM', 'AMD RYZEN 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'Intel Iris Xe Graphics', 'Windows10', '1', 'Cambiarlo', '1 531 105 289', '1', '1', '2', 'ELagC23$', 132),
(133, 'Asignado', '0558', '2', '2', 'VivoBook_X509DJ_M509DJ', 'L7N0CV11935229B', '00326-10000-00000-AA705', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx     2.10 GHz', '8GB', '1TB', 'NVIDIA GeForce MX230', 'Windows11', '1', '15,6\" HD ', '1366680008', '1', '1', '2', 'ELfrC23$', 133),
(134, 'En Garantia', '0821', '2', '5', 'Victus by HP Gaming Laptop 15-fa0xxx', '5CD327185M', '00342-42334-41711-AAOEM', '12th Gen Intel(R) Core(TM) i5-12500H   2.50 GHz', '16GB', '512GB', 'NVIDIA GeForce RTX 3050 Laptop GPU', 'Windows11', '3', '15,6\" FHD', '1566635817', '1', '1', '2', 'ELfrC23$', 134),
(135, 'Asignado', '0600', '2', '2', 'VivoBook_ASUSLaptop X415JAB_X415JA', 'NCNOCX03912250B', '00342-43331-11648-AAOEM', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz   1.19 GHz', '8GB', '512GB', 'Intel(R) UHD Graphics', 'Windows11', '3', 'Cambiarlo', '102606038', '2', '2', '1', 'ELcrC23$', 135),
(136, 'Asignado', 'PDTE99', '2', '3', 'V 14', 'PF2XDPTK', '00330-53689-87046-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1248607885', '1', '1', '2', 'ELapC23$', 136),
(137, 'Asignado', '0805', '2', '2', 'VivoBook X415JAB', 'R1N0CX00Z77002F', 'Cambiarlo', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz, 1190 Mhz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '144367145', '1', '1', '2', 'ELaqC23$', 137),
(138, 'Asignado', '0175', '2', '2', 'TUF Dash F15 FX516PM_FX516PM', 'M9NRKD040026365', '00330-80000-00000-AA046', '11th Gen Intel(R) Core(TM) i7-11370H @ 3.30GHz   3.30 GHz', '16GB', '512GB+1TB', 'NVIDIA GeForce RTX 3060 ', 'Windows11', '2', '15,6 FHD', '1724884113', '3', '3', '3', 'ELeaC23$', 138),
(139, 'No aplica', 'A4', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EMohC23$', 139),
(140, 'Asignado', '0675', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000735', '00327-31101-22414-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1747539840', '2', '2', '1', 'EMmbC23$', 140),
(141, 'Asignado', 'PDTE103', '2', '2', 'VivoBook X530FA_S530FA', 'K3N0CX01K571109', '00327-30694-99674-AAOEM', 'Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz   1.80 GHz', '4GB', '256GB', 'Intel(R) UHD Graphics 620', 'Windows11', '3', '15,6\" FHD', '910794522', '3', '3', '3', 'EMahC23$', 141),
(142, 'No aplica', 'A11', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '3', 'EMamC23$', 142),
(143, 'Asignado', '0531', '2', '2', 'FX506LH', 'N3NRCX023651098', '00342-43242-07386-AAOEM', 'Intel(R) core ™ I5-10300H CPU @ 2,50GHz 2.50 GHz', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '920100809', '1', '1', '2', 'EMamC23$', 143),
(144, 'Asignado', 'PDTE106', '2', '3', 'V 14', 'PF2XDPRN', '00330-53689-87029-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics            2.60 GHz', '12GB', '128GB+1TB', 'Cambiarlo', 'Windows10', '2', 'Cambiarlo', '1048142092', '1', '1', '2', 'EMcgC23$', 144),
(145, 'Pendiente', 'P23', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EMcpC23$', 145),
(146, 'Asignado', 'PDTE107', '2', '2', 'VivoBook X415EA', 'N4N0CV02B529149', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '128GB+1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '534201771', '2', '2', '1', 'EMdlC23$', 146),
(147, 'Asignado', '0672', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000836', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '388176167 (Cambiarlo)', '2', '2', '1', 'EMfbC23$', 147),
(148, 'Asignado', '0172', '2', '2', 'VIVOBOOK S15', 'K3N0CX01K58110C', '00327-60000-00000-AA963', 'Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz  1.80 GHz', '12GB', '256GB ', 'Cambiarlo', 'Windows10', '3', 'Cambiarlo', '342384765', '3', '3', '3', 'EMj C23$', 148),
(149, 'Asignado', '0174', '2', '2', 'VivoBook_ASUSLaptop X421DA_M413DA', 'M2N0CX051991064', '00342-41437-14379-AAOEM', 'AMD Ryzen 7 3700U with Radeon Vega Mobile Gfx     2.30 GHz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '908508349', '3', '3', '3', 'EMjgC23$', 149),
(150, 'Asignado', 'PDTE111', '2', '3', 'V14 ADA', 'PF2YRYK2', '00330-53687-77256-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1595491963', '1', '1', '2', 'EMlcC23$', 150),
(151, 'Asignado', '0553', '2', '2', 'Gaming F15 FX506LHB', 'N6NRCX07L39724B', '00342-43284-65041-AAOEM', 'Intel® Core™ i5-10300H CPU @ 2,50GHz 2,50GHz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1588984901', '1', '1', '2', 'EMxmC23$', 151),
(152, 'Asignado', '0624', '2', '3', '82H7', 'PF40C4F5', '00342-43306-67886-AAOEM', '11th Gen Intel(R) Core™ i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1554185210', '1', '4', '2', 'EMarC23$', 152),
(153, 'Asignado', '0789', '2', '2', 'VivoBook_ASUSLaptop X415EA_X415EA', 'N4N0CV02B56414A', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', 'Cambiarlo', '79824410', '1', '1', '2', 'EMajC23$', 153),
(154, 'Pendiente', 'P24', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '4', '2', 'EMelC23$', 154),
(155, 'Asignado', '0669', '2', '4', 'KLVD-WDH9', 'BJHPM21C26000859', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '128GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '2', '2', '1', 'EMtiC23$', 155),
(156, 'Pendiente', 'P25', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '4', '2', 'EMalC23$', 156),
(157, 'No aplica', 'A17', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EMevC23$', 157),
(158, 'Asignado', '0808', '2', '2', 'VivoBook X415JAB', 'R1N0CX00Z69302D', '00342-43334-89145-AAOEM', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz, 1190 Mhz', '8GB', '512GB', 'Intel(R) UHD Graphics', 'Windows11', '3', 'Cambiarlo', '1625955618', '2', '2', '1', 'EMe C23$', 158),
(159, 'Asignado', '0576', '2', '3', 'V14 ADA', 'PF2XBNE3', '00330-53687-86909-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1135744792', '1', '1', '2', 'EMshC23$', 159),
(160, 'Asignado', '0463', '2', '2', 'X413EA-EB377T', 'M3N0CX14D031133', 'Cambiarlo', 'Intel(R) Core ™ I5-10300H CPU @ 2.50GHz 2.50GHz', '8GB', '512GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '203857864', '1', '1', '2', 'EMvgC23$', 160),
(161, 'Asignado', '0656', '2', '2', 'ASUSLaptop X1605EA_X1605EA', 'R4N0CV108239165', '00342-43359-04298-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz  2.42 GHz', '8GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', '16” FHD', '1552930479', '1', '4', '2', 'ENmnC23$', 161),
(162, 'Pendiente', 'P43', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'ENaeC23$', 162),
(163, 'Asignado', 'PDTE120', '2', '3', 'V 14', 'PF2YRNH6', '00330-53689-58328-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'AMD Radeon(TM)  Graphics', 'Windows11', '2', 'Cambiarlo', '172342843', '1', '1', '2', 'ENomC23$', 163),
(164, 'Asignado', '0533', '2', '1', 'A 515-54-55JD', 'NXHMDAL0121211F4AD7600', '00327-31009-60547-AAOEM', 'ntel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '4GB', '256GB', 'Cambiarlo', 'Windows11', '3', 'Cambiarlo', '1000466068', '1', '6', '2', 'ENgrC23$', 164),
(165, 'Asignado', '0662', '2', '3', 'IdeaPad 3 14ITL6', 'PF49K8YT', '00342-43328-24971-AAOEM', '11th Gen Intel(R) Core(TM) i5-1155G7 @ 2.50GHz   2.50 GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1428518434', '1', '1', '2', 'ENysC23$', 165),
(166, 'Asignado', '0806', '2', '2', 'VivoBook X415JAB', 'R1N0CX00Z667028', 'Cambiarlo', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz, 1190 Mhz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1093652355', '2', '2', '1', 'ENmrC23$', 166),
(167, 'Asignado', '0686', '2', '4', 'KLVD-WXX9', '85DPM23307990028', '00327-30000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '3', 'Cambiarlo', '1173153334', '7', '6', '1', 'ENocC23$', 167),
(168, 'Asignado', '0795', '2', '3', 'IdeaPad 3 82 KT', 'PF4BTPF3', 'Cambiarlo', 'AMD Ryzen 5 5500U with Radeon Graphics, 2100 Mhz, 6', '12GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1177379627', '7', '6', '1', 'ENocC23$', 168),
(169, 'Asignado', '0840', '2', '1', 'Nitro AN515-52', 'NHQ4AAL0169070C5B83400', '00327-30688-87547-AAOEM', 'Intel(R) Core(TM) i5-8300H CPU @ 2.30GHz   2.30 GHz', '16GB', '256GB+2TB', 'NVIDIA GeForce GTX 1050', 'Windows10', '3', 'Cambiarlo', '1892240411', '1', '1', '2', 'ENboC23$', 169),
(170, 'Asignado', '0103', '3', '8', 'TOSHIBA DX735', '3C020821Y', '00326-10000-00000-AA875', 'Intel(R) Core(TM) i5-2450M CPU @ 2.50GHz   2.50 GHz', '8GB', '256GB', 'Intel(R) HD Graphics 3000', 'Windows10', '1', 'Cambiarlo', '428927743', '2', '2', '1', 'Cambiarlo', 170),
(171, 'Asignado', 'PDTE128', '2', '2', 'ASUS TUF Gaming F15 FX506LHB_FX506LHB', 'LANRCV00M76542A', 'Cambiarlo', ' Intel Core i7-11800H CPU @ 2.30GHz , 4.6 GHz', '16GB', '512GB', 'Cambiarlo', 'Windows10', '2', 'Cambiarlo', '1737327459', '1', '1', '2', 'EOdpC23$', 171),
(172, 'Asignado', '0537', '2', '2', 'ASUS TUF Gaming F15 FX506LH_FX506LH', 'N3NRCX023797097', '00342-43242-07532-AAOEM', 'Intel(R) Core(TM) i5-10300H CPU @ 2.50GHz   2.50 GHz', '8GB', '1TB', 'NVIDIA GeForce GTX 1650', 'Windows11', '3', '15,6\" FHD', '1188477791', '1', '1', '2', 'EOqbC23$', 172),
(173, 'Asignado', '0834', '2', '3', 'V14', 'PF2XDM5G', '00330-53689-63097-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '512GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows10', '2', 'Cambiarlo', '1596901754', '1', '4', '2', 'EOigC23$', 173),
(174, 'Asignado', '0551', '2', '2', 'M409DA-BV387', 'L7N0CV15D091305', '00330-80000-00000-AA344', 'AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx 2.10GHz', '12GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '785205638', '1', '4', '2', 'EPaoC23$', 174),
(175, 'Asignado', '0837', '2', '2', 'Q4071', '12MLAN0CV19W901447', '00330-81492-03147-AA641', 'AMD Ryzen 5 4500U with radeon graphics 2.38GHz', '8GB', '512GB', 'NVIDIA GeForce MX350', 'Windows11', '2', '14\"Display in 13\" Chassis', '184091679', '1', '1', '2', 'EPanC23$', 175),
(176, 'Pendiente', 'P42', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EPasC23$', 176),
(177, 'Pendiente', 'P39', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EPmvC23$', 177),
(178, 'No aplica', 'E5', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'EPdgC23$', 178),
(179, 'No aplica', 'E6', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'Cambiarlo', 179),
(180, 'Asignado', '0792', '2', '2', 'VivoBook X415EA_X415EA', 'N4N0CV02B492149', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', '14\" FHD', '1019384684', '5', '6', '1', 'ERjaC23$', 180),
(181, 'No aplica', 'A7', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'ERjgC23$', 181),
(182, 'No aplica', 'A19', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'ERbpC23$', 182),
(183, 'Asignado', '0851', '2', '2', 'ASUS TUF Gaming F15 FX506HF_FX506HF', 'R8NRCX01Z318328', '00342-43393-71188-AAOEM', '11th Gen Intel(R) Core(TM) i5-11400H @ 2.70GHz   2.69 GHz', '8GB', '512GB', 'NVIDIA GeForce RTX 2050', 'Windows11', '3', '15.6 FHD', '1991511357', '1', '1', '2', 'ERcgC23$', 183),
(184, 'No aplica', 'A8', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'ERcmC23$', 184),
(185, 'Asignado', '0599', '2', '2', 'VivoBook X415JAB_X415JA', 'NCN0CX03931550B', '00342-43331-14569-AAOEM', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz   1.19 GHz', '8GB', '512GB', 'Intel(R) UHD Graphics', 'Windows11', '3', '14\" FHD ', '533056148', '2', '2', '1', 'ERjgC23$', 185),
(186, 'Asignado', '0603', '2', '3', '82JK', 'PF3RDSAK', '00342-43263-09991-AAOEM', '11th Gen Intel(R) Core™ i7-11600H @ 2.90GHz   2.92 GHz', '16GB', '512GB', 'NVIDIA GeForce RTX 3050 Laptop ', 'Windows11', '3', '15,6\" FHD', '1867550472', '1', '4', '2', 'ERdrC23$', 186),
(187, 'Asignado', '0603', '2', '3', '82JK', 'PF3RDSAK', '00342-43263-09991-AAOEM', '11th Gen Intel(R) Core™ i7-11600H @ 2.90GHz   2.92 GHz', '16GB', '512GB', 'NVIDIA GeForce RTX 3050 Laptop ', 'Windows11', '3', '15,6\" FHD', '1867550472', '1', '4', '2', 'ERdrC23$', 187),
(188, 'Asignado', '0796', '2', '7', 'Vostro 3400', 'DT256W3', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB+1TB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', '14\" HD ', '1971076284', '1', '1', '2', 'ERapC23$', 188),
(189, 'Asignado', '0853', '2', '3', '81FB', 'PF1HQRDY', '00330-80000-00000-AA700', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx     2.00 GHz', '12GB', '256GB+500GB', 'AMD Radeon (TM) Vega 8 Graphics', 'Windows10', '2', '15.6\"', '1248283622', '1', '4', '2', 'ERetC23$', 189),
(190, 'Asignado', '0882', '2', '3', 'V14 ADA', 'PF2XDPS7', '00330-53687-56714-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1382072662', '1', '4', '2', 'ERmmC23$', 190),
(191, 'Asignado', '0562', '2', '2', 'K3400PA', 'MCN0CX30P300517', '00342-42309-80996-AAOEM', '11th Gen Intel(R) Core™ i5-11300H @ 3.10GHz   3.11-GHZ ', '16GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '809165649', '1', '1', '2', 'ESmpC23$', 191),
(192, 'Asignado', '0554', '2', '3', 'V14 ADA', 'PF2YRFV5', 'Cambiarlo', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'Cambiarlo', 'Windows10', '2', 'Cambiarlo', '1392497539', '1', '1', '2', 'ESchC23$', 192),
(193, 'Asignado', '0825', '2', '3', '82C6', 'PF2YRLCP', '00330-53689-53594-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '8GB', '128GB+1TB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', '14\" LED', '1449400073', '1', '1', '2', 'ESgbC23$', 193),
(194, 'Asignado', '0881', '2', '3', 'PF2DKP6Z', 'PF9XB0721141', 'Cambiarlo', 'Intel® Core™ i7-7500U CPU @ 2,70GHz 2.90GHz', '16GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '1405481730', '1', '4', '2', 'ESvcC23$', 194),
(195, 'Asignado', 'PDTE144', '2', '2', '3DE68H67-ZENBOOK', '12MM4N0LP01B924154', '00325-82103-46023-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics 2.10GHz', '8GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '640095857', '1', '1', '2', 'ESmaC23$', 195),
(196, 'Asignado', '0550', '2', '5', 'BCM943142Y', 'CND53794KG', '00327-30000-00000-AAOEM', 'Intel(R) Core ™ I5-5200U CPU @ 2,20GHz 2.20 GHz', '8GB', '512GB', 'Intel(R) HD Graphics 5500', 'Windows10', '3', 'Cambiarlo', '883429160', '1', '1', '2', 'ESfhC23$', 196),
(197, 'Asignado', '0680', '2', '4', 'KLVD-WXX9', 'BJHPM21C26000717', '00327-31101-22396-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '2', '2', '1', 'ESatC23$', 197),
(198, 'No aplica', 'E7', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'ESesC23$', 198),
(199, 'Pendiente', 'P44', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '1', '2', 'EStpC23$', 199),
(200, 'Asignado', '0794', '2', '3', 'IdeaPad 3 82 KT', 'PF4BZE8E', 'Cambiarlo', 'AMD Ryzen 5 5500U with Radeon Graphics,  2100 Mhz', '12GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1324038553', '2', '2', '1', 'ESmpC23$', 200),
(201, 'Asignado', '0609', '2', '2', 'X513A-BQ638T', 'M5N0CV07W907199', 'Cambiarlo', 'Intel(R) Core ™ I5-10300H CPU @ 2.50GHz 2.50GHz', '12GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '1', '4', '2', 'ESrgC23$', 201),
(202, 'Asignado', '0555', '2', '3', 'V14 ADA', 'PF2Z6QKH', 'Cambiarlo', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB +1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '458262924', '1', '1', '2', 'ESmbC23$', 202),
(203, 'No aplica', 'E8', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '4', 'Cambiarlo', 203);
INSERT INTO `equipos` (`ID_equipo`, `Estado`, `Codigo`, `ID_tipo`, `ID_marca`, `Modelo`, `Num_serie`, `Id_producto`, `Procesador`, `Ram`, `Disco`, `GPU_APU`, `Sistema_operativo`, `ID_licencia`, `Display`, `Anydesk`, `ID_ubicacion`, `ID_oficina`, `ID_direccion`, `Clave_equipo`, `ID_trabajador`) VALUES
(204, 'Asignado', 'PDTE151', '2', '3', 'V14 ADA', 'PF2XDPQT', '00330-53689-68844-AAOEM', 'AMD Ryzen 3 3250U with Radeon Graphics 2.60 GHz', '12GB', '1TB+128GB', 'AMD Radeon(TM) Graphics', 'Windows11', '2', 'Cambiarlo', '1534531 090', '1', '1', '2', 'EVmbC23$', 204),
(205, 'Asignado', '0788', '2', '2', 'VivoBook X415EA', 'N4N0CV02B501148', '00330-50000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '2', 'Cambiarlo', '343915602', '2', '2', '1', 'EVrrC23$', 205),
(206, 'Asignado', '0787', '2', '2', 'VivoBook_ASUSLaptop X415EA_X415EA', 'N4N0CV02B504149', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419 Mhz', '8GB', '500GB', 'Intel(R) Iris(R) Xe Graphics', 'Windows11', '1', '14 \" hd', '597511739', '2', '2', '1', 'EWfaC23$', 206),
(207, 'Pendiente', 'P32', '4', '10', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '3', 'EWfrC23$', 207),
(208, 'Asignado', '0552', '2', '2', 'VivoBook X513EA', 'M5N0CV11T41220B', '00342-41442-54354-AAOEM', '11th Gen Intel(R) Core™ i5-1135G7 @ 2.40GHz   2.42 GHz', '12GB', '1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1417075365', '1', '4', '2', 'EWrpC23$', 208),
(209, 'No aplica', 'A6', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '7', '2', 'EWrpC23$', 209),
(210, 'Asignado', 'PDTE155', '2', '2', 'X505Z', 'KANOCX038573150', 'Cambiarlo', 'AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx 2.10GHz', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '227198751', '1', '1', '2', 'EWwaC23$', 210),
(211, 'Asignado', '0798', '2', '7', 'VOSTRO 3400', '7VY46W3', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1997885207', '2', '2', '1', 'EYvtC23$', 211),
(212, 'Asignado', 'PDTE157', '2', '3', 'V14', 'PF2YB1SD', '00330-53687-75006-AAOEM', 'RYZEN 3', '12GB', '128GB+1TB ', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '412703962', '3', '3', '3', 'EYlbC23$', 212),
(213, 'Asignado', 'PDTE158', '2', '5', 'RTL8821CE', 'CND0261HX6', '00327-30862-97714-AAOEM', 'Intel(R) Core ™ I5-1035G1 CPU @ 1,00GHz 1,19GHz', '8GB', '1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1024573170', '1', '1', '2', 'EYpuC23$', 213),
(214, 'Asignado', '7026', '2', '3', 'IdeaPad 3 82 KT', 'PF4BZ0XQ', '00325-80000-00000-AAOEM', 'AMD Ryzen 5 5500U with Radeon Graphics @ 2.10 GHz', '12GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1450571171', '2', '2', '1', 'EYm C23$', 214),
(215, 'Asignado', '0472', '2', '5', '15 EF1031LA', '5CD201GP8C', '00342-43233-11480-AAOEM', 'AMD Ryzen 3 4300U with Radeon Graphics            2.70 GHz', '8GB', '512GB ', 'AMD Radeon(TM) Graphics', 'Windows11', '3', '15.6\" ', '1658264720', '4', '6', '2', 'EYerC23$', 215),
(216, 'Asignado', '7188', '2', '7', 'Vostro 3400', 'CS256W3', '00325-80000-00000-AAOEM', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419 Mhzs', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1393774581', '2', '2', '1', 'EYccC23$', 216),
(217, 'Asignado', '0563', '2', '3', 'V14 ADA', 'PF2YRFQ5', '00330-53689-53602-AAOEM', 'AMD RYZEN 3 3250U with Radeon Graphics 2.60GHz', '12GB', '128GB+1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', '950098300', '1', '1', '2', 'EYmgC23$', 217),
(218, 'No aplica', 'A5', '5', '6', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', 'Cambiarlo', '13', '3', '1', 'EYalC23$', 218),
(219, 'Asignado', '0596', '2', '2', 'VivoBook_ASUSLaptop X415JAB_X415JA', 'NCN0CX03905250C', '00342-43331-11578-AAOEM', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz   1.19 GHz', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1277311812', '5', '6', '1', 'EYmmC23$', 219),
(220, 'Disponible', '0565', '2', '3', '80XL', 'PF0XHAME', '00327-30555-18592-AAOEM', 'Intel(R) core ™ I5-7200 cpu @ 2.50MGz 2.71 HZ', '8GB  ', '1TB', 'Intel(R) HD Graphics 620', 'Windows10', '3', '14\" HD', '1697230001', '1', '1', '2', 'Cambiarlo', 220),
(221, 'De Baja', '0206', '2', '2', 'Q407I', '12MLBN0CV009220457', '00330-81492-14790-AA374', 'AMD Ryzen 5 2500U', '8GB', '500GB ', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', '1806730784', '3', '3', '3', 'Cambiarlo', 221),
(222, 'De Baja', 'PDTE20', '2', '2', 'FX506LH', 'N3NRCX02400809A', 'Cambiarlo', 'Intel(R) Core ™ I5-1035G1 CPU @ 1.00 GHz 1.19GHz', '8GB', '1TB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '2', '2', '1', 'Cambiarlo', 222),
(223, 'Disponible', '0833', '2', '3', '81Y6', 'PF2ALKTB', '00325-81797-69266-AAOEM', 'Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz   2.59 GHz', '16GB', '512GB+1TB', 'NVIDIA GeForce GTX 1660 Ti', 'Windows10', '1', '15.6\" FHD', '640910619', '1', '4', '2', 'Cambiarlo', 223),
(224, 'Ilocalizado', 'PDTE130', '2', '3', 'PF9XB0606016', 'PF2BRS5E', 'Cambiarlo', 'Intel® Core™ i7-7500U CPU @ 2,70GHz 2.90GHz', '16GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', 'Cambiarlo', '1', '1', '2', 'Cambiarlo', 224),
(225, 'Ilocalizado', 'PDTE5', '2', '7', 'ALIENWARE', 'JHN5WF2', 'Cambiarlo', 'INTEL CORE i7 7820HK', '12GB', '512GB+1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', 'Cambiarlo', '3', '3', '3', 'Cambiarlo', 225),
(226, 'Ilocalizado', 'PDTE79', '2', '4', 'Boh-WAQ9R', 'XVSPM20911001046', 'Cambiarlo', 'AMD Ryzen 5', '8GB', '500GB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', 'Cambiarlo', '2', '2', '1', 'Cambiarlo', 226),
(227, 'Ilocalizado', 'PDTE81', '2', '8', 'DX735-D3330', '3CO20821Y', 'Cambiarlo', 'INTEL CORE i5 2450M', '8GB', '1TB', 'Cambiarlo', 'Windows10', '1', 'Cambiarlo', 'Cambiarlo', '3', '3', '3', 'Cambiarlo', 227),
(228, 'Pendiente', 'PDTE150', '2', '4', 'KLVD-WDH9', 'Cambiarlo', 'Cambiarlo', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz, 2419', '8GB', '512GB', 'Cambiarlo', 'Windows11', '1', 'Cambiarlo', 'Cambiarlo', '2', '2', '1', 'Cambiarlo', 228);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedicion`
--

CREATE TABLE `expedicion` (
  `ID_expedicion` varchar(50) NOT NULL,
  `Lugar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `expedicion`
--

INSERT INTO `expedicion` (`ID_expedicion`, `Lugar`) VALUES
('1', 'Apartadó'),
('10', 'Chía'),
('100', 'Astrea'),
('1000', 'Une'),
('1001', 'Unguía'),
('1002', 'Unión Panamericana'),
('1003', 'Uramita'),
('1004', 'Uribe'),
('1005', 'Uribia'),
('1006', 'Urrao'),
('1007', 'Urumita'),
('1008', 'Usiacurí'),
('1009', 'Útica'),
('101', 'Ataco'),
('1010', 'Valdivia'),
('1011', 'Valencia'),
('1012', 'Valle de Guamez'),
('1013', 'Valle de San José'),
('1014', 'Valle de San Juan'),
('1015', 'Valledupar'),
('1016', 'Valparaíso'),
('1017', 'Vegachí'),
('1018', 'Vélez'),
('1019', 'Venadillo'),
('102', 'Atrato'),
('1020', 'Venecia'),
('1021', 'Ventaquemada'),
('1022', 'Vergara'),
('1023', 'Versalles'),
('1024', 'Vetas'),
('1025', 'Vianí'),
('1026', 'Victoria'),
('1027', 'Vigía del Fuerte'),
('1028', 'Vijes'),
('1029', 'Villa Caro'),
('103', 'Ayapel'),
('1030', 'Villa de Leyva'),
('1031', 'Villa de San Diego de Ubate'),
('1032', 'Villa del Rosario'),
('1033', 'Villa Rica'),
('1034', 'Villagarzón'),
('1035', 'Villagómez'),
('1036', 'Villahermosa'),
('1037', 'Villamaría'),
('1038', 'Villanueva'),
('1039', 'Villapinzón'),
('104', 'Bagadó'),
('1040', 'Villarrica'),
('1041', 'Villavicencio'),
('1042', 'Villavieja'),
('1043', 'Villeta'),
('1044', 'Viotá'),
('1045', 'Viracachá'),
('1046', 'Vista Hermosa'),
('1047', 'Viterbo'),
('1048', 'Yacopí'),
('1049', 'Yacuanquer'),
('105', 'Bahía Solano'),
('1050', 'Yaguará'),
('1051', 'Yalí'),
('1052', 'Yarumal'),
('1053', 'Yavaraté'),
('1054', 'Yolombó'),
('1055', 'Yondó'),
('1056', 'Yopal'),
('1057', 'Yotoco'),
('1058', 'Yumbo'),
('1059', 'Zambrano'),
('106', 'Bajo Baudó'),
('1060', 'Zapatoca'),
('1061', 'Zapayán'),
('1062', 'Zaragoza'),
('1063', 'Zarzal'),
('1064', 'Zetaquira'),
('1065', 'Zipacón'),
('1066', 'Zipaquirá'),
('1067', 'Zona Bananera'),
('1068', 'Colombia'),
('1069', 'Cambiarlo'),
('107', 'Balboa'),
('1070', 'Chima'),
('1071', 'Putumayo'),
('108', 'Baranoa'),
('109', 'Baraya'),
('11', 'Cúcuta'),
('110', 'Barbacoas'),
('111', 'Barbosa'),
('112', 'Barichara'),
('113', 'Barranca de Upía'),
('114', 'Barrancabermeja'),
('115', 'Barrancas'),
('116', 'Barranco de Loba'),
('117', 'Barranco Minas'),
('118', 'Barranquilla'),
('119', 'Becerril'),
('12', 'Florencia'),
('120', 'Belalcázar'),
('121', 'Belén'),
('122', 'Belén de Bajira'),
('123', 'Belén de Los Andaquies'),
('124', 'Belén de Umbría'),
('125', 'Bello'),
('126', 'Belmira'),
('127', 'Beltrán'),
('128', 'Berbeo'),
('129', 'Betania'),
('13', 'Girardot'),
('130', 'Betéitiva'),
('131', 'Betulia'),
('132', 'Bituima'),
('133', 'Boavita'),
('134', 'Bochalema'),
('135', 'Bojaca'),
('136', 'Bojaya'),
('137', 'Bolívar'),
('138', 'Bosconia'),
('139', 'Boyacá'),
('14', 'Ibagué'),
('140', 'Briceño'),
('141', 'Bucaramanga'),
('142', 'Bucarasica'),
('143', 'Buena Vista'),
('144', 'Buenaventura'),
('145', 'Buenavista'),
('146', 'Buenos Aires'),
('147', 'Buesaco'),
('148', 'Bugalagrande'),
('149', 'Buriticá'),
('15', 'Inírida'),
('150', 'Busbanzá'),
('151', 'Cabrera'),
('152', 'Cabuyaro'),
('153', 'Cacahual'),
('154', 'Cáceres'),
('155', 'Cachipay'),
('156', 'Cachirá'),
('157', 'Cácota'),
('158', 'Caicedo'),
('159', 'Caicedonia'),
('16', 'Leticia'),
('160', 'Caimito'),
('161', 'Cajamarca'),
('162', 'Cajibío'),
('163', 'Cajicá'),
('164', 'Calamar'),
('165', 'Calarcá'),
('166', 'Caldas'),
('167', 'Caldono'),
('168', 'Cali'),
('169', 'California'),
('17', 'Manizales'),
('170', 'Calima'),
('171', 'Caloto'),
('172', 'Campamento'),
('173', 'Campo de La Cruz'),
('174', 'Campoalegre'),
('175', 'Campohermoso'),
('176', 'Canalete'),
('177', 'Candelaria'),
('178', 'Cantagallo'),
('179', 'Cañasgordas'),
('18', 'Medellín'),
('180', 'Caparrapí'),
('181', 'Capitanejo'),
('182', 'Caqueza'),
('183', 'Caracolí'),
('184', 'Caramanta'),
('185', 'Carcasí'),
('186', 'Carepa'),
('187', 'Carmen de Apicala'),
('188', 'Carmen de Carupa'),
('189', 'Carmen del Darien'),
('19', 'Montería'),
('190', 'Carolina'),
('191', 'Cartagena'),
('192', 'Cartagena del Chairá'),
('193', 'Cartago'),
('194', 'Carurú'),
('195', 'Casabianca'),
('196', 'Castilla la Nueva'),
('197', 'Caucasia'),
('198', 'Cepitá'),
('199', 'Cereté'),
('2', 'Arauca'),
('20', 'Neiva'),
('200', 'Cerinza'),
('201', 'Cerrito'),
('202', 'Cerro San Antonio'),
('203', 'Cértegui'),
('204', 'Chachagüí'),
('205', 'Chaguaní'),
('206', 'Chalán'),
('207', 'Chámeza'),
('208', 'Chaparral'),
('209', 'Charalá'),
('21', 'Pasto'),
('210', 'Charta'),
('211', 'Chía'),
('212', 'Chigorodó'),
('213', 'Chimá'),
('214', 'Chimichagua'),
('215', 'Chinácota'),
('216', 'Chinavita'),
('217', 'Chinchiná'),
('218', 'Chinú'),
('219', 'Chipaque'),
('22', 'Pereira'),
('220', 'Chipatá'),
('221', 'Chiquinquirá'),
('222', 'Chíquiza'),
('223', 'Chiriguaná'),
('224', 'Chiscas'),
('225', 'Chita'),
('226', 'Chitagá'),
('227', 'Chitaraque'),
('228', 'Chivatá'),
('229', 'Chivolo'),
('23', 'Pitalito'),
('230', 'Chivor'),
('231', 'Choachí'),
('232', 'Chocontá'),
('233', 'Cicuco'),
('234', 'Ciénaga'),
('235', 'Ciénaga de Oro'),
('236', 'Ciénega'),
('237', 'Cimitarra'),
('238', 'Circasia'),
('239', 'Cisneros'),
('24', 'Popayán'),
('240', 'Ciudad Bolívar'),
('241', 'Clemencia'),
('242', 'Cocorná'),
('243', 'Coello'),
('244', 'Cogua'),
('245', 'Colón'),
('246', 'Coloso'),
('247', 'Cómbita'),
('248', 'Concepción'),
('249', 'Concordia'),
('25', 'Quibdó'),
('250', 'Condoto'),
('251', 'Confines'),
('252', 'Consaca'),
('253', 'Contadero'),
('254', 'Contratación'),
('255', 'Convención'),
('256', 'Copacabana'),
('257', 'Coper'),
('258', 'Córdoba'),
('259', 'Corinto'),
('26', 'Riohacha'),
('260', 'Coromoro'),
('261', 'Corozal'),
('262', 'Corrales'),
('263', 'Cota'),
('264', 'Cotorra'),
('265', 'Covarachía'),
('266', 'Coveñas'),
('267', 'Coyaima'),
('268', 'Cravo Norte'),
('269', 'Cuaspud'),
('27', 'Santa Marta'),
('270', 'Cubará'),
('271', 'Cubarral'),
('272', 'Cucaita'),
('273', 'Cucunubá'),
('274', 'Cúcuta'),
('275', 'Cucutilla'),
('276', 'Cuítiva'),
('277', 'Cumaral'),
('278', 'Cumaribo'),
('279', 'Cumbal'),
('28', 'Santa Rosa de Cabal'),
('280', 'Cumbitara'),
('281', 'Cunday'),
('282', 'Curillo'),
('283', 'Curití'),
('284', 'Curumaní'),
('285', 'Dabeiba'),
('286', 'Dagua'),
('287', 'Dibula'),
('288', 'Distracción'),
('289', 'Dolores'),
('29', 'Sincelejo'),
('290', 'Don Matías'),
('291', 'Dosquebradas'),
('292', 'Duitama'),
('293', 'Durania'),
('294', 'Ebéjico'),
('295', 'El Águila'),
('296', 'El Bagre'),
('297', 'El Banco'),
('298', 'El Cairo'),
('299', 'El Calvario'),
('3', 'Arauquita'),
('30', 'Soacha'),
('300', 'El Cantón del San Pablo'),
('301', 'El Carmen'),
('302', 'El Carmen de Atrato'),
('303', 'El Carmen de Bolívar'),
('304', 'El Carmen de Chucurí'),
('305', 'El Carmen de Viboral'),
('306', 'El Castillo'),
('307', 'El Cerrito'),
('308', 'El Charco'),
('309', 'El Cocuy'),
('31', 'Tunja'),
('310', 'El Colegio'),
('311', 'El Copey'),
('312', 'El Doncello'),
('313', 'El Dorado'),
('314', 'El Dovio'),
('315', 'El Encanto'),
('316', 'El Espino'),
('317', 'El Guacamayo'),
('318', 'El Guamo'),
('319', 'El Litoral del San Juan'),
('32', 'Valledupar'),
('320', 'El Molino'),
('321', 'El Paso'),
('322', 'El Paujil'),
('323', 'El Peñol'),
('324', 'El Peñón'),
('325', 'El Piñon'),
('326', 'El Playón'),
('327', 'El Retén'),
('328', 'El Retorno'),
('329', 'El Roble'),
('33', 'Villavicencio'),
('330', 'El Rosal'),
('331', 'El Rosario'),
('332', 'El Santuario'),
('333', 'El Tablón de Gómez'),
('334', 'El Tambo'),
('335', 'El Tarra'),
('336', 'El Zulia'),
('337', 'Elías'),
('338', 'Encino'),
('339', 'Enciso'),
('34', 'Yopal'),
('340', 'Entrerrios'),
('341', 'Envigado'),
('342', 'Espinal'),
('343', 'Facatativá'),
('344', 'Falan'),
('345', 'Filadelfia'),
('346', 'Filandia'),
('347', 'Firavitoba'),
('348', 'Flandes'),
('349', 'Florencia'),
('35', 'Abejorral'),
('350', 'Floresta'),
('351', 'Florián'),
('352', 'Florida'),
('353', 'Floridablanca'),
('354', 'Fomeque'),
('355', 'Fonseca'),
('356', 'Fortul'),
('357', 'Fosca'),
('358', 'Francisco Pizarro'),
('359', 'Fredonia'),
('36', 'Abrego'),
('360', 'Fresno'),
('361', 'Frontino'),
('362', 'Fuente de Oro'),
('363', 'Fundación'),
('364', 'Funes'),
('365', 'Funza'),
('366', 'Fúquene'),
('367', 'Fusagasugá'),
('368', 'Gachala'),
('369', 'Gachancipá'),
('37', 'Abriaquí'),
('370', 'Gachantivá'),
('371', 'Gachetá'),
('372', 'Galán'),
('373', 'Galapa'),
('374', 'Galeras'),
('375', 'Gama'),
('376', 'Gamarra'),
('377', 'Gambita'),
('378', 'Gameza'),
('379', 'Garagoa'),
('38', 'Acacias'),
('380', 'Garzón'),
('381', 'Génova'),
('382', 'Gigante'),
('383', 'Ginebra'),
('384', 'Giraldo'),
('385', 'Girardot'),
('386', 'Girardota'),
('387', 'Girón'),
('388', 'Gómez Plata'),
('389', 'González'),
('39', 'Acandí'),
('390', 'Gramalote'),
('391', 'Granada'),
('392', 'Guaca'),
('393', 'Guacamayas'),
('394', 'Guacarí'),
('395', 'Guachené'),
('396', 'Guachetá'),
('397', 'Guachucal'),
('398', 'Guadalajara de Buga'),
('399', 'Guadalupe'),
('4', 'Armenia'),
('40', 'Acevedo'),
('400', 'Guaduas'),
('401', 'Guaitarilla'),
('402', 'Gualmatán'),
('403', 'Guamal'),
('404', 'Guamo'),
('405', 'Guapi'),
('406', 'Guapotá'),
('407', 'Guaranda'),
('408', 'Guarne'),
('409', 'Guasca'),
('41', 'Achí'),
('410', 'Guatapé'),
('411', 'Guataquí'),
('412', 'Guatavita'),
('413', 'Guateque'),
('414', 'Guática'),
('415', 'Guavatá'),
('416', 'Guayabal de Siquima'),
('417', 'Guayabetal'),
('418', 'Guayatá'),
('419', 'Güepsa'),
('42', 'Agrado'),
('420', 'Güicán'),
('421', 'Gutiérrez'),
('422', 'Hacarí'),
('423', 'Hatillo de Loba'),
('424', 'Hato'),
('425', 'Hato Corozal'),
('426', 'Hatonuevo'),
('427', 'Heliconia'),
('428', 'Herrán'),
('429', 'Herveo'),
('43', 'Agua de Dios'),
('430', 'Hispania'),
('431', 'Hobo'),
('432', 'Honda'),
('433', 'Ibagué'),
('434', 'Icononzo'),
('435', 'Iles'),
('436', 'Imués'),
('437', 'Inírida'),
('438', 'Inzá'),
('439', 'Ipiales'),
('44', 'Aguachica'),
('440', 'Iquira'),
('441', 'Isnos'),
('442', 'Istmina'),
('443', 'Itagui'),
('444', 'Ituango'),
('445', 'Iza'),
('446', 'Jambaló'),
('447', 'Jamundí'),
('448', 'Jardín'),
('449', 'Jenesano'),
('45', 'Aguada'),
('450', 'Jericó'),
('451', 'Jerusalén'),
('452', 'Jesús María'),
('453', 'Jordán'),
('454', 'Juan de Acosta'),
('455', 'Junín'),
('456', 'Juradó'),
('457', 'La Apartada'),
('458', 'La Argentina'),
('459', 'La Belleza'),
('46', 'Aguadas'),
('460', 'La Calera'),
('461', 'La Capilla'),
('462', 'La Ceja'),
('463', 'La Celia'),
('464', 'La Chorrera'),
('465', 'La Cruz'),
('466', 'La Cumbre'),
('467', 'La Dorada'),
('468', 'La Esperanza'),
('469', 'La Estrella'),
('47', 'Aguazul'),
('470', 'La Florida'),
('471', 'La Gloria'),
('472', 'La Guadalupe'),
('473', 'La Jagua de Ibirico'),
('474', 'La Jagua del Pilar'),
('475', 'La Llanada'),
('476', 'La Macarena'),
('477', 'La Merced'),
('478', 'La Mesa'),
('479', 'La Montañita'),
('48', 'Agustín Codazzi'),
('480', 'La Palma'),
('481', 'La Paz'),
('482', 'La Pedrera'),
('483', 'La Peña'),
('484', 'La Pintada'),
('485', 'La Plata'),
('486', 'La Playa'),
('487', 'La Primavera'),
('488', 'La Salina'),
('489', 'La Sierra'),
('49', 'Aipe'),
('490', 'La Tebaida'),
('491', 'La Tola'),
('492', 'La Unión'),
('493', 'La Uvita'),
('494', 'La Vega'),
('495', 'La Victoria'),
('496', 'La Virginia'),
('497', 'Labateca'),
('498', 'Labranzagrande'),
('499', 'Landázuri'),
('5', 'Barranquilla'),
('50', 'Albán'),
('500', 'Lebríja'),
('501', 'Leguízamo'),
('502', 'Leiva'),
('503', 'Lejanías'),
('504', 'Lenguazaque'),
('505', 'Lérida'),
('506', 'Leticia'),
('507', 'Líbano'),
('508', 'Liborina'),
('509', 'Linares'),
('51', 'Albania'),
('510', 'Lloró'),
('511', 'López'),
('512', 'Lorica'),
('513', 'Los Andes'),
('514', 'Los Córdobas'),
('515', 'Los Palmitos'),
('516', 'Los Patios'),
('517', 'Los Santos'),
('518', 'Lourdes'),
('519', 'Luruaco'),
('52', 'Alcalá'),
('520', 'Macanal'),
('521', 'Macaravita'),
('522', 'Maceo'),
('523', 'Macheta'),
('524', 'Madrid'),
('525', 'Magangué'),
('526', 'Magüí'),
('527', 'Mahates'),
('528', 'Maicao'),
('529', 'Majagual'),
('53', 'Aldana'),
('530', 'Málaga'),
('531', 'Malambo'),
('532', 'Mallama'),
('533', 'Manatí'),
('534', 'Manaure'),
('535', 'Maní'),
('536', 'Manizales'),
('537', 'Manta'),
('538', 'Manzanares'),
('539', 'Mapiripán'),
('54', 'Alejandría'),
('540', 'Mapiripana'),
('541', 'Margarita'),
('542', 'María la Baja'),
('543', 'Marinilla'),
('544', 'Maripí'),
('545', 'Mariquita'),
('546', 'Marmato'),
('547', 'Marquetalia'),
('548', 'Marsella'),
('549', 'Marulanda'),
('55', 'Algarrobo'),
('550', 'Matanza'),
('551', 'Medellín'),
('552', 'Medina'),
('553', 'Medio Atrato'),
('554', 'Medio Baudó'),
('555', 'Medio San Juan'),
('556', 'Melgar'),
('557', 'Mercaderes'),
('558', 'Mesetas'),
('559', 'Milán'),
('56', 'Algeciras'),
('560', 'Miraflores'),
('561', 'Miranda'),
('562', 'Miriti Paraná'),
('563', 'Mistrató'),
('564', 'Mitú'),
('565', 'Mocoa'),
('566', 'Mogotes'),
('567', 'Molagavita'),
('568', 'Momil'),
('569', 'Mompós'),
('57', 'Almaguer'),
('570', 'Mongua'),
('571', 'Monguí'),
('572', 'Moniquirá'),
('573', 'Montebello'),
('574', 'Montecristo'),
('575', 'Montelíbano'),
('576', 'Montenegro'),
('577', 'Montería'),
('578', 'Monterrey'),
('579', 'Moñitos'),
('58', 'Almeida'),
('580', 'Morales'),
('581', 'Morelia'),
('582', 'Morichal'),
('583', 'Morroa'),
('584', 'Mosquera'),
('585', 'Motavita'),
('586', 'Murillo'),
('587', 'Murindó'),
('588', 'Mutatá'),
('589', 'Mutiscua'),
('59', 'Alpujarra'),
('590', 'Muzo'),
('591', 'Nariño'),
('592', 'Nátaga'),
('593', 'Natagaima'),
('594', 'Nechí'),
('595', 'Necoclí'),
('596', 'Neira'),
('597', 'Neiva'),
('598', 'Nemocón'),
('599', 'Nilo'),
('6', 'Bogotá'),
('60', 'Altamira'),
('600', 'Nimaima'),
('601', 'Nobsa'),
('602', 'Nocaima'),
('603', 'Norcasia'),
('604', 'Norosí'),
('605', 'Nóvita'),
('606', 'Nueva Granada'),
('607', 'Nuevo Colón'),
('608', 'Nunchía'),
('609', 'Nuquí'),
('61', 'Alto Baudo'),
('610', 'Obando'),
('611', 'Ocamonte'),
('612', 'Ocaña'),
('613', 'Oiba'),
('614', 'Oicatá'),
('615', 'Olaya'),
('616', 'Olaya Herrera'),
('617', 'Onzaga'),
('618', 'Oporapa'),
('619', 'Orito'),
('62', 'Altos del Rosario'),
('620', 'Orocué'),
('621', 'Ortega'),
('622', 'Ospina'),
('623', 'Otanche'),
('624', 'Ovejas'),
('625', 'Pachavita'),
('626', 'Pacho'),
('627', 'Pacoa'),
('628', 'Pácora'),
('629', 'Padilla'),
('63', 'Alvarado'),
('630', 'Páez'),
('631', 'Paicol'),
('632', 'Pailitas'),
('633', 'Paime'),
('634', 'Paipa'),
('635', 'Pajarito'),
('636', 'Palermo'),
('637', 'Palestina'),
('638', 'Palmar'),
('639', 'Palmar de Varela'),
('64', 'Amagá'),
('640', 'Palmas del Socorro'),
('641', 'Palmira'),
('642', 'Palmito'),
('643', 'Palocabildo'),
('644', 'Pamplona'),
('645', 'Pamplonita'),
('646', 'Pana Pana'),
('647', 'Pandi'),
('648', 'Panqueba'),
('649', 'Papunahua'),
('65', 'Amalfi'),
('650', 'Páramo'),
('651', 'Paratebueno'),
('652', 'Pasca'),
('653', 'Pasto'),
('654', 'Patía'),
('655', 'Pauna'),
('656', 'Paya'),
('657', 'Paz de Ariporo'),
('658', 'Paz de Río'),
('659', 'Pedraza'),
('66', 'Ambalema'),
('660', 'Pelaya'),
('661', 'Pensilvania'),
('662', 'Peñol'),
('663', 'Peque'),
('664', 'Pereira'),
('665', 'Pesca'),
('666', 'Piamonte'),
('667', 'Piedecuesta'),
('668', 'Piedras'),
('669', 'Piendamó'),
('67', 'Anapoima'),
('670', 'Pijao'),
('671', 'Pijiño del Carmen'),
('672', 'Pinchote'),
('673', 'Pinillos'),
('674', 'Piojó'),
('675', 'Pisba'),
('676', 'Pital'),
('677', 'Pitalito'),
('678', 'Pivijay'),
('679', 'Planadas'),
('68', 'Ancuyá'),
('680', 'Planeta Rica'),
('681', 'Plato'),
('682', 'Policarpa'),
('683', 'Polonuevo'),
('684', 'Ponedera'),
('685', 'Popayán'),
('686', 'Pore'),
('687', 'Potosí'),
('688', 'Pradera'),
('689', 'Prado'),
('69', 'Andalucía'),
('690', 'Providencia'),
('691', 'Pueblo Bello'),
('692', 'Pueblo Nuevo'),
('693', 'Pueblo Rico'),
('694', 'Pueblo Viejo'),
('695', 'Pueblorrico'),
('696', 'Puente Nacional'),
('697', 'Puerres'),
('698', 'Puerto Alegría'),
('699', 'Puerto Arica'),
('7', 'Bucaramanga'),
('70', 'Andes'),
('700', 'Puerto Asís'),
('701', 'Puerto Berrío'),
('702', 'Puerto Boyacá'),
('703', 'Puerto Caicedo'),
('704', 'Puerto Carreño'),
('705', 'Puerto Colombia'),
('706', 'Puerto Concordia'),
('707', 'Puerto Escondido'),
('708', 'Puerto Gaitán'),
('709', 'Puerto Guzmán'),
('71', 'Angelópolis'),
('710', 'Puerto Libertador'),
('711', 'Puerto Lleras'),
('712', 'Puerto López'),
('713', 'Puerto Nare'),
('714', 'Puerto Nariño'),
('715', 'Puerto Parra'),
('716', 'Puerto Rico'),
('717', 'Puerto Rondón'),
('718', 'Puerto Salgar'),
('719', 'Puerto Santander'),
('72', 'Angostura'),
('720', 'Puerto Tejada'),
('721', 'Puerto Triunfo'),
('722', 'Puerto Wilches'),
('723', 'Pulí'),
('724', 'Pupiales'),
('725', 'Puracé'),
('726', 'Purificación'),
('727', 'Purísima'),
('728', 'Quebradanegra'),
('729', 'Quetame'),
('73', 'Anolaima'),
('730', 'Quibdó'),
('731', 'Quimbaya'),
('732', 'Quinchía'),
('733', 'Quípama'),
('734', 'Quipile'),
('735', 'Ragonvalia'),
('736', 'Ramiriquí'),
('737', 'Ráquira'),
('738', 'Recetor'),
('739', 'Regidor'),
('74', 'Anorí'),
('740', 'Remedios'),
('741', 'Remolino'),
('742', 'Repelón'),
('743', 'Restrepo'),
('744', 'Retiro'),
('745', 'Ricaurte'),
('746', 'Rio Blanco'),
('747', 'Río de Oro'),
('748', 'Río Iro'),
('749', 'Río Quito'),
('75', 'Anserma'),
('750', 'Río Viejo'),
('751', 'Riofrío'),
('752', 'Riohacha'),
('753', 'Rionegro'),
('754', 'Riosucio'),
('755', 'Risaralda'),
('756', 'Rivera'),
('757', 'Roberto Payán'),
('758', 'Roldanillo'),
('759', 'Roncesvalles'),
('76', 'Ansermanuevo'),
('760', 'Rondón'),
('761', 'Rosas'),
('762', 'Rovira'),
('763', 'Sabana de Torres'),
('764', 'Sabanagrande'),
('765', 'Sabanalarga'),
('766', 'Sabanas de San Angel'),
('767', 'Sabaneta'),
('768', 'Saboyá'),
('769', 'Sácama'),
('77', 'Anza'),
('770', 'Sáchica'),
('771', 'Sahagún'),
('772', 'Saladoblanco'),
('773', 'Salamina'),
('774', 'Salazar'),
('775', 'Saldaña'),
('776', 'Salento'),
('777', 'Salgar'),
('778', 'Samacá'),
('779', 'Samaná'),
('78', 'Anzoátegui'),
('780', 'Samaniego'),
('781', 'Sampués'),
('782', 'San Agustín'),
('783', 'San Alberto'),
('784', 'San Andrés'),
('785', 'San Andrés de Cuerquía'),
('786', 'San Andrés de Tumaco'),
('787', 'San Andrés Sotavento'),
('788', 'San Antero'),
('789', 'San Antonio'),
('79', 'Apartadó'),
('790', 'San Antonio del Tequendama'),
('791', 'San Benito'),
('792', 'San Benito Abad'),
('793', 'San Bernardo'),
('794', 'San Bernardo del Viento'),
('795', 'San Calixto'),
('796', 'San Carlos'),
('797', 'San Carlos de Guaroa'),
('798', 'San Cayetano'),
('799', 'San Cristóbal'),
('8', 'Cali'),
('80', 'Apía'),
('800', 'San Diego'),
('801', 'San Eduardo'),
('802', 'San Estanislao'),
('803', 'San Felipe'),
('804', 'San Fernando'),
('805', 'San Francisco'),
('806', 'San Gil'),
('807', 'San Jacinto'),
('808', 'San Jacinto del Cauca'),
('809', 'San Jerónimo'),
('81', 'Apulo'),
('810', 'San Joaquín'),
('811', 'San José'),
('812', 'San José de La Montaña'),
('813', 'San José de Miranda'),
('814', 'San José de Pare'),
('815', 'San José de Uré'),
('816', 'San José del Fragua'),
('817', 'San José del Guaviare'),
('818', 'San José del Palmar'),
('819', 'San Juan de Arama'),
('82', 'Aquitania'),
('820', 'San Juan de Betulia'),
('821', 'San Juan de Río Seco'),
('822', 'San Juan de Urabá'),
('823', 'San Juan del Cesar'),
('824', 'San Juan Nepomuceno'),
('825', 'San Juanito'),
('826', 'San Lorenzo'),
('827', 'San Luis'),
('828', 'San Luis de Gaceno'),
('829', 'San Luis de Sincé'),
('83', 'Aracataca'),
('830', 'San Marcos'),
('831', 'San Martín'),
('832', 'San Martín de Loba'),
('833', 'San Mateo'),
('834', 'San Miguel'),
('835', 'San Miguel de Sema'),
('836', 'San Onofre'),
('837', 'San Pablo'),
('838', 'San Pablo de Borbur'),
('839', 'San Pedro'),
('84', 'Aranzazu'),
('840', 'San Pedro de Cartago'),
('841', 'San Pedro de Uraba'),
('842', 'San Pelayo'),
('843', 'San Rafael'),
('844', 'San Roque'),
('845', 'San Sebastián'),
('846', 'San Sebastián de Buenavista'),
('847', 'San Vicente'),
('848', 'San Vicente de Chucurí'),
('849', 'San Vicente del Caguán'),
('85', 'Aratoca'),
('850', 'San Zenón'),
('851', 'Sandoná'),
('852', 'Santa Ana'),
('853', 'Santa Bárbara'),
('854', 'Santa Bárbara de Pinto'),
('855', 'Santa Catalina'),
('856', 'Santa Helena del Opón'),
('857', 'Santa Isabel'),
('858', 'Santa Lucía'),
('859', 'Santa María'),
('86', 'Arauca'),
('860', 'Santa Marta'),
('861', 'Santa Rosa'),
('862', 'Santa Rosa de Cabal'),
('863', 'Santa Rosa de Osos'),
('864', 'Santa Rosa de Viterbo'),
('865', 'Santa Rosa del Sur'),
('866', 'Santa Rosalía'),
('867', 'Santa Sofía'),
('868', 'Santacruz'),
('869', 'Santafé de Antioquia'),
('87', 'Arauquita'),
('870', 'Santana'),
('871', 'Santander de Quilichao'),
('872', 'Santiago'),
('873', 'Santiago de Tolú'),
('874', 'Santo Domingo'),
('875', 'Santo Tomás'),
('876', 'Santuario'),
('877', 'Sapuyes'),
('878', 'Saravena'),
('879', 'Sardinata'),
('88', 'Arbeláez'),
('880', 'Sasaima'),
('881', 'Sativanorte'),
('882', 'Sativasur'),
('883', 'Segovia'),
('884', 'Sesquilé'),
('885', 'Sevilla'),
('886', 'Siachoque'),
('887', 'Sibaté'),
('888', 'Sibundoy'),
('889', 'Silos'),
('89', 'Arboleda'),
('890', 'Silvania'),
('891', 'Silvia'),
('892', 'Simacota'),
('893', 'Simijaca'),
('894', 'Simití'),
('895', 'Sincelejo'),
('896', 'Sipí'),
('897', 'Sitionuevo'),
('898', 'Soacha'),
('899', 'Soatá'),
('9', 'Cartagena'),
('90', 'Arboledas'),
('900', 'Socha'),
('901', 'Socorro'),
('902', 'Socotá'),
('903', 'Sogamoso'),
('904', 'Solano'),
('905', 'Soledad'),
('906', 'Solita'),
('907', 'Somondoco'),
('908', 'Sonsón'),
('909', 'Sopetrán'),
('91', 'Arboletes'),
('910', 'Soplaviento'),
('911', 'Sopó'),
('912', 'Sora'),
('913', 'Soracá'),
('914', 'Sotaquirá'),
('915', 'Sotara'),
('916', 'Suaita'),
('917', 'Suan'),
('918', 'Suárez'),
('919', 'Suaza'),
('92', 'Arcabuco'),
('920', 'Subachoque'),
('921', 'Sucre'),
('922', 'Suesca'),
('923', 'Supatá'),
('924', 'Supía'),
('925', 'Suratá'),
('926', 'Susa'),
('927', 'Susacón'),
('928', 'Sutamarchán'),
('929', 'Sutatausa'),
('93', 'Arenal'),
('930', 'Sutatenza'),
('931', 'Tabio'),
('932', 'Tadó'),
('933', 'Talaigua Nuevo'),
('934', 'Tamalameque'),
('935', 'Támara'),
('936', 'Tame'),
('937', 'Támesis'),
('938', 'Taminango'),
('939', 'Tangua'),
('94', 'Argelia'),
('940', 'Taraira'),
('941', 'Tarapacá'),
('942', 'Tarazá'),
('943', 'Tarqui'),
('944', 'Tarso'),
('945', 'Tasco'),
('946', 'Tauramena'),
('947', 'Tausa'),
('948', 'Tello'),
('949', 'Tena'),
('95', 'Ariguaní'),
('950', 'Tenerife'),
('951', 'Tenjo'),
('952', 'Tenza'),
('953', 'Teorama'),
('954', 'Teruel'),
('955', 'Tesalia'),
('956', 'Tibacuy'),
('957', 'Tibaná'),
('958', 'Tibasosa'),
('959', 'Tibirita'),
('96', 'Arjona'),
('960', 'Tibú'),
('961', 'Tierralta'),
('962', 'Timaná'),
('963', 'Timbío'),
('964', 'Timbiquí'),
('965', 'Tinjacá'),
('966', 'Tipacoque'),
('967', 'Tiquisio'),
('968', 'Titiribí'),
('969', 'Toca'),
('97', 'Armenia'),
('970', 'Tocaima'),
('971', 'Tocancipá'),
('972', 'Togüí'),
('973', 'Toledo'),
('974', 'Tolú Viejo'),
('975', 'Tona'),
('976', 'Tópaga'),
('977', 'Topaipí'),
('978', 'Toribio'),
('979', 'Toro'),
('98', 'Armero'),
('980', 'Tota'),
('981', 'Totoró'),
('982', 'Trinidad'),
('983', 'Trujillo'),
('984', 'Tubará'),
('985', 'Tuchín'),
('986', 'Tuluá'),
('987', 'Tunja'),
('988', 'Tununguá'),
('989', 'Túquerres'),
('99', 'Arroyohondo'),
('990', 'Turbaco'),
('991', 'Turbaná'),
('992', 'Turbo'),
('993', 'Turmequé'),
('994', 'Tuta'),
('995', 'Tutazá'),
('996', 'Ubalá'),
('997', 'Ubaque'),
('998', 'Ulloa'),
('999', 'Umbita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `ID_historico` int(11) NOT NULL,
  `ID_equipo` int(11) DEFAULT NULL,
  `Historial_asignaciones` varchar(500) DEFAULT NULL,
  `Procesos_a_ejecutar` varchar(500) DEFAULT NULL,
  `Anotaciones` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`ID_historico`, `ID_equipo`, `Historial_asignaciones`, `Procesos_a_ejecutar`, `Anotaciones`) VALUES
(1, 1, 'Maria  Alexandra Jimenez Rodriguez', 'Cambiarlo', 'Se reasigna y se aplica configuracion de usuario'),
(2, 2, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(3, 3, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(4, 4, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(5, 5, 'Adriana Moncada ', 'Cambiarlo', 'Cambiarlo'),
(6, 6, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(7, 7, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(8, 8, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(9, 9, 'Catalina Gonzalez', 'Cambiarlo', 'Cambiarlo'),
(10, 10, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(11, 11, 'Edint Karina Hernández Jiménez_Angie Lizeth Caballero Arias', 'Cambiarlo', '(1016068142)_Se formatea y se reasigna_'),
(12, 12, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(13, 13, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(14, 14, 'Sara Villafañe_Juan Esteban Segura Catillo', 'Cambiarlo', 'Se formatea y se reasigna_Se fomatea y se reasigna'),
(15, 15, 'Monica Elena Caicedo Guerra_Zoila Josefina Gonzalez Amaya', 'Cambiarlo', '_Se realiza alistamiento para la asignacion, corrigiendo las fallas presentadas_Equipo enviado de Riohacha para su revicion ya que presenta fallas, se evidencia que cargador de equipo viene dañado partido en una salida de energia_Se desconoce procedimiento ejecutado'),
(16, 16, 'Adriana Tarazona_Nicolas Sanchez_', 'Cambiarlo', 'Se realiza revision de  la memoria M.2 la cual presenta fallas y se extrae , se instala de nuevo el sistema operativo y  se realiza la configuracion '),
(17, 17, 'Cambiarlo', 'Cambiarlo', 'Equipo no a sido enviado por parte de funcionario ya que de acuerdo a lo informado por parte de compras es que el funcionario continuara con la compañía'),
(18, 18, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(19, 19, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(20, 20, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(21, 21, 'Maria Restrepo', 'Cambiarlo', 'Cambiarlo'),
(22, 22, 'Miguel Andres Baquero Muñoz _ Jose Jaime Cobayan', 'Cambiarlo', 'Se  instala una RAM de 8GB autuallizando los 4 GB que trae el equipo por defecto,Se aplica BackUp, Se realiza proceso de alistamiento y se reasigna _ Se desconoce procedimiento ejecutado'),
(23, 23, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(24, 24, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(25, 25, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(26, 26, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(27, 27, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(28, 28, 'Jose Luis Jaime', 'Cambiarlo', 'Validar ya que el funcionario cuenta con doble equipo asignado '),
(29, 29, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(30, 30, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(31, 31, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(32, 32, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(33, 33, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(34, 34, 'Sofia Delgado', 'Cambiarlo', 'Clave 2107'),
(35, 35, 'Jose Jaime Cobayan_', 'Cambiarlo', 'Se desconoce proceso aplicado_'),
(36, 36, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(37, 37, '_Andres Felipe Rueda Cuenca', 'Cambiarlo', '(93236438)_se formatea y se corrigen errores del sistema operativo'),
(38, 38, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(39, 39, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(40, 40, 'María Fernanda Peñuela Rojas', 'Cambiarlo', '_Se aplica formateo para reasignar equipo'),
(41, 41, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(42, 42, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(43, 43, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(44, 44, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(45, 45, 'Jessica Maecha', 'Procesador y GPU no coincide con el que se registra en base equipos', 'Se desconoce proceso aplicado'),
(46, 46, 'Juan Felipe Montealegre', 'Cambiarlo', 'Cambiarlo'),
(47, 47, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(48, 48, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(49, 49, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(50, 50, 'Sara Amado', 'Cambiarlo', 'Cambiarlo'),
(51, 51, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(52, 52, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(53, 53, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(54, 54, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(55, 55, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(56, 56, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(57, 57, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(58, 58, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(59, 59, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(60, 60, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(61, 61, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(62, 62, 'Juliana Pachon_Daniel Ramos', 'Cambiarlo', 'Cambiarlo'),
(63, 63, 'Carolina Bedoya', 'Cambiarlo', 'Equipo reasignado, se desconoce procesos ejecutados'),
(64, 64, 'Mario Daniel Iguaran Pushaina', 'Cambiarlo', 'reasignacion y configuracion del equipo'),
(65, 65, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(66, 66, 'Cambiarlo', 'Actualizacion de RAM ', 'Cambiarlo'),
(67, 67, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(68, 68, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(69, 69, 'Daniel Solano_Maria Ximena Malagon Herrera', 'Cambiarlo', 'Se desconoce proceso aplicado_Se aplica backup y genera limpieza de software para reasignacion '),
(70, 70, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(71, 71, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(72, 72, 'Jesus Ramirez', 'Cambiarlo', 'Equipo reasignado, se desconoce procesos ejecutados'),
(73, 73, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(74, 74, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(75, 75, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(76, 76, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(77, 77, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(78, 78, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(79, 79, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(80, 80, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(81, 81, 'Liliana Josefina Fuente Pacheco', 'Enviar equipo a garantia', '(40938457)_Liliana Josefina Fuente Pacheco Funcionario devuelve equipo ya que presenta fallas, se revisa y no enciende por lo cual se remite a garantiaSe aplica backup al equipo, y se reasigna_'),
(82, 82, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(83, 83, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(84, 84, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(85, 85, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(86, 86, 'Carolina Bedoya Osorio', 'Cambiarlo', 'Cambiarlo'),
(87, 87, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(88, 88, 'Clara Johanna Rodriguez Melo', 'Cambiarlo', 'Se recibe equipo se valida estado y vuelve a prender se desconoce proceso ejecutado, se evidencia que presenta falla en ram se valida y se extrae dejando una ram 8 GB para reasignar_ Equipo se revisa y presenta fallas; disco mecanico dañado, el equipo prende ventilador y no da imagen se desarmo en su totalidad se ajustaron las conexiones y no responde, compras lo remite a soporte tecnico externo,'),
(89, 89, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(90, 90, 'Luisa Esquivel_Juan Pulido', 'Cambiarlo', 'Cambiarlo'),
(91, 91, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(92, 92, 'Diana Karina Daza Cuello', 'Cambiarlo', 'Cambiarlo'),
(93, 93, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(94, 94, 'Alejandra Hortua', 'Cambiarlo', 'Se desconoce proceso aplicdo'),
(95, 95, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(96, 96, 'Alejandra Rubio _ Helmer Yair Villanueva Aldana _Alejandra Camargo Ortiz', 'Cambiarlo', 'Se desconoce proceso aplicado_Se aplica backup al equipo, se formatea y se reasigna _ BackUp y reasignacion'),
(97, 97, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(98, 98, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(99, 99, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(100, 100, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(101, 101, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(102, 102, 'Claudia Angelica Martinez Avendaño ', 'Cambiarlo', 'Se aplica proceso de reasignacion _ Se realiza BackUp, reinstalacion de Windows y configuracion para la reasignacion '),
(103, 103, 'Monica Valderrama', 'Cambiarlo', 'Se desconoce proceso aplicado'),
(104, 104, 'Claudia Angelica Martínez Avendaño_Ana Marcela Cabrera Guarin_Nathaly Rojas Cuellar_Jairo Humberto Quique Gómez', 'Cambiarlo', 'Se evidencia en la placa de puertos USB de la parte derecha con una falla debido a que esta esta rota en un extremo 28/02/2024_(1026270483)_Claudia Martinez Entrega equipo_Equipo no a sido enviado por parte del funcionario pendiente validadcion _ Se extrae HDD 1TB y se instala SSD 500 GB_Se genera BackUp y alistamiento para reasignacion '),
(105, 105, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(106, 106, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(107, 107, 'María Angelica Corzo Contreras_Marlha Emerita Paulina Alvarez Osorno', 'Cambiarlo', 'Se reasigna y se aplica configuracion de usuario_Se reasigna y se aplica configuracion de usuario'),
(108, 108, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(109, 109, 'Maria Paola Ruiz_Yuraima Morales_Juan Zabala', 'Cambiarlo', 'Se desconoce proceso aplicado_Se desconoce proceso aplicado_Se desconoce proceso aplicado_'),
(110, 110, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(111, 111, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(112, 112, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(113, 113, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(114, 114, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(115, 115, 'Camila Rivera', 'Cambiarlo', 'Equipo reasignado, se desconoce procesos ejecutados'),
(116, 116, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(117, 117, 'N/A', 'Cambiarlo', 'Cambiarlo'),
(118, 118, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(119, 119, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(120, 120, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(121, 121, 'Sandra Perez Pico', 'Cambiarlo', 'Se desconoce proceso aplicado'),
(122, 122, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(123, 123, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(124, 124, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(125, 125, 'Liliana Josefina Fuente Pacheco_Luis Eduardo Ruiz Lopez', 'Enviar equipo a garantia', '(40938457)_Liliana Josefina Fuente Pacheco Funcionario devuelve equipo ya que presenta fallas, se revisa y no enciende por lo cual se remite a garantiaSe aplica backup al equipo, y se reasigna_'),
(126, 126, 'Jenny Paola Trujillo', 'Cambiarlo', 'Cambiarlo'),
(127, 127, 'Lina Marcela Bayona', 'Cambiarlo', 'Se desconoce proceso aplicado '),
(128, 128, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(129, 129, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(130, 130, 'Adriana Lucia Buritica Botero', 'Cambiarlo', 'Se aplica BackUp, Se realiza proceso de alistamiento y se reasigna, Se instala una unidad de almacenamiento M.2 de 128GB  '),
(131, 131, 'Carlos Herney Guzmán Enciso _Kesia Milena Marin díaz', 'Realizar formateo de equipo debido a un fallo con administrador ', 'Funcionario devulve equipo ya que no cumple con los requerimeintos minimos _ Se realiza procedimiento de reasignación'),
(132, 132, 'Sergio Venegas', 'Cambiarlo', 'Cambiarlo'),
(133, 133, 'katherin Lizeth Pinzon Gutierrez_Ricardo Cardenas Gutierrez', 'Cambiarlo', 'Se restablece el equipo y se reasigna, Provisionalmente '),
(134, 134, 'Cambiarlo', 'Cambiarlo', 'Se recibe equipo de garantia, nuevamente asignandolo '),
(135, 135, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(136, 136, 'Daniel Ramos', 'Cambiarlo', 'Cambiarlo'),
(137, 137, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(138, 138, 'Hernan Hernandez_Daniela Gomez Santamaria ', 'Cambiarlo', 'Cambiarlo'),
(139, 139, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(140, 140, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(141, 141, 'Leonel Castañeda Ortiz', 'Cambiarlo', 'Se aplica formato para asignar'),
(142, 142, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(143, 143, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(144, 144, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(145, 145, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(146, 146, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(147, 147, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(148, 148, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(149, 149, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(150, 150, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(151, 151, 'Juan Camargo', 'Cambiarlo', 'Se aplica backup al equipo, se formatea  '),
(152, 152, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(153, 153, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(154, 154, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(155, 155, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(156, 156, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(157, 157, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(158, 158, 'Karen Alejandra García Rodríguez_Irma María Tamayo López', 'Cambiarlo', 'Se aplica configuración para reasignación'),
(159, 159, 'Rosiris Martinez_Nicolas Caballero', 'Cambiarlo', 'Se desconoce proceso aplicado_Se desconoce proceso aplicado'),
(160, 160, 'Carlos Arturo Santiago Daza', 'Revision de puerto USB dañado , presenta un corto.', 'Se creo BackUp Carlos Santiago y se formatea equipo'),
(161, 161, 'Wilson Ramírez Pineda', 'Cambiarlo', 'Cambiarlo'),
(162, 162, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(163, 163, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(164, 164, 'Angie Espinosa', 'Cambiarlo', 'Se desconoce proceso aplicado'),
(165, 165, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(166, 166, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(167, 167, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(168, 168, '_Nilsa Sulima Jusayu Uriana', 'Cambiarlo', '(1193558551)_Se reasigna equipo'),
(169, 169, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(170, 170, 'Juan Pulido_Jose Jaime_Maria Camila Rivera Paez_Diana Paola Martinez Tamara', 'Cambiarlo', 'Se desconoce proceso ejecutado_Se desconoce proceso ejecutado_Equipo es re asignado'),
(171, 171, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(172, 172, 'Jesus Ramirez', 'Cambiarlo', 'Cambiarlo'),
(173, 173, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(174, 174, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(175, 175, 'Cristian Camilo Olarte Benavides', 'Cambiarlo', 'Cambiarlo'),
(176, 176, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(177, 177, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(178, 178, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(179, 179, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(180, 180, 'Cesar Augusto Parra Aldana', 'Cambiarlo', 'Se formatea equipo para asignar'),
(181, 181, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(182, 182, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(183, 183, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(184, 184, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(185, 185, 'Cristian Camilo Arcila Chiquiza', 'Cambiarlo', 'Se aplico un formateo completo para reasignar equipo'),
(186, 186, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(187, 187, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(188, 188, 'Jessica Paola Sierra Diaz', 'Cambiarlo', 'se realiza un cambio del M.2 de 512GB a 256GB'),
(189, 189, 'Nara Marcela Niño Martinez', 'Cambiarlo', 'se cambia disco de 2TB a uno de menor capacidad, se registra un fallo ya que no muestra el S/N ni el modelo del equipo.'),
(190, 190, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(191, 191, 'Cambiarlo', 'Cambiarlo', 'Clave 0513'),
(192, 192, 'Karen Loaiza', 'Cambiarlo', 'Cambiarlo'),
(193, 193, 'Daniel Valencia Bacca', 'Cambiarlo', 'Se formatea para corregir problemas del sistema y rendimiento_Se formatea para reasignación se cambia disco duro asignado al equipo (ID 141 ? COD 0565 x 1500 GB), se cambia RAM de 12 GB dejando el equipo con RAM de 8 GB de acuerdo con los requerimientos de proceso para el que es destinado y se reasigna. Funcionario devuelve el equipo ya que no cuenta con los requerimientos básicos para la ejecución de las labores informa que trabaja en equipo personal ya que el equipo asignado no le responde. '),
(194, 194, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(195, 195, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(196, 196, 'Nayibe Gutierrez', 'Cambiarlo', 'Cambiarlo'),
(197, 197, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(198, 198, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(199, 199, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(200, 200, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(201, 201, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(202, 202, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(203, 203, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(204, 204, 'Juliana Barrientos', 'Cambiarlo', 'Cambiarlo'),
(205, 205, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(206, 206, 'Cambiarlo', 'Cambiarlo', 'Se contacta a funcionario el cual informa estar en desacuerdo con el acceso remoto para gestionar los datos del equipo'),
(207, 207, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(208, 208, 'Cambiarlo', 'Generar comodato', 'Cambiarlo'),
(209, 209, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(210, 210, 'Maria Alejandra Montaño', 'Cambiarlo', 'Se desconoce proceso  aplicado'),
(211, 211, 'Javier Casilimas Cautivas / 1030528489', 'Cambiarlo', 'Cambiarlo'),
(212, 212, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(213, 213, 'Cambiarlo', 'Cambiarlo', 'MEMORIA CASI LLENA 29GB DISPONIBLES'),
(214, 214, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(215, 215, 'Ruth Alejandra Pardo Martinez', 'Cambiarlo', 'Se amplia el almacenamiento a un M.2 de 512 GB'),
(216, 216, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(217, 217, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(218, 218, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(219, 219, 'Cambiarlo', 'Cambiarlo', 'Cambiarlo'),
(220, 220, 'Gladys Marcela Zamora Morantes se retira 08/03/2024_Santiago Guerrero Benavides_Carol Fonseca Peñuela_Julian Castañeda_', 'Cambiarlo', '(1033734499)_Se cambia disco duro asignado al equipo (ID 42 ? COD PDTE x 1128 GB),se cambia RAM de 12 GB dejando el equipo con RAM de 8 GB ya que volumen presenta fallas. Funcionario solicta cambio de equipo por fallas en la operatividad se aplica cambio reasignado equipo que pertenecia a Daniel Valencia_Se desconoce proceso aplicdo_Se desconoce proceso aplicado_'),
(221, 221, 'Maria Huepe_Lorena Lopez', 'Cambiarlo', '1075545244_Maria Huepe remite por correo coorporativo que el equipo fue hurtado el dia 30/01/2024 en su lugar de recidencia se valida la ubicación del equipo pero este registra con 0% en bateria En proceso de investigacion_ Se desconoce procesos ejecutados_Equipo reasignado'),
(222, 222, 'Cristhian Bernardo Rivera Prada', 'Ninguno', 'Equipo se dio de baja, confirmado por Gerente general; este equipo se dio a un externo de la compañía _ Validar ya que equipo se registra como dado de baja pero no se tiene conocimeinto de que sucedió con el mismo '),
(223, 223, '_Carlos Alberto Caicedo Navarro', 'Cambiarlo', '(80111935)_Carlos Caicedo entrega equipo'),
(224, 224, 'Orlando Quevedo Barragan', 'Localizar equipo', '1023908865_Orlando Quevedo Barragan'),
(225, 225, 'Alexander Suarez Ossa', 'Localizar equipo', '1075289431_Alexander Suarez Ossa'),
(226, 226, 'Jose Luis Jaime Cobayan', 'Localizar equipo', '1024554155_Jose Luis Jaime Cobayan'),
(227, 227, 'Juan Pablo Pulido Arias ', 'Localizar equipo', '1075306124_Juan Pablo Pulido Arias '),
(228, 228, 'Tomas Carlos', 'Localizar equipo', 'Tomas Carlos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `ID_licencia` varchar(50) NOT NULL,
  `Licencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`ID_licencia`, `Licencia`) VALUES
('1', 'Home'),
('2', 'Pro'),
('3', 'Home Single Language'),
('4', 'Server'),
('5', 'Cambiarlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_marca` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_marca`, `Nombre`) VALUES
('1', 'Acer'),
('10', 'Cambiarlo'),
('2', 'Asus'),
('3', 'Lenovo'),
('4', 'Huawei'),
('5', 'HP'),
('6', 'Apple'),
('7', 'Dell'),
('8', 'Toshiba'),
('9', 'Alienware');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `ID_oficina` varchar(50) NOT NULL,
  `Oficina` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `oficinas`
--

INSERT INTO `oficinas` (`ID_oficina`, `Oficina`) VALUES
('1', 'Adm'),
('2', 'Rio'),
('3', 'Nei'),
('4', 'Téc'),
('5', 'Hof'),
('6', 'Home_Office'),
('7', 'Cambiarlo'),
('8', 'Uri');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('daniel.barrueto@eiatec.co', '$2y$12$vp/8NvIsCgoFLmY34tFSc.S9HFcs0gkq8QnDAUsZ.QBVyGLEjD9Mu', '2024-05-30 01:44:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2jrxl1mQu8HYUB5Kc2DZk4LS71JpZp38jXGDLVJR', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEt3eG1ERWZGTGozZXdybklMbmRHWkhQbUh2cmRjS3RJM0dRR3dhRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3QvQ1JVRC9wdWJsaWMiO319', 1719503410),
('WsQHzUrvsSgGs8a1CABrqoOdvSIquuQqgUeIleGG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZlRqa3NjeFl3MmdmNlpTWDBjVmxab3Rzako3SEE1d1g2enZtbDFIYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbWcvSWNvbm9fbG9nby5wbmcuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTk0OTg5MTM7fX0=', 1719499328);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `ID_tipo` varchar(50) NOT NULL,
  `Modalidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`ID_tipo`, `Modalidad`) VALUES
('1', 'Mesa'),
('2', 'Portatil'),
('3', 'All in one'),
('4', 'Cambiarlo'),
('5', 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `ID_trabajador` int(11) NOT NULL,
  `Cedula` varchar(50) DEFAULT NULL,
  `ID_expedicion` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `ID_cargo` varchar(100) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL,
  `ID_ubicacion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `ID_coordinacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`ID_trabajador`, `Cedula`, `ID_expedicion`, `Nombre`, `ID_cargo`, `Correo`, `Contraseña`, `ID_ubicacion`, `Telefono`, `ID_coordinacion`) VALUES
(1, '1032495837', '6', 'Adalina Rivera Galeano', '50', 'Adalina.Rivera@eiatec.co', 'EArgC23$', '1', 'Cambiarlo', '10'),
(2, '52532606', '1069', 'Adriana Marcela Muñoz Vásquez', '68', 'adriana.munoz@eiatec.com.co', 'EAmmC23$', '1', 'Cambiarlo', '22'),
(3, '26431347', '1069', 'Adriana Palma Triana', '41', 'apalma@eiatec.com', 'EAptC23$', '3', '3164064824', '22'),
(4, '1006120919', '1069', 'Alejandro Aguirre Basto', '148', 'alejandro.aguirre@eiatec.co', 'EAabC23$', '2', 'Cambiarlo', '22'),
(5, '1001205120', '1069', 'Alisson Estefania Herrera Sanabria', '21', 'auxhseq@eiatec.com', 'EAehC23$', '1', '3173830338', '22'),
(6, '4113141', '1069', 'Álvaro Augusto Diaz García', '130', 'Alvaro.Diaz@eiatec.co', 'EÁadC23$', '13', 'Cambiarlo', '22'),
(7, '26989251', '1069', 'Aminta Pelaez Guariyu', '11', 'aminta.guariyu@eiatec.co', 'EApgC23$', '2', 'Cambiarlo', '22'),
(8, '53001262', '1069', 'Ana Marcela Cabrera Guarín', '61', 'GerenciaTecnica@eiatec.com', 'EAmcC23$', '1', '3174582455', '22'),
(9, '1030667999', '1069', 'Ana Maria Cortes Dominguez', '71', 'Ana.Cortes@eiatec.co', 'EAmcC23$', '1', '3138682213', '22'),
(10, '1121940052', '33', 'Ana María Lozano Flórez', '163', 'Ana.Lozano@eiatec.co', 'Cambiarlo', '12', '3105331692', '9'),
(11, '1033768806', '6', 'Ana María Pardo Cortés', '143', 'Ana.Pardo@eiatec.co', 'EAmpC23$', '1', '3175848717', '9'),
(12, '15878694', '1069', 'Ancizar Sanchez Urriago', '34', 'arqueologia@eiatec.com', 'EAsuC23$', '13', 'Cambiarlo', '22'),
(13, '1030524769', '1069', 'Andres Camilo Valbuena Vaca', '48', 'avalbuena@eiatec.com', 'EAcvC23$', '1', 'Cambiarlo', '22'),
(14, '1005839766', '6', 'Andrés Felipe Céspedes Flórez', '162', 'tecnico.sistemas@eiatec.com', 'EAfcC23$', '1', '3107818040', '22'),
(15, '93236438', '14', 'Andres Felipe Rueda Cuenca', '117', 'andres.rueda@eiatec.co', 'EAfrC23$', '2', '311 8160048', '22'),
(16, '4084117', '1069', 'Ángel Rolando Supanteve Agudelo', '50', 'Angel.Supanteve@eiatec.co', 'EÁrsC23$', '1', '3203346208', '22'),
(17, '46386798', '1069', 'Angela Del Pilar Viancha Sánchez', '120', 'angela.viancha@eiatec.co', 'EAdpC23$', '1', 'Cambiarlo', '22'),
(18, '1003334712', '1069', 'Angelica Guerra Salas', '156', 'angelica.guerra@eiatec.co', 'EAgsC23$', '2', 'Cambiarlo', '22'),
(19, '1016028451', '1069', 'Angelica Johana Rojas Urquiza', '137', 'Angelica.Rojas@eiatec.co', 'EAjrC23$', '13', '311838 3167', '17'),
(20, '18125829', '1069', 'Antonio Mueses Manuel', '12', 'Antonio.Mueses@eiatec.co', 'EAmmC23$', '13', 'Cambiarlo', '22'),
(21, '1098646164', '1069', 'Aracely Linares Dietes', '169', 'aracely.linares@eiatec.com.co', 'EAldC23$', '1', 'Cambiarlo', '22'),
(22, '72272678', '1069', 'Armando Jesús Pinzón Vera', '120', 'Armando.Pinzon@eiatec.co', 'EAjpC23$', '1', '3003156454', '10'),
(23, '84075224', '1069', 'Arnoldo Eusebio Pimienta Epieyu', '156', 'arnoldo.pimienta@eiatec.co', 'EAepC23$', '2', 'Cambiarlo', '22'),
(24, '52988710', '1069', 'Astrid Giovanna Rodríguez Bernal', '117', 'Astrid.Rodriguez@eiatec.co', 'EAgrC23$', '1', '3104053812', '22'),
(25, '830105228', '1069', 'Cambiarlo', '171', 'Bancoshabitat@eiatec.com', 'EBdhC23$', '13', 'Cambiarlo', '22'),
(26, '1118802421', '1069', 'Betty María Garanadillo Epiayu', '156', 'betty.garanadillo@eiatec.co', 'EBmgC23$', '2', 'Cambiarlo', '22'),
(27, '52539974', '1069', 'Blanca Lucia Franco Giraldo', '18', 'Cambiarlo', 'EBlfC23$', '13', 'Cambiarlo', '22'),
(28, '1075303079', '1069', 'Camila Rivera Paez', '44', 'Camila.rivera@eiatec.co', 'ECrpC23$', '2', 'Cambiarlo', '22'),
(29, '1010222573', '1069', 'Camila Vanessa Valero Carvajal', '137', 'Camila.Valero@eiatec.co', 'ECvvC23$', '1', '3002417848', '22'),
(30, '1110520783', '14', 'Carlos Alfonso Bonilla Doncel', '126', 'Carlos.Bonilla@eiatec.co', 'ECabC23$', '13', 'Cambiarlo', '9'),
(31, '80751277', '1069', 'Carlos Arturo Monsalve Luque', '150', 'Carlos.Monsalve@eiatec.co', 'ECamC23$', '13', '3223445731', '9'),
(32, '79359958', '1069', 'Carlos Hernando Galan Rodriguez', '58', 'cgalan@eiatec.com', 'EChgC23$', '13', 'Cambiarlo', '22'),
(33, '1022400023', '1069', 'Carlos Herney Guzman Enciso', '156', 'carlos.guzman@eiatec.co', 'EChgC23$', '13', 'Cambiarlo', '22'),
(34, '1001202155', '1069', 'Carol Mayerli Fonseca Peñuela', '27', 'contadorjr@eiatec.com', 'ECmfC23$', '1', '3228840850', '22'),
(35, '1000153278', '1069', 'Cindy Tatiana Santamaria Caro', '137', 'Cindy.Santamaria@eiatec.co', 'ECtsC23$', '1', '3206878420', '22'),
(36, '1026252590', '1069', 'Clara Johanna Rodriguez Melo', '40', 'Crodriguez@eiatec.com', 'ECjrC23$', '1', '3176350541', '13'),
(37, '1026270483', '6', 'Claudia Angelica Martínez Avendaño', '151', 'claudia.martinez@eiatec.com.co', 'ECamC23$', '1', '3185241183', '9'),
(38, '1097162373', '1069', 'Claudia Yaneth Ortiz Mendieta', '68', 'claudia.ortiz@eiatec.com.co', 'ECyoC23$', '1', 'Cambiarlo', '22'),
(39, '1105680681', '1069', 'Cristhian Bernardo Rivera', '35', 'Coordinadornorte@eiatec.co', 'ECbrC23$', '13', 'Cambiarlo', '22'),
(40, '1018474416', '6', 'Cristhian Eduardo Beltran Bustos', '156', 'Cristhian.Beltran@eiatec.co', 'ECebC23$', '2', '3187887029', '22'),
(41, '1118775449', '1069', 'Cristhian Yesid Gualteros Montilla', '156', 'Cristhian.Gualteros@eiatec.co', 'ECygC23$', '1', 'Cambiarlo', '22'),
(42, '1073174835', '1069', 'Cristian Camilo Cordero Torres', '130', 'Cristian.Cordero@eiatec.co', 'ECccC23$', '13', 'Cambiarlo', '9'),
(43, '1123409471', '1069', 'Cristian Camilo Cotes Perez', '130', 'cristian.cotes@eiatec.co', 'ECccC23$', '2', 'Cambiarlo', '22'),
(44, '1233690250', '1069', 'Cristian Camilo Olarte Benavides', '12', 'cristian.olarte@eiatec.co', 'ECcoC23$', '1', 'Cambiarlo', '22'),
(45, '1233496392', '1069', 'Cristian Camilo Velasquez Romero', '117', 'Cristian.Velasquez@eiatec.co', 'ECcvC23$', '1', '3143570776', '22'),
(46, '1070959165', '1069', 'Cristian Leonardo Forero Tijera', '117', 'Cristian.Forero@eiatec.co', 'EClfC23$', '1', '3118838705', '22'),
(47, '1082984144', '1069', 'Dahiana Marcela Ladino Contreras', '118', 'dahiana.ladino@eiatec.co', 'EDmlC23$', '2', 'Cambiarlo', '22'),
(48, '1065807758', '1069', 'Daniel Eduardo Castro Gutierrez', '81', 'Cambiarlo', 'EDecC23$', '13', 'Cambiarlo', '22'),
(49, '1014977189', '6', 'Daniel Felipe Barrueto Ayala', '109', 'Daniel.Barrueto@eiatec.co', 'EDfbC23$', '1', '3213110414', '4'),
(50, '1018459890', '1069', 'Daniel Martínez Gaitán', '57', 'Daniel.Martinez@eiatec.co', 'EDmgC23$', '1', '3174111267', '22'),
(51, '79912395', '1069', 'Daniel Valencia Bacca', '125', 'daniel.valencia@eiatec.com.co', 'EDvbC23$', '13', 'Cambiarlo', '22'),
(52, '1022426333', '1069', 'Daniela Gomez Santamaria', '137', 'Daniela.Gomez@eiatec.co', 'EDgsC23$', '1', '3058261109', '1'),
(53, '1109264905', '1069', 'Danilo Alberto Campos Gongora', '156', 'danilo.campos@eiatec.co', 'EDacC23$', '2', 'Cambiarlo', '22'),
(54, '80134785', '314', 'Danny Johao Sotelo Patiño', '127', ' Danny.Sotelo@eiatec.co', 'EDjsC23$', '13', 'Cambiarlo', '9'),
(55, '40940816', '1069', 'Davianis Paulina Acosta Avila', '117', 'davianis.acosta@eiatec.co', 'EDpaC23$', '2', 'Cambiarlo', '22'),
(56, '1049616561', '31', 'David Ricardo Hernandez Velandia', '120', 'David.Hernandez@eiatec.co', 'EDrhC23$', '13', '3207611563 ', '15'),
(57, '1014258416', '1069', 'Deicy Mayerly Astroza Galvis', '117', 'Deicy.Astroza@eiatec.co', 'EDmaC23$', '1', '3118732473', '14'),
(58, '1070919849', '1069', 'Diana Alejandra Rueda Arévalo', '155', 'Diana.Rueda@eiatec.co', 'EDarC23$', '13', 'Cambiarlo', '22'),
(59, '53099338', '1069', 'Diana Alvarez Albarracín', '148', 'diana.alvarez@eiatec.co', 'EDaaC23$', '2', 'Cambiarlo', '22'),
(60, '24157464', '1069', 'Diana Carolina Mayorga Lozano', '68', 'diana.mayorga@eiatec.com.co', 'EDcmC23$', '1', 'Cambiarlo', '22'),
(61, '56074786', '1069', 'Diana Karina Daza Cuello', '156', 'Diana.Daza@eiatec.co', 'EDkdC23$', '13', '3003211205', '22'),
(62, '52454121', '1069', 'Diana Marcela Ospina Barrera', '135', 'diana.ospina@eiatec.com.co', 'EDmoC23$', '1', 'Cambiarlo', '22'),
(63, '29287760', '1069', 'Diana Milena Cobo Henao', '10', 'aux.admin@eiatec.com', 'EDmcC23$', '3', 'Cambiarlo', '22'),
(64, '1118855046', '1069', 'Diana Paola Martínez Tamara', '18', 'Paola.Martinez@eiatec.co', 'EDpmC23$', '2', '3013410865', '22'),
(65, '55190271', '1069', 'Diana Paola Ochoa Manchola', '114', 'sostenibilidad@eiatec.com', 'EDpoC23$', '1', '3185744428', '22'),
(66, '1152204935', '1069', 'Diego Fernando Mantilla Rincon', '36', 'dmantilla@eiatec.com', 'EDfmC23$', '1', '3123007261', '22'),
(67, '1083004911', '1069', 'Diego Fernando Montes Castilla', '156', 'diego.montes@eiatec.com.co', 'EDfmC23$', '1', 'Cambiarlo', '22'),
(68, '1032419672', '1069', 'Diego Fernando Sequeda Saavedra', '149', 'Diego.Sequeda@eiatec.co', 'EDfsC23$', '13', '3182411562', '22'),
(69, '74182709', '1069', 'Diego Javier Ramírez Moreno', '112', 'diego.ramirez@eiatec.co', 'EDjrC23$', '1', '3182711558', '22'),
(70, '15297381', '1069', 'Duber Arbey Muñoz Quiroz', '164', 'Duber.Munoz@eiatec.co', 'EDamC23$', '13', 'Cambiarlo', '9'),
(71, '830105228', '1069', 'Cambiarlo', '171', 'eiatec@eiatec.co', 'Cambiarlo', '13', 'Cambiarlo', '22'),
(72, '7728327', '1069', 'Edgar Ferney Montano Canizales', '64', 'facturacion@eiatec.com', 'EEfmC23$', '3', 'Cambiarlo', '22'),
(73, '79530454', '1069', 'Edgar Guillermo Medina Quiroga', '53', 'guillermo.medina@eiatec.com.co', 'EEgmC23$', '1', 'Cambiarlo', '22'),
(74, '32843463', '1069', 'Edith Johana de la Hoz Escalante', '156', 'recepcion-norte@eiatec.co', 'EEjdC23$', '2', 'Cambiarlo', '22'),
(75, '93366837', '1069', 'Edward  Arciniegas Palma', '128', 'Edward.Arciniegas@eiatec.co', 'EE aC23$', '1', '3205782727', '22'),
(76, '88246184', '1069', 'Edwin Edgar Molina Moya', '60', 'Edwin.Molina@eiatec.co', 'EEemC23$', '13', 'Cambiarlo', '22'),
(77, '88246184', '1069', 'Edwin Edgar Molina Moya', '60', 'Gerente@eiatec.com', 'EEemC23$', '13', 'Cambiarlo', '22'),
(78, '1067912385', '1069', 'Fabian David Padilla Gonzalez', '117', 'fabian.padilla@eiatec.co', 'EFdpC23$', '2', '3127316255', '22'),
(79, '21111678', '1069', 'Flor Alicia Florez Mora', '18', 'Cambiarlo', 'EFafC23$', '13', 'Cambiarlo', '22'),
(80, '1075308907', '1069', 'Frank Roberth Cadena Sanchez', '81', 'logistica@eiatec.com', 'EFrcC23$', '8', '3143544966', '22'),
(81, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '5', 'Cambiarlo', '22'),
(82, '84006790', '1069', 'Genaro Enrique  Epiayú Epiayú', '153', 'genaro.Epiayu@eiatec.co', 'EGe C23$', '2', '317692 9120', '22'),
(83, '830105228', '1069', 'Cambiarlo', '171', 'eiatec@gerenciaeiatec.onmicrosoft.com', 'EGesC23$', '13', 'Cambiarlo', '22'),
(84, '7708409', '1069', 'Gilberto Dussan  Andrade', '81', 'Cambiarlo', 'EGd C23$', '13', 'Cambiarlo', '22'),
(85, '1039088836', '1069', 'Glenisedith Jimenez  Lopez', '18', 'Cambiarlo', 'EGj C23$', '13', 'Cambiarlo', '22'),
(86, '1020724301', '1069', 'Gustavo Adolfo Villarraga Aragón', '25', 'Gustavo.Villarraga@eiatec.co', 'EGavC23$', '3', '3106104426', '15'),
(87, '7708066', '1069', 'Hermes Ricardo Cortes Sánchez', '135', 'ricardo.cortes@eiatec.com.co', 'EHrcC23$', '13', 'Cambiarlo', '22'),
(88, '80757255', '1069', 'Hernán David Clavijo Awazacko', '120', 'Hernan.Clavijo@eiatec.co', 'EHdcC23$', '1', '3105677708', '22'),
(89, '93125902', '1069', 'Hernesto Calderón Ayala', '137', 'hernesto.calderon@eiatec.com.co', 'EHcaC23$', '9', 'Cambiarlo', '22'),
(90, '1016095535', '1069', 'Inti Barragan Villalobos', '57', 'Inti.Barragan@eiatec.co', 'EIbvC23$', '1', '3223649399', '22'),
(91, '80777414', '1069', 'Jaime Alberto Real Molina', '23', 'Cambiarlo', 'EJarC23$', '13', 'Cambiarlo', '22'),
(92, '1030598821', '1069', 'Jaime Harley Gonzales Cárdenas', '166', 'Jaime.Gonzales@eiatec.co', 'EJhgC23$', '2', '3176173942', '22'),
(93, '1030528489', '1069', 'Javier Casilimas Cautivas', '149', 'Javier.Casilimas@eiatec.co', 'EJccC23$', '13', '3174134291', '12'),
(94, '1014269846', '1069', 'Javier Francisco Caicedo Moncada', '120', 'Javier.Caicedo@eiatec.co', 'EJfcC23$', '1', 'Cambiarlo', '22'),
(95, '80854143', '1069', 'Jeffer Andrés Daza Villa Marín', '153', 'jeffer.daza@eiatec.com.co', 'EJadC23$', '13', 'Cambiarlo', '22'),
(96, '1110518106', '1069', 'Jeimy Patricia Parra Gómez', '137', 'patricia.parra@eiatec.com.co', 'EJppC23$', '1', 'Cambiarlo', '9'),
(97, '1026271183', '1069', 'Jenny Paola Trujillo Ortigoza', '48', 'jtrujillo@eiatec.com', 'EJptC23$', '1', 'Cambiarlo', '22'),
(98, '1032385366', '1069', 'Jerson Omar Velez Navarro', '81', 'Cambiarlo', 'EJovC23$', '13', 'Cambiarlo', '22'),
(99, '1030623110', '1069', 'Jessica Mahecha Ortiz', '152', 'Jessica.Mahecha@eiatec.co', 'EJmoC23$', '1', '3107618488', '22'),
(100, '1031168246', '6', 'Jesús David Ramirez Riveros', '152', 'Jesus.Ramirez@eiatec.co', 'EJdrC23$', '13', 'Cambiarlo', '20'),
(101, '18124025', '1071', 'Jesús Javier Muñoz Narváez', '17', 'Jesus.Munoz@eiatec.co', 'EJjmC23$', '13', '3108940787', '1'),
(102, '1004682644', '1069', 'Jeymmy Valentina Varela Macias', '83', 'Jeymmy.Varela@eiatec.co', 'EJvvC23$', '1', '3208976041', '22'),
(103, '1032427096', '1069', 'Jhon Alexander Chaparro Benavides', '68', 'jhon.chaparro@eiatec.com.co', 'EJacC23$', '1', 'Cambiarlo', '22'),
(104, '1110457326', '14', 'Jhon Edison Reyes Saavedra', '128', 'Jhon.Reyes@eiatec.co', 'EJerC23$', '1', '310 5411596', '9'),
(105, '91526782', '1069', 'Jhon Edward Chacón', '156', 'Jhon.Chacon@eiatec.co', 'EJecC23$', '10', 'Cambiarlo', '22'),
(106, '1120749804', '1069', 'Jose Carlos Torres Perez', '21', 'Jose.Torres@eiatec.co', 'EJctC23$', '2', '3187855574', '22'),
(107, '1118853419', '1069', 'José de Jesús Osorio Martínez', '156', 'Jose.Osorio@eiatec.co', 'EJdjC23$', '2', '3192503223', '22'),
(108, '12265932', '1069', 'Jose Fabian Peña Rojas', '51', 'admon-neiva@eiatec.com', 'EJfpC23$', '3', 'Cambiarlo', '22'),
(109, '74378528', '1069', 'Juan Carlos Zabala Rivera', '117', 'juan.zabala@eiatec.com.co', 'EJczC23$', '11', 'Cambiarlo', '22'),
(110, '1110174837', '14', 'Juan Miguel Cárdenas Rodriguez', '126', 'Juan.Cardenas@eiatec.co', 'EJmcC23$', '13', 'Cambiarlo', '9'),
(111, '1075322746', '1069', 'Julian Camilo Florez Aldana', '81', 'Cambiarlo', 'EJcfC23$', '13', 'Cambiarlo', '22'),
(112, '13722401', '1069', 'Julio Cesar Gonzalez Calderon', '148', 'julio.gonzalez@eiatec.co', 'EJcgC23$', '2', 'Cambiarlo', '22'),
(113, '1032462240', '1069', 'Karen Alejandra García Rodríguez', '149', 'Karen.Garcia@eiatec.co', 'EKagC23$', '13', '3193059919', '12'),
(114, '53178115', '1069', 'Karen Georgeth Guzman Rodriguez', '120', 'Karen.Guzman@eiatec.co', 'EKggC23$', '1', '3023899513', '22'),
(115, '1075301720', '1069', 'Karen Lorena Mendivelso Narvaez', '10', 'comercial@eiatec.com', 'EKlmC23$', '3', '3165391172', '22'),
(116, '1030545287', '6', 'Katherine Guzmán Alarcón', '142', 'Katherine.Guzman@eiatec.co', 'EKgaC23$', '1', '3134059737', '9'),
(117, '52985635', '1069', 'Kelly Xiomara García Picos', '10', 'Kelly.Garcia@eiatec.co', 'EKxgC23$', '1', '3508864400', '3'),
(118, '1003812497', '20', 'Laura Catalina Rodríguez Montano', '117', 'Laura.Rodriguez@eiatec.co', 'ELcrC23$', '13', '3203479089', '15'),
(119, '1075314579', '1069', 'Laura Cristina Cuadros Ceballos', '117', 'Laura.Cuadros@eiatec.co', 'ELccC23$', '13', '321755 6968', '15'),
(120, '1015447695', '1069', 'Laura Daniela Gil Gil', '120', 'Laura.Gil@eiatec.co', 'ELdgC23$', '1', '3113159211', '22'),
(121, '1099282320', '1069', 'Leidy Milena Diaz Contreras', '70', 'auxcontabilidad3@eiatec.com', 'ELmdC23$', '1', '3112469884', '22'),
(122, '80124810', '1069', 'Leonardo Cubillos Ayala', '128', 'Leonardo.cubillos@eiatec.co', 'ELcaC23$', '1', '3138599729', '9'),
(123, '1140849282', '1069', 'Leonel David Vence Murgas', '110', 'Leonel.Vence@eiatec.co', 'ELdvC23$', '13', '3022762751', '22'),
(124, '17957566', '1069', 'Leovigildo Segundo Solano Gomez', '133', 'Leovigildo.Solano@eiatec.co', 'ELssC23$', '13', 'Cambiarlo', '15'),
(125, '40938457', '1069', 'Liliana Josefina Fuente Pacheco', '156', 'liliana.fuentes@eiatec.co', 'ELjfC23$', '5', 'Cambiarlo', '22'),
(126, '1022366315', '1069', 'Lorena Quintero Patiño', '19', 'Lorena.Quintero@eiatec.co', 'ELqpC23$', '1', '3164931950', '22'),
(127, '1015463974', '1069', 'Luis Daniel Vargas Guarín', '134', 'Luis.Vargas@eiatec.co', 'ELdvC23$', '1', '3213719509', '22'),
(128, '80109316', '1069', 'Luis Eduardo Ruiz Lopez', '169', 'Luis.Ruiz@eiatec.co', 'ELerC23$', '13', 'Cambiarlo', '22'),
(129, '84083803', '1069', 'Luis Enrique Paz Aguilar', '156', 'luis.paz@eiatec.co', 'ELepC23$', '2', 'Cambiarlo', '22'),
(130, '1110536453', '14', 'Luis Felipe Nieto García', '137', 'Felipe.nieto@eiatec.com.co', 'ELfnC23$', '6', 'Cambiarlo', '9'),
(131, '1065611038', '1069', 'Luis Miguel Barros Zuleta', '149', 'Luis.Barros@eiatec.co', 'ELmbC23$', '2', '3043900424', '22'),
(132, '1010237875', '1069', 'Luisa Alejandra González Ávila', '117', 'luisa.gonzalez@eiatec.com.co', 'ELagC23$', '1', 'Cambiarlo', '22'),
(133, '830105228-5', '1069', 'Luisa Fernanda Rodríguez Cortes', '2', 'adminsistemas@eiatec.com', 'ELfrC23$', '1', '3168157552', '22'),
(134, '1013654438', '1069', 'Luisa Fernanda Rodríguez Cortes', '152', 'Luisa.Rodriguez@eiatec.co', 'ELfrC23$', '1', '3112660924', '18'),
(135, '1065648280', '1069', 'Luisana Choles Regalado', '148', 'luisana.choles@eiatec.co', 'ELcrC23$', '2', '3128161384', '22'),
(136, '53015208', '1069', 'Luz Angela Perez Cristancho', '69', 'angela.perez@eiatec.com.co', 'ELapC23$', '1', 'Cambiarlo', '22'),
(137, '1030593674', '1069', 'Luz Angélica Quimbayo Rivera', '137', 'Luz.Quimbayo@eiatec.co', 'ELaqC23$', '1', '3057002282', '10'),
(138, '1063081233', '1070', 'Luz Esther Amador Ramos', '152', 'Luz.Amador@eiatec.co', 'ELeaC23$', '3', '3504795132', '15'),
(139, '55171518', '1069', 'Madeleine Ossa Henao', '160', 'juridica@eiatec.com', 'EMohC23$', '13', '3142353798', '22'),
(140, '49755927', '1069', 'Maira Marcela Baquero Raudales', '156', 'maira.baquero@eiatec.co', 'EMmbC23$', '2', '3215606405', '22'),
(141, '1075545244', '1069', 'Maria Alejandra Huepe Mora', '117', 'Maria.Huepe@eiatec.co', 'EMahC23$', '3', '3158972676', '22'),
(142, '36310528', '1069', 'Maria Alejandra Marroquin Bermudez', '18', 'Cambiarlo', 'EMamC23$', '13', 'Cambiarlo', '22'),
(143, '1020795330', '1069', 'Maria Alejandra Montaño Velandia', '152', 'Maria.Montano@eiatec.co', 'EMamC23$', '1', '3202031098', '22'),
(144, '1095906974', '1069', 'María Cristina González Martínez', '69', 'cristina.gonzalez@eiatec.com.co', 'EMcgC23$', '1', 'Cambiarlo', '22'),
(145, '63542794', '1069', 'María Cristina Pacheco Pérez', '145', 'Maria.Pacheco@eiatec.co', 'EMcpC23$', '13', '3133913081', '9'),
(146, '57462266', '1069', 'Maria de la Paz Consuegra Gomez', '117', 'Maria.Consuegra@eiatec.co', 'EMdlC23$', '2', '3186006641', '22'),
(147, '40936868', '1069', 'Maria Francisca Barros Epiayu', '156', 'maria.barros@eiatec.co', 'EMfbC23$', '2', 'Cambiarlo', '22'),
(148, '1081417036', '1069', 'María José  Bonilla Pérez', '50', 'Maria.Bonilla@eiatec.co', 'EMj C23$', '3', '3124182622', '22'),
(149, '1075297900', '1069', 'Maria Jose Gomez Cera', '73', 'Proyectos.Mineros@eiatec.com', 'EMjgC23$', '3', 'Cambiarlo', '22'),
(150, '65758821', '1069', 'María Lucena Cano Ávila', '137', 'maria.cano@eiatec.com.co', 'EMlcC23$', '1', 'Cambiarlo', '22'),
(151, '1075688676', '1069', 'María Ximena Malagón Herrera', '168', 'ximena.malagon@eiatec.com.co', 'EMxmC23$', '1', 'Cambiarlo', '22'),
(152, '1193050222', '1069', 'Mariana Argüello Rojas', '20', 'Aux.Gestionhumana@eiatec.co', 'EMarC23$', '1', '3132462509', '22'),
(153, '1020801448', '1069', 'Mateo Andrés Jaime Garzón', '156', 'mateo.jaime@eiatec.co', 'EMajC23$', '1', '3203498222', '22'),
(154, '3181777', '1069', 'Mauricio Emilio Langebeck Mattern', '156', 'Mauricio.Langebeck@eiatec.co', 'EMelC23$', '13', 'Cambiarlo', '22'),
(155, '40851145', '1069', 'Mayuris Tatiana Iguaran Gonzalez', '156', 'maryuris.iguaran@eiatec.co', 'EMtiC23$', '2', 'Cambiarlo', '22'),
(156, '79256491', '1069', 'Miguel Antonio Leyva Ahumada', '120', 'Miguel.Leyva@eiatec.co', 'EMalC23$', '13', '3118339011', '22'),
(157, '1069725013', '1069', 'Misael Enrique Velasquez Romero', '23', 'Cambiarlo', 'EMevC23$', '13', 'Cambiarlo', '22'),
(158, '1118880474', '1069', 'Monica Elena  Caicedo Guerra', '117', 'Monica.Caicedo@eiatec.co', 'EMe C23$', '2', 'Cambiarlo', '22'),
(159, '52214470', '1069', 'Mónica Sánchez Herrera', '68', 'monica.sanchez@eiatec.com.co', 'EMshC23$', '1', 'Cambiarlo', '22'),
(160, '53038604', '1069', 'Monica Valderrama Gomez', '48', 'monica.valderrama@eiatec.com', 'EMvgC23$', '1', 'Cambiarlo', '22'),
(161, '1052383808', '1069', 'Nara Marcela Niño Martinez', '45', 'gestionsocial@eiatec.com', 'ENmnC23$', '1', 'Cambiarlo', '22'),
(162, '1100963382', '806', 'Natalia Alejandra Estévez Corredor', '77', 'natalia.estevez@eiatec.com.co', 'ENaeC23$', '13', '3143024213', '15'),
(163, '1072669030', '1069', 'Natalia Orjuela Mojica', '117', 'natalia.orjuela@eiatec.com.co', 'ENomC23$', '1', 'Cambiarlo', '22'),
(164, '52529492', '1069', 'Nayive Gutierrez Romero', '40', 'ngutierrez@eiatec.com', 'ENgrC23$', '1', '3123323847', '22'),
(165, '1014200681', '1069', 'Neeck Yeins Sánchez Forero', '68', 'Neeck.Sanchez@eiatec.co', 'ENysC23$', '1', '3212324782', '22'),
(166, '1118852833', '1069', 'Nellis Meliza Redondo Moscote', '149', 'Nellis.Redondo@eiatec.co', 'ENmrC23$', '2', '3015141963', '12'),
(167, '1047382643', '1069', 'Nelson Orlando Cruz Alvarez', '148', 'Nelson.Cruz@eiatec.co', 'ENocC23$', '7', 'Cambiarlo', '22'),
(168, '1193558551', '1069', 'Nelson Orlando Cruz Alvarez', '148', 'Nelson.Cruz@eiatec.co', 'ENocC23$', '7', 'Cambiarlo', '22'),
(169, '1020781702', '1069', 'Nicolás Beltrán Osorio', '152', 'Nicolas.Beltran@eiatec.co', 'ENboC23$', '1', '3232285472', '22'),
(170, '830105228', '26', 'Officna Riohacha', '3', 'comp@eiatec.co', 'Cambiarlo', '2', 'Cambiarlo', '22'),
(171, '1023865472', '1069', 'Omar Daza Parada', '66', 'odaza@eiatec.co', 'EOdpC23$', '1', 'Cambiarlo', '22'),
(172, '1023908865', '1069', 'Orlando Quevedo Barragán', '137', 'Orlando.Quevedo@eiatec.co', 'EOqbC23$', '1', '3123878853', '22'),
(173, '80217336', '1069', 'Oscar Ivan Garavito Quesada', '137', 'Oscar.Garavito@eiatec.co', 'EOigC23$', '1', '3002562702', '22'),
(174, '1077083376', '1069', 'Paola Alexandra Ortiz Jojoa', '47', 'HSEQ@eiatec.com', 'EPaoC23$', '1', 'Cambiarlo', '22'),
(175, '1018441278', '1069', 'Paola Andrea Niño Vargas', '156', 'Paola.Nino@eiatec.co', 'EPanC23$', '1', '3202546608', '22'),
(176, '1032447224', '6', 'Paula Alejandra Salas Peña', '126', 'Paula.Salas@eiatec.co', 'EPasC23$', '13', '3214793980', '9'),
(177, '1016057671', '624', 'Paula Marcela Vásquez Tapias', '117', 'Paula.Vasquez@eiatec.co', 'EPmvC23$', '13', '3102645265', '10'),
(178, '830105228', '1069', 'Cambiarlo', '171', 'pgrd@eiatec.co', 'EPdgC23$', '13', 'Cambiarlo', '22'),
(179, '830105228', '1069', 'Cambiarlo', '171', 'projeceiatec@eiatec.co', 'Cambiarlo', '13', 'Cambiarlo', '22'),
(180, '1118842428', '26', 'Randy José Añez Gómez', '124', 'Randy.Anez@eiatec.co', 'ERjaC23$', '5', '3173271716', '22'),
(181, '9398716', '1069', 'Reinaldo Javier Galan Nossa', '82', 'Reinaldo.Galan@eiatec.co', 'ERjgC23$', '13', 'Cambiarlo', '22'),
(182, '7730154', '20', 'Reinel Bustos Puentes', '81', 'reinel.bustos@eiatec.co', 'ERbpC23$', '13', '3102242847', '19'),
(183, '1033758578', '1069', 'Ricardo Cárdenas Gutiérrez', '57', 'Ricardo.Cardenas@eiatec.co', 'ERcgC23$', '1', 'Cambiarlo', '22'),
(184, '5901492', '1069', 'Roberto Carlos Medina Teran', '81', 'Cambiarlo', 'ERcmC23$', '13', 'Cambiarlo', '22'),
(185, '19709343', '138', 'Robinson Junior García Lara', '147', 'Robinson.Garcia@eiatec.co', 'ERjgC23$', '2', '3114029332', '22'),
(186, '1012355676', '6', 'Ruben Dario Ramirez Motta', '49', 'adminsistemas@eiatec.com', 'ERdrC23$', '1', '3168157552', '22'),
(187, '1012355676', '1069', 'Rubén Darío Ramírez Motta', '42', 'sistemas@eiatec.co', 'ERdrC23$', '1', '3168157552', '22'),
(188, '53031393', '6', 'Ruth Alejandra Pardo Martínez', '120', 'Alejandra.Pardo@eiatec.co', 'ERapC23$', '1', '3138244475', '22'),
(189, '1066732565', '1069', 'Ruth Ester Terán Torres', '22', 'Ruth.Teran@eiatec.co', 'ERetC23$', '1', '3116921442', '6'),
(190, '41673283', '1069', 'Ruth Myriam Mora Hernandez', '14', 'gestor.compras@eiatec.com', 'ERmmC23$', '1', '3212172884', '22'),
(191, '1026277362', '1069', 'Sandra Milena Perez Pico', '33', 'contabilidad@eiatec.com', 'ESmpC23$', '1', '3106972343', '22'),
(192, '1019085082', '1069', 'Santiago Carvajal Hernández', '117', 'santiago.carvajal@eiatec.com.co', 'ESchC23$', '1', 'Cambiarlo', '9'),
(193, '1003486645', '1069', 'Santiago Guerrero Benavides', '15', 'aux.contabilidad@eiatec.com', 'ESgbC23$', '1', '3227272432', '22'),
(194, '79643677', '1069', 'Santiago Valderrama Chaves', '152', 'Santiago.Valderrama@eiatec.co', 'ESvcC23$', '1', '3005729512', '22'),
(195, '1010209156', '1069', 'Sara Mayerly Amado Ariza', '40', 'samado@eiatec.com', 'ESmaC23$', '1', '3124394344', '22'),
(196, '1007184469', '1069', 'Sebastian Felipe Hernandez Gutierrez', '12', 'Sebastian.Hernandez@eiatec.co', 'ESfhC23$', '1', '3005141470', '22'),
(197, '1124054083', '1069', 'Sergio Andrés Tapias Díaz', '117', 'sergio.tapias@eiatec.co', 'ESatC23$', '2', '3012325556', '22'),
(198, '830105228', '1069', 'Cambiarlo', '171', 'sig@eiatec.co', 'ESesC23$', '13', 'Cambiarlo', '22'),
(199, '1124865195', '565', 'Sindy Tatiana Portilla Alvarado', '137', 'Sindy.Portilla@eiatec.co', 'EStpC23$', '13', '3208167066', '1'),
(200, '1122813108', '1069', 'Soleida Maria Pushaina Ipuana', '156', 'soleida.pushaina@eiatec.co', 'ESmpC23$', '2', '3046790655', '22'),
(201, '1012456080', '1069', 'Steven Ricardo Garzón Burgos', '32', 'compras@eiatec.com', 'ESrgC23$', '1', '3134303319', '22'),
(202, '52519664', '1069', 'Sulma Marsela Baquero Alegre', '69', 'sulma.baquero@eiatec.com.co', 'ESmbC23$', '1', 'Cambiarlo', '22'),
(203, '830105228', '1069', 'Cambiarlo', '171', 'usuario@eiatec.co', 'Cambiarlo', '13', 'Cambiarlo', '22'),
(204, '1000943310', '1069', 'Valentina Medina Bejarano', '65', 'valentina.medina@eiatec.com.co', 'EVmbC23$', '1', 'Cambiarlo', '22'),
(205, '1064722200', '1069', 'Vannesa Royero Rivera', '148', 'Vannesa.Royero@eiatec.co', 'EVrrC23$', '2', 'Cambiarlo', '22'),
(206, '1031129537', '1069', 'William Fernando Acosta Pedraza', '156', 'william.acosta@eiatec.co', 'EWfaC23$', '2', '3156162798', '22'),
(207, '1110561527', '1069', 'Willy Fernando Reyes Torres', '137', 'Willy.Reyes@eiatec.co', 'EWfrC23$', '13', '3133122998', '17'),
(208, '1012443892', '1069', 'Wilson Ramírez Pineda', '37', 'gestionhumana@eiatec.com', 'EWrpC23$', '1', '3123121908', '22'),
(209, '1032475912', '1069', 'Wilson Ramírez Pineda', '38', 'gestionjuridica@eiatec.co', 'EWrpC23$', '13', '3123121908', '22'),
(210, '7184973', '1069', 'Winston Wilches Alvarez', '120', 'Winston.Wilches@eiatec.co', 'EWwaC23$', '1', '3233937946', '22'),
(211, '1118546280', '1069', 'Yeimy Viviana Tumay Hernández', '149', 'Yeimy.Tumay@eiatec.co', 'EYvtC23$', '2', '3218268948', '22'),
(212, '1081182968', '1069', 'Yenny Lorena Borrero Cleves', '9', 'tesoreria@eiatec.com', 'EYlbC23$', '3', '3134600347', '22'),
(213, '1121823900', '1069', 'Yeny Paola Urrego Naranjo', '12', 'Yeny.Urrego@eiatec.co', 'EYpuC23$', '1', '3219621337', '22'),
(214, '1122407383', '1069', 'Yerlis Margarita  Otero Guerra', '156', 'yerlis.otero@eiatec.co', 'EYm C23$', '2', '3003736959', '22'),
(215, '35250800', '1020', 'Yina Esperanza Roldán Romero', '156', 'Yina.Roldan@eiatec.co', 'EYerC23$', '4', '3223734679', '1'),
(216, '1065597188', '1069', 'Yisel Carolina Castro Escobar', '149', 'Yisel.Castro@eiatec.co', 'EYccC23$', '2', '3138770452', '22'),
(217, '1000729484', '1069', 'Yudi Mariana Garzon Burgos', '70', 'fvelectronica@eiatec.com', 'EYmgC23$', '1', '3159282522', '22'),
(218, '28551028', '1069', 'Yudy Andrea Lopez Sua', '59', 'ylopez@eiatec.com', 'EYalC23$', '13', 'Cambiarlo', '22'),
(219, '1098612958', '1069', 'Yudy Mairely Montenegro Muñoz', '156', 'Yudy.Montenegro@eiatec.co', 'EYmmC23$', '5', '3202736015', '22'),
(220, '830105228-5', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '1', '3164990470', '22'),
(221, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '3', 'Cambiarlo', '22'),
(222, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '2', 'Cambiarlo', '22'),
(223, '830105228-5', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '1', 'Cambiarlo', '22'),
(224, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '1', 'Cambiarlo', '22'),
(225, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '3', 'Cambiarlo', '22'),
(226, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '2', 'Cambiarlo', '22'),
(227, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '11', 'Cambiarlo', '22'),
(228, 'Cambiarlo', '1069', 'Cambiarlo', '171', 'Cambiarlo', 'Cambiarlo', '2', 'Cambiarlo', '22'),
(234, '1032495837', '999', 'lizet', '110', 'lkahkjlashdf@gmail.com', 'qwertyuio', '11', '3224345467', '13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `ID_ubicacion` varchar(50) NOT NULL,
  `Ubicacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`ID_ubicacion`, `Ubicacion`) VALUES
('1', 'Bogotá'),
('10', 'Puente Nacional'),
('11', 'Tunja'),
('12', 'Villavicencio'),
('13', 'Cambiarlo'),
('2', 'Riohacha'),
('3', 'Neiva'),
('4', 'Vencia'),
('5', 'Valledupar'),
('6', 'Ibague'),
('7', 'Santa Marta'),
('8', 'Uribia'),
('9', 'Sogamoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'daniel.barrueto@eiatec.co', NULL, '$2y$12$WpS3TEiwbEqRO7XAXba1E.wmyOlInBGcCpnvwtxYeF7hi8UtapjR6', 0, NULL, '2024-05-29 21:48:56', '2024-05-29 21:48:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_cargo`);

--
-- Indices de la tabla `coordinadores`
--
ALTER TABLE `coordinadores`
  ADD PRIMARY KEY (`ID_coordinador`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`ID_direccion`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`ID_equipo`),
  ADD KEY `FK_Equipos_Direccion` (`ID_direccion`),
  ADD KEY `FK_Equipos_Licencia` (`ID_licencia`),
  ADD KEY `FK_Equipos_Marca` (`ID_marca`),
  ADD KEY `FK_Equipos_Oficinas` (`ID_oficina`),
  ADD KEY `FK_Equipos_Tipo` (`ID_tipo`),
  ADD KEY `FK_Equipos_Trabajadores` (`ID_trabajador`),
  ADD KEY `FK_Equipos_Ubicacion` (`ID_ubicacion`);

--
-- Indices de la tabla `expedicion`
--
ALTER TABLE `expedicion`
  ADD PRIMARY KEY (`ID_expedicion`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`ID_historico`),
  ADD KEY `FK_Historico_Equipos` (`ID_equipo`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD PRIMARY KEY (`ID_licencia`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID_marca`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`ID_oficina`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`ID_tipo`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`ID_trabajador`),
  ADD KEY `FK_Trabajadores_Cargo` (`ID_cargo`),
  ADD KEY `FK_Trabajadores_Coordinadores` (`ID_coordinacion`),
  ADD KEY `FK_Trabajadores_Expedicion` (`ID_expedicion`),
  ADD KEY `FK_Trabajadores_Ubicacion` (`ID_ubicacion`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`ID_ubicacion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `ID_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `ID_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `ID_trabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `FK_Equipos_Direccion` FOREIGN KEY (`ID_direccion`) REFERENCES `direccion` (`ID_direccion`),
  ADD CONSTRAINT `FK_Equipos_Licencia` FOREIGN KEY (`ID_licencia`) REFERENCES `licencia` (`ID_licencia`),
  ADD CONSTRAINT `FK_Equipos_Marca` FOREIGN KEY (`ID_marca`) REFERENCES `marca` (`ID_marca`),
  ADD CONSTRAINT `FK_Equipos_Oficinas` FOREIGN KEY (`ID_oficina`) REFERENCES `oficinas` (`ID_oficina`),
  ADD CONSTRAINT `FK_Equipos_Tipo` FOREIGN KEY (`ID_tipo`) REFERENCES `tipo` (`ID_tipo`),
  ADD CONSTRAINT `FK_Equipos_Trabajadores` FOREIGN KEY (`ID_trabajador`) REFERENCES `trabajadores` (`ID_trabajador`),
  ADD CONSTRAINT `FK_Equipos_Ubicacion` FOREIGN KEY (`ID_ubicacion`) REFERENCES `ubicacion` (`ID_ubicacion`);

--
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `FK_Historico_Equipos` FOREIGN KEY (`ID_equipo`) REFERENCES `equipos` (`ID_equipo`);

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `FK_Trabajadores_Cargo` FOREIGN KEY (`ID_cargo`) REFERENCES `cargo` (`ID_cargo`),
  ADD CONSTRAINT `FK_Trabajadores_Coordinadores` FOREIGN KEY (`ID_coordinacion`) REFERENCES `coordinadores` (`ID_coordinador`),
  ADD CONSTRAINT `FK_Trabajadores_Expedicion` FOREIGN KEY (`ID_expedicion`) REFERENCES `expedicion` (`ID_expedicion`),
  ADD CONSTRAINT `FK_Trabajadores_Ubicacion` FOREIGN KEY (`ID_ubicacion`) REFERENCES `ubicacion` (`ID_ubicacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
