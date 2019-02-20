-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2018 at 10:18 AM
-- Server version: 5.5.53-0+deb8u1
-- PHP Version: 5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reportes`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
`id_area` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `idpiso` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Stand-in structure for view `cant_reportes_mensuales`
--
CREATE TABLE IF NOT EXISTS `cant_reportes_mensuales` (
`cantidad` bigint(21)
,`ano` varchar(4)
,`mes` varchar(2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cant_reportes_por_area`
--
CREATE TABLE IF NOT EXISTS `cant_reportes_por_area` (
`cantidad` bigint(21)
,`ano` varchar(4)
,`area_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cant_reportes_por_piso`
--
CREATE TABLE IF NOT EXISTS `cant_reportes_por_piso` (
`cantidad` bigint(21)
,`ano` varchar(4)
,`piso_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cant_reportes_por_tecnico`
--
CREATE TABLE IF NOT EXISTS `cant_reportes_por_tecnico` (
`cantidad` bigint(21)
,`ano` varchar(4)
,`tecnico_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cant_reportes_por_tipo_problema`
--
CREATE TABLE IF NOT EXISTS `cant_reportes_por_tipo_problema` (
`cantidad` bigint(21)
,`ano` varchar(4)
,`tipo_problema` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `estadistica_solicitudes`
--

CREATE TABLE IF NOT EXISTS `estadistica_solicitudes` (
`id_estadistica_solicitudes` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_estado_solicitud` int(11) NOT NULL,
  `id_tecnico` int(11) NOT NULL,
  `id_tipo_problema` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estado_solicitud`
--

CREATE TABLE IF NOT EXISTS `estado_solicitud` (
`id_estado_solicitud` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `piso`
--

CREATE TABLE IF NOT EXISTS `piso` (
`id_piso` int(11) NOT NULL,
  `piso` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `piso`
--

INSERT INTO `piso` (`id_piso`, `piso`) VALUES
(1, 'Piso 1'),
(2, 'Piso 2'),
(3, 'Piso 3'),
(4, 'Piso 4'),
(5, 'Piso 5'),
(6, 'Piso 6'),
(7, 'Piso 7'),
(8, 'Piso 8'),
(9, 'Piso 9');

-- --------------------------------------------------------

--
-- Table structure for table `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
`id_solicitud` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `area_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `tecnico_id` int(11) DEFAULT NULL,
  `tipo_problema_id` int(11) DEFAULT NULL,
  `piso_id` int(11) NOT NULL,
  `fecha_realizado` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=530 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tecnico`
--

CREATE TABLE IF NOT EXISTS `tecnico` (
`id_tecnico` int(11) NOT NULL,
  `tecnico` varchar(255) NOT NULL,
  `estado_tecnico` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_problema`
--

CREATE TABLE IF NOT EXISTS `tipo_problema` (
`id_tipo_problema` int(11) NOT NULL,
  `tipo_problema` varchar(255) NOT NULL,
  `descripcionTP` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_problema`
--

INSERT INTO `tipo_problema` (`id_tipo_problema`, `tipo_problema`, `descripcionTP`) VALUES
(1, 'Hardware', 'Fuente Rota'),
(4, 'Software', 'Actualización del Navegador'),
(10, 'Software', 'Configurar Perfil de Usuario'),
(6, 'Hardware', 'Placa Rota'),
(7, 'Hardware', 'Disco Duro Roto'),
(8, 'Hardware', 'Memoria Rota'),
(9, 'Software', 'Reinstalación del Sistema Operativo'),
(11, 'Software', 'Instalación de Impresora'),
(12, 'Software', 'Instalación de Scanner'),
(13, 'Software', 'Reinstalación del Office'),
(14, 'Software', 'Problemas de Conexión'),
(15, 'Hardware', 'Backup Roto'),
(16, 'Hardware', 'Memoria Sucia'),
(17, 'Hardware', 'Activar Punto de Red'),
(18, 'Software', 'Cambio de Contraseña'),
(19, 'Software', 'Instalación de Antivirus'),
(21, 'Software', 'Problemas con la Configuración del Correo'),
(22, 'Hardware', 'Sobrecalentamiento del Microprocesador'),
(25, 'Hardware', 'Puerto PS/2 roto'),
(29, 'Software', 'NO PROCEDE'),
(30, 'Hardware', 'Cambiar baterias de UPS'),
(39, 'Hardware', 'Swich Roto'),
(41, 'Hardware', 'Mouse roto'),
(42, 'Hardware', 'Cable VGA Roto'),
(43, 'Hardware', 'Punto de Red'),
(44, 'Hardware', 'Cambio de Toner'),

-- --------------------------------------------------------

--
-- Structure for view `cant_reportes_mensuales`
--
DROP TABLE IF EXISTS `cant_reportes_mensuales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cant_reportes_mensuales` AS select count(0) AS `cantidad`,date_format(`solicitud`.`fecha`,'%Y') AS `ano`,date_format(`solicitud`.`fecha`,'%m') AS `mes` from `solicitud` group by date_format(`solicitud`.`fecha`,'%Y'),date_format(`solicitud`.`fecha`,'%m');

-- --------------------------------------------------------

--
-- Structure for view `cant_reportes_por_area`
--
DROP TABLE IF EXISTS `cant_reportes_por_area`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cant_reportes_por_area` AS select count(0) AS `cantidad`,date_format(`solicitud`.`fecha`,'%Y') AS `ano`,`solicitud`.`area_id` AS `area_id` from `solicitud` group by date_format(`solicitud`.`fecha`,'%Y'),`solicitud`.`area_id`;

-- --------------------------------------------------------

--
-- Structure for view `cant_reportes_por_piso`
--
DROP TABLE IF EXISTS `cant_reportes_por_piso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cant_reportes_por_piso` AS select count(0) AS `cantidad`,date_format(`solicitud`.`fecha`,'%Y') AS `ano`,`solicitud`.`piso_id` AS `piso_id` from `solicitud` group by date_format(`solicitud`.`fecha`,'%Y'),`solicitud`.`piso_id`;

-- --------------------------------------------------------

--
-- Structure for view `cant_reportes_por_tecnico`
--
DROP TABLE IF EXISTS `cant_reportes_por_tecnico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cant_reportes_por_tecnico` AS select count(0) AS `cantidad`,date_format(`solicitud`.`fecha`,'%Y') AS `ano`,`solicitud`.`tecnico_id` AS `tecnico_id` from `solicitud` group by date_format(`solicitud`.`fecha`,'%Y'),`solicitud`.`tecnico_id`;

-- --------------------------------------------------------

--
-- Structure for view `cant_reportes_por_tipo_problema`
--
DROP TABLE IF EXISTS `cant_reportes_por_tipo_problema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cant_reportes_por_tipo_problema` AS select count(0) AS `cantidad`,date_format(`solicitud`.`fecha`,'%Y') AS `ano`,`tipo_problema`.`tipo_problema` AS `tipo_problema` from (`solicitud` join `tipo_problema` on((`solicitud`.`tipo_problema_id` = `tipo_problema`.`id_tipo_problema`))) group by date_format(`solicitud`.`fecha`,'%Y'),`tipo_problema`.`tipo_problema`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `estadistica_solicitudes`
--
ALTER TABLE `estadistica_solicitudes`
 ADD PRIMARY KEY (`id_estadistica_solicitudes`);

--
-- Indexes for table `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
 ADD PRIMARY KEY (`id_estado_solicitud`);

--
-- Indexes for table `piso`
--
ALTER TABLE `piso`
 ADD PRIMARY KEY (`id_piso`);

--
-- Indexes for table `solicitud`
--
ALTER TABLE `solicitud`
 ADD PRIMARY KEY (`id_solicitud`);

--
-- Indexes for table `tecnico`
--
ALTER TABLE `tecnico`
 ADD PRIMARY KEY (`id_tecnico`);

--
-- Indexes for table `tipo_problema`
--
ALTER TABLE `tipo_problema`
 ADD PRIMARY KEY (`id_tipo_problema`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `estadistica_solicitudes`
--
ALTER TABLE `estadistica_solicitudes`
MODIFY `id_estadistica_solicitudes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
MODIFY `id_estado_solicitud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piso`
--
ALTER TABLE `piso`
MODIFY `id_piso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `solicitud`
--
ALTER TABLE `solicitud`
MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `tecnico`
--
ALTER TABLE `tecnico`
MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tipo_problema`
--
ALTER TABLE `tipo_problema`
MODIFY `id_tipo_problema` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
