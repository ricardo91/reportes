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

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id_area`, `area`, `idpiso`) VALUES
(1, 'Departamento de Informática', 2),
(2, 'Departamento de Informática - Nodo de Comunicaciones', 2),
(3, 'Departamento de Inteligencia Comercial', 5),
(4, 'Departamento de Organización, Planificación e Información', 2),
(5, 'Dirección Política Económica con Europa', 6),
(6, 'Dirección de Control de la Inversión Extranjera', 4),
(7, 'Dirección de Cuadros', 4),
(8, 'Dirección de Exportaciones', 8),
(9, 'Dirección de Finanzas y Precios', 6),
(10, 'Dirección de Gestión Empresarial', 6),
(11, 'Dirección de Importaciones', 8),
(12, 'Dirección de Inspección', 4),
(13, 'Dirección de Negocios con Capital Extranjero', 4),
(14, 'Dirección de Organismos Económicos Internacionales', 7),
(15, 'Dirección de Organización y Sistemas', 2),
(17, 'Dirección de Planificación y Análisis de Estadística', 6),
(18, 'Dirección de Regulaciones Técnicas y Calidad', 8),
(19, 'Dirección de Transporte y Seguro', 8),
(20, 'Dirección General de Colaboración', 5),
(21, 'Dirección General de Comercio Exterior', 8),
(22, 'Dirección General de Economía', 6),
(23, 'Dirección General de Inversión Extranjera', 4),
(24, 'Dirección Jurídica', 8),
(25, 'Dirección Política Económica América de Norte', 7),
(26, 'Dirección Política Económica Asia y Oceanía', 6),
(27, 'Dirección Política Económica de América Latina y el Caribe', 7),
(28, 'INCOMEX', 1),
(29, 'OCIC Ministro', 9),
(30, 'Oficina del Ministro', 9),
(31, 'Unidad de Servicios Generales - Almacén', 5),
(32, 'Unidad de Servicios Generales - Departamento de Administración', 5),
(33, 'Unidad de Servicios Generales - Departamento de Finanzas y Contabilidad', 5),
(34, 'Unidad de Servicios Generales - Departamento de Personal', 5),
(35, 'Unidad de Servicios Generales - Departamento de Trámites y Atención a Delegaciones', 5),
(36, 'Viceministro 1ro', 9),
(37, 'Departamento Independiente de  Venezuela', 7),
(38, 'Puesto de Direccion', 1),
(39, 'Departamento de Colaboracion que Cuba Ofrece', 5),
(40, 'Departamento de Colaboracion que Cuba Recibe', 5),
(41, 'Departamento Independiente de Recursos Humanos', 6),
(42, 'Dirección Política Económica con África y Medio Oriente', 7),
(43, 'Viceministerio de Política Comercial', 7),
(44, 'Departamento Independiente de Auditoría y Supervisión', 8),
(45, 'Viceministro Venezuela', 9),
(46, 'Departamento Independiente de Protocolo', 9),
(47, 'Departamento de Nomenclatura', 8),
(48, 'Archivo Central', 2),
(49, 'Departamento Independiente para la Defensa, Seguridad y Protección', 1),
(50, 'Procuba', 1),
(51, 'Unidad de Servicios Generales', 5);

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

--
-- Dumping data for table `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `usuario`, `area_id`, `nombre`, `fecha`, `descripcion`, `estado`, `tecnico_id`, `tipo_problema_id`, `piso_id`, `fecha_realizado`) VALUES
(15, 'jessie.coto', 14, 'Jessie Coto', '2017-07-05', 'En dos ocasiones me han instalado el Office y pasados dos días vuelvo a tener problemas, por lo cual estoy paralizada en el trabajo. No me abre el Word. \r\nAsimismo, necesito que se revise el escáner que me  instalaron y tiene dificultades también. \r\n', 1, 3, 13, 7, '2017-07-06'),
(14, 'yordanys.reyes', 12, 'Yordanys Reyes Matos', '2017-07-05', 'La secretaria de la dirección de Inspección no tiene acceso a su máquina.', 1, 1, 14, 4, '2017-07-06'),
(13, 'yidamaray', 1, 'Yidamaray Speck', '2017-07-04', 'El Viceministro Roberto Lopez tiene problemas con el correo', 1, 2, 21, 2, '2017-07-04'),
(12, 'aymee.garcia', 19, 'Aymee Garica', '2017-07-04', 'Activar Punto de Red', 1, 12, 17, 8, '2017-07-04'),
(7, 'yodelsis.sama', 47, 'yodelsis sama', '2017-07-03', 'no se le puede pasar reporte a la empresa avisandole sdel estado de su solicitud,por lo que no podemos trabajar con efectividad.', 1, 8, 20, 8, '2017-07-03'),
(8, 'aymee.garcia', 19, 'Aymee García', '2017-07-04', 'Crear usuario', 1, 2, 10, 8, '2017-07-04'),
(9, 'yidamaray', 1, 'Yidamaray Speck', '2017-07-04', 'prueba', 1, 2, 1, 2, '2017-07-04'),
(10, 'luis.rodriguez', 19, 'luis rodriguez', '2017-07-04', 'RECIBÍ VARIOS CORREOS EN LA MAÑANA AL ABRIR LA PC. LA PC SE CERRÓ Y CUANDO LA ABRÍ DE NUEVO SE HABÍAN BORRADO . AHORA NO TENGO NINGUNA ENTRADA DESDE AYER EN LA TARDE', 1, 3, 13, 8, '2017-07-04'),
(11, 'luis.rodriguez', 19, 'luis rodriguez', '2017-07-04', 'No estoy recibiendo correos desde ayer.', 1, 3, 13, 8, '2017-07-04'),
(16, 'eliza.carta', 35, 'Elisa Maria cartas Cruz', '2017-07-05', 'Se apaga con frecuencia la máquina (mas de 10 veces al dia)', 1, 11, 22, 5, '2017-07-05'),
(17, 'yidamaray', 1, 'Yidamaray Speck', '2017-07-06', 'Configurar perfil temporal a Angela Vila(6to piso) en la maquina de la secretaria', 1, 11, 10, 2, '2017-07-06'),
(18, 'Dasya.Diaz', 5, 'Dasya Dìaz Daffòs', '2017-07-06', 'ROTA!!!, NO ENCIENDE.\r\nREPORTADA DESDE EL DIA 20 DE JUNIO.\r\n\r\nEsperamos ser atendidas con la prontitud de "siempre".', 1, 9, 23, 6, '2017-07-07'),
(19, 'jorgefc', 13, 'Jorge Fernández Crespo', '2017-07-07', 'No puedo acceder a la computadora. Cuando escribo la contraseña me devuelve el siguiente mensaje:\r\n"Error en el servicio. Servicio de perfil de usuario al iniciar sesión. No se puede cargar el perfil de usuario"\r\nRegresa a la pantalla inicial y todo se repite de nuevo.', 1, 3, 10, 4, '2017-07-10'),
(20, 'olivia.gomez', 6, 'Olivia Gómez Sierra', '2017-07-07', 'Necesito que me instalen el Pandion', 1, 12, 24, 4, '2017-07-07'),
(21, 'nadia', 45, 'Nadia Macias', '2017-07-07', 'Impresora Kyocera no responde. Volver a instalar y configurar en la PC de nadia, Maite y Viceministro Carricarte.', 1, 11, 14, 9, '2017-07-07'),
(22, 'carlos.jorge@mincex.cu', 30, 'carlos jorge', '2017-07-07', 'En el día de ayer por las intensas lluvias y las descargas eléctricas mi computadora se vio afectada. Favor pasar a revisar.', 1, 2, 1, 9, '2017-07-07'),
(23, 'PUESTO DE MANDO', 1, 'NORBERTO DIAZ FRANCO', '2017-07-10', 'NO TIENEN CORREO NI INTERNET LAS 2 MÁQUINAS UBICADAS EN LA OFICINA  PRINCIPAL DEL PUESTO DE DIRECCIÓN ', 1, 4, 1, 2, '2017-07-13'),
(24, 'ailyn.rodriguez', 47, 'Ailyn Rodriguez Hidalgo', '2017-07-11', 'No puede entrar a su  equipo por su dirección de usuario y la contraseña no la reconoce. Por lo anto el servisio de eventuales y nomenclatura esta detenido en su equipo.\r\nPor otra parte requiere que se  le instale el quemador que fue asignado a su equipo para poder quemar los discos de las nomenclaturas.\r\n', 1, 3, 14, 8, '2017-07-13'),
(25, 'yodelsis.sama', 47, 'Yodelsis Sama Leyva', '2017-07-11', 'Necesita que se le instale un quemador adquirido para quemar los discos de las nomenclaturas. ', 1, 3, 24, 8, '2017-07-13'),
(26, 'rafaela.morales', 6, 'Rafaela Morales', '2017-07-11', 'Dice que el proxy rechaza las conexiones.', 1, 3, 14, 4, '2017-07-12'),
(27, 'maria.aragon', 10, 'Maria Aragon', '2017-07-11', 'Problema con el SO de la PC, pantalla negra, no carga el SO.', 1, 11, 9, 6, '2017-07-13'),
(28, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-07-11', 'A nombre de la Dirección solicito los siguientes servicios:\r\n1. PC Secreta de Yamila Martinez: revisar,  no reconoce el sistema\r\n2. PC de Dasya Diaz: revisart, no enciende\r\n3. PC de Yanet La O: , revisar, a veces se apaga\r\n4. Impresora conectada a la PC de la secretaria:  No reacciona en tiempo: sueño profundo.\r\n5. Conectar todos las PC a las impresoras existentes en la dirección\r\n', 1, 11, 11, 6, '2017-07-13'),
(29, 'carmen.serpa', 29, 'carmen serpa cabrera', '2017-07-13', 'favor la maquina no funciona se queda dormida desde ayer la tengo apaga y encienda y al final no me quiere funcionar', 1, 11, 25, 9, '2017-07-13'),
(30, 'conchitab', 11, 'Concepcion Bueno', '2017-07-13', 'No puede entrar a la máquina ', 1, 3, 14, 8, '2017-07-13'),
(31, 'janet.acosta', 39, 'janet acosta', '2017-07-13', 'La Especialista  Maria Teresa Iglesias   que trabaja en mi oficina  y en mi direccion cambió la contraseña  y no puede acceder ni al correo ni a internet,  nuestra oficina es  la puerta No.508 B, gracias.', 1, 2, 18, 5, '2017-07-17'),
(32, 'Yuely Sardiñas Rodriguez ', 41, 'Yuely Sardiñas Rodriguez ', '2017-07-13', 'Configuración de perfil-nuevo usuario\r\nyuely.sardinas', 1, 11, 10, 6, '2017-07-14'),
(33, 'carmen.zaldivar', 17, 'Carmen Zaldivar', '2017-07-14', 'La PC se me esta apagando', 1, 2, 22, 6, '2017-07-17'),
(34, 'rafaela.morales@mincex.cu', 6, 'Rafaela Morales Gutiérrez', '2017-07-17', 'no puede acceder a Internet\r\nlo necesita URGENTE\r\nPOR FAVOR\r\nGRACIAS', 1, 3, 18, 4, '2017-07-18'),
(35, 'despacho@mincex.cu', 30, 'solanch fundora', '2017-07-17', 'Estimados compañeros:\r\nEstamos presentando problemas en el Aviladoc, nos niega el acceso a la hora de introducir las respectivas contraseñas.', 1, 8, 24, 9, '2017-07-17'),
(36, 'sarita.sol', 44, 'Sara Maria Labrada', '2017-07-18', 'No tiene conexión.', 1, 3, 18, 8, '2017-07-18'),
(37, 'yidamaray', 1, 'Yidamaray Speck', '2017-07-18', 'El Viceministro Primero tiene Problemas con el correo', 1, 2, 18, 2, '2017-07-18'),
(38, 'enrique.baceiro', 32, 'Enrique Baceiro Zayas', '2017-07-19', 'La PC del subdirector de la USG desde ayer está arrancando con problemas, exige presionar F1 o entrar por algún motivo al setup de la máquina; además por algún motivo indeseado al abrir Windows se abren aplicaciones que molestan (la lupa, el teclado, ...).\r\nsaludos', 1, 2, 26, 5, '2017-07-24'),
(39, 'Yidamaray', 1, 'yidamaray', '2017-07-19', 'Patricia Ponte de la Direccion de Europa 6to piso  no le enciende la maquina', 1, 2, 15, 2, '2017-07-19'),
(40, 'Yidamaray', 1, 'yidamaray', '2017-07-19', 'Teresa Tarra, Direccion de Cuadros 4to piso no puede acceder a Internet', 1, 2, 18, 2, '2017-07-19'),
(41, 'Yidamaray', 1, 'yidamaray', '2017-07-19', 'Maquina secreta de la direccion de Cuadros no accede al Sistema Operativo', 1, 11, 9, 2, '2017-07-19'),
(42, 'isabel.azcuy', 11, 'Isabel Azcuy', '2017-07-20', 'No se puede imprimir', 1, 3, 11, 8, '2017-07-21'),
(43, 'isabel.azcuy', 11, 'Isabel Azcuy', '2017-07-20', 'Después del arreglo de la computadora no es posible imprimir. Favor se necesita que vengan a solucionar esta dificultad, porque la tarea quedó incompleta.', 1, 3, 11, 8, '2017-07-21'),
(44, 'yidamaray', 1, 'Yidamaray Speck', '2017-07-21', 'EL jefe de departamento de Administracion estuvo realizando cambios en la configuración del Setup de la maquina del Subdirector de la USG Enrique Baceiro', 1, 9, 1, 2, '2017-07-21'),
(45, 'rafaela.morales', 6, 'Rafaela Morales', '2017-07-21', 'Dificultad para el funcionamiento de la base de datos de las AEI, debo actualizar 4 AEI liquidadas.\r\nSaludos,', 1, 8, 24, 4, '2017-08-23'),
(46, 'ania.fernandez', 24, 'Ania Fernandez Carabia', '2017-07-21', 'No tengo acceso al Programa del AVILA.', 1, 8, 24, 8, '2017-07-24'),
(47, 'maria.arteaga', 33, 'Maria Emilia', '2017-07-24', 'No me enciende la maquina', 1, 2, 16, 5, '2017-07-24'),
(48, 'especialista.proteccion', 49, 'Daigmar', '2017-07-28', 'Problema con libreta global, reinstalar cliente de correo.', 1, 2, 27, 1, '2017-08-07'),
(49, 'reynaldo.buides', 32, 'Reynaldo Hernandez Buides', '2017-07-31', 'La máquina está presentando problemas, (no enciende).', 1, 1, 9, 5, '2017-08-01'),
(50, 'nadia', 45, 'Nadia Macias', '2017-07-31', 'Compartir la impresora Kyocera conectada a la máquina de la Sec. del VMP para poder hacer uso de ella, no tengo donde escanear ni imprimir documentos grandes', 1, 2, 11, 9, '2017-07-31'),
(51, 'julia.suarez', 46, 'Julia Suarez', '2017-07-31', 'Problema para entrar a la máquina', 1, 3, 18, 9, '2017-08-01'),
(52, 'lidia.jimenez', 12, 'Lidia Jimenez Figueredo', '2017-07-31', 'cambio de contraseña PC Yadira Grave de Peralta Balsalobre', 1, 3, 18, 4, '2017-08-01'),
(53, 'lidia.jimenez', 12, 'Lidia Jimenez Figueredo', '2017-07-31', 'la PC de Yadira Grave de Peralta, vencio la contraseña', 1, 3, 18, 4, '2017-08-01'),
(54, 'jesusbv', 14, 'Jesús Noel Boucourt Vega', '2017-07-31', 'La navegación de la PC es extremadamente lenta. ', 1, 3, 14, 7, '2017-08-02'),
(55, 'ernesto.carvajal', 8, 'Ernesto Carvajal Moreno', '2017-08-01', 'Creación de perfil de usuario', 1, 3, 10, 8, '2017-08-07'),
(56, 'aurora.garcía', 10, 'Aurora García Borrego', '2017-08-02', 'Crear un usuario nuevo de acceso internet y al correo internacional, ', 1, 2, 10, 6, '2017-08-03'),
(57, 'yasunaris.crespo', 24, 'Yasunaris Navarrete Crespo', '2017-08-02', 'usuario nuevo creado', 1, 3, 10, 8, '2017-08-23'),
(58, 'juaquin.cabada', 47, 'Julio Joaquin,', '2017-08-02', 'Se necesita tener acceso de nueva contraseña para poder trabajar con la maquina de  lis.marrero, porque la contraseña no la tenemos y la cra. esta de licencia de maternidad.\r\nSldos.', 1, 3, 18, 8, '2017-08-07'),
(59, 'aurora.garcia', 10, 'Aurora Garcia Borrego', '2017-08-03', 'Configurar Nuevo Perfil de Usuario', 1, 2, 10, 6, '2017-08-03'),
(60, 'carlos.ifill', 49, 'Carlos Ifill', '2017-08-03', 'El Kaspersky no está actualizando', 1, 11, 28, 1, '2017-08-10'),
(61, 'carlovis.gamez', 10, 'Carlovis Gámez', '2017-08-03', 'solicito revisar 4 pc y monitor para defectar', 1, 11, 23, 6, '2017-09-25'),
(62, 'elba.torres', 5, 'Elba Torres Escobar', '2017-08-04', 'Necesidad de revisar urgente la PC, se bloquea constantemente y flashea el monitor. Se enciende y apaga sola\r\n', 1, 2, 23, 6, '2017-08-08'),
(63, 'daimark.lopez', 49, 'daimark lopez lopez', '2017-08-07', 'La oficina del 5Piso, tiene 4 puntos de red, 2 estan habilitados y los otros 2 estan desabilitados, por lo que se requiere habilitar los 2 puntos de red faltantes,  ver a daimark que tiene la llave', 1, 10, 17, 1, '2017-08-08'),
(64, 'jesus.gonzalez', 27, 'Jesus Gonzalez', '2017-08-07', 'Problemas para entrar a la PC', 1, 3, 18, 7, '2017-08-09'),
(65, 'roberto.infante', 5, 'Roberto Infante', '2017-08-08', 'La maquina no entra al Sistema Operativo, pone una pantalla azul', 1, 11, 9, 6, '2017-08-08'),
(66, 'daimark.lopez', 49, 'daimark lopez lopez', '2017-08-08', 'Confeccionar 2 cables de red de 3 metros cada uno, para la oficina del 5Piso', 1, 10, 17, 1, '2017-08-08'),
(67, 'maria.iglesias', 39, 'María Teresa Iglesias', '2017-08-11', 'Los adjuntos que recibo por e-mail no los puedo imprimir y cuando los abro salen distorcionados. Por favor me urge resolver este problema porque estoy sola en la oficina y me encuentro recibiendo información de las embajadas.', 1, 11, 26, 5, '2017-08-15'),
(68, 'omar.hernandez', 14, 'omar hernández fleitas', '2017-08-11', 'La PC no levanta. Ni siquiera inicia.', 1, 3, 16, 7, '2017-08-14'),
(69, 'lazara romero', 8, 'lazara romero', '2017-08-14', 'Problemas con el monitor(se le apagó)', 1, 3, 16, 8, '2017-08-14'),
(70, 'ramiro.leon', 27, 'Ramiro Leon', '2017-08-14', 'Tiene problemas en la PC para abrir el correo.', 1, 3, 14, 7, '2017-08-14'),
(71, 'daynet.nunez', 1, 'Daynet Núñez', '2017-08-14', 'La pc del salon 23 (9no piso) necesita ser formateada por estar contaminada de virus informáticos', 1, 2, 9, 2, '2017-08-14'),
(72, 'nora.lao', 13, 'Nora Elis La O Cala', '2017-08-15', 'Revisión de la Red de una oficina', 1, 3, 14, 4, '2017-08-16'),
(73, 'luis.rodriguez', 19, 'Luis  I. Rodríguez Hernandez', '2017-08-15', 'no tengo correo desde  horas tempranas en la mañana, aunque al abrir la PC recibí algunos. Saludos. LR', 1, 3, 29, 8, '2017-08-15'),
(74, 'luis.rodriguez', 19, 'Luis  I. Rodríguez Hernandez', '2017-08-15', 'No tengo servicio de correo, aunque recibí algunos a primera hora en la mañana', 1, 3, 29, 8, '2017-08-15'),
(75, 'luis.rodriguez', 19, 'Luis  I. Rodríguez Hernandez', '2017-08-15', 'No tengo servicio de correo, aunque recibí algunos a primera hora en la mañana', 1, 3, 14, 8, '2017-08-21'),
(76, 'carricarte', 36, 'Antonio Carricarte', '2017-08-15', 'Instalar drivers impresora HP Laserjet 1020', 1, 2, 11, 9, '2017-08-15'),
(77, 'lidia.jimenez', 12, 'Lidia Jimenez Figueredo', '2017-08-15', 'Antivirus a la  PC de la OCIC ', 1, 1, 28, 4, '2017-08-24'),
(78, 'jorge.valero', 32, 'Jorge Valero', '2017-08-16', 'Necesitamos injstalar la impresora HPLasserjetP3015 en dos pc  del Area.', 1, 2, 11, 5, '2017-08-29'),
(79, 'esmeralda.fuentes', 33, 'Esmeralda Fuentes', '2017-08-17', 'Cambiar toner de impresora', 1, 3, 11, 5, '2017-09-26'),
(80, 'Alejandro', 42, 'jimeno.lopez', '2017-08-17', 'actualizar Codec de audio y video', 1, 3, 24, 7, '2017-08-24'),
(81, 'yudith.viera', 27, 'Yudith Viera', '2017-08-17', 'Problemas con el navegador, no puedo descargar documentos.', 1, 3, 14, 7, '2017-08-22'),
(82, 'yudith.viera', 27, 'Yudith Viera', '2017-08-17', 'También tengo problemas con el correo.', 1, 3, 14, 7, '2017-08-22'),
(83, 'yidamaray', 1, 'yidamaray', '2017-08-18', 'Configurar impresora en la oficina de la secretaria del Viceministro', 1, 2, 11, 2, '2017-08-18'),
(84, 'luis.rodriguez', 19, 'Luis  I. Rodriguez  Hernandez', '2017-08-21', 'No tengo entradas de correo desde las primeras horas en la mañana', 1, 3, 14, 8, '2017-08-22'),
(85, 'elena.morales', 17, 'Elena Morales', '2017-08-21', 'Error con el Outlook, los correos no se descargan. Cambiar la contraseña.', 1, 11, 21, 6, '2017-08-24'),
(86, 'luis.rodriguez', 19, 'Luis  I. Rodriguez  Hernandez', '2017-08-21', 'Estoy sin correos desde horas tempranas en la mañana', 1, 3, 14, 8, '2017-08-22'),
(87, 'Nadia', 45, 'Nadia Macias Duskiewiz', '2017-08-22', 'Es necesario la instalación de un Scanner, es nuevo', 1, 2, 12, 9, '2017-08-23'),
(88, 'juaquin.cabada', 47, 'Julio Joaquin,', '2017-08-22', 'No puedo acceder a Internet, rechaza el proxy', 1, 3, 18, 8, '2017-08-28'),
(89, 'carlovis.gamez', 10, 'Carlovis Gámez', '2017-08-22', 'solicito para revisar en avila que no puedo entrar la contraseña', 1, 8, 24, 6, '2017-08-23'),
(90, 'salvador.cabeiro', 42, 'SALVADOR CABEIRO QUINTANA', '2017-08-22', 'REVISAR EL ANTIVIRUS.', 1, 3, 28, 7, '2017-08-24'),
(91, 'mairin.aspuro', 37, 'mairin aspuro herrera', '2017-08-23', 'El internet se desconfiguró.', 1, 3, 14, 7, '2017-08-28'),
(92, 'carlovis.gamez', 10, 'Carlovis Gámez', '2017-08-24', 'ya tenemos la dirección los kit de computación para montar en los 5 chasis', 1, 11, 23, 6, '2017-08-25'),
(93, 'lis.marrero', 47, 'Lis Marrero', '2017-08-25', 'Necesidad de una contraseña para trabajar en la maquina.', 1, 3, 18, 8, '2017-09-27'),
(94, 'jose.rojas', 9, 'José Oscar Rojas Curbelo', '2017-08-25', 'La semana próxima 28/8 se incorpora un nuevo especialista a la Dirección, el cual tiene creado ya la cuenta de usuario en la Dirección de Inteligencia Comercial. Requerimos traspasar su cuenta para una de las computadoras de nuestra dirección para que pueda comenzar a trabajar en las lineas de trabajo nuestras.\r\nMuchas Gracias', 1, 11, 10, 6, '2017-08-25'),
(95, 'daynet.nunez', 27, 'celia.garcia', '2017-08-28', 'Configuración de perfil- nuevo usuario', 1, 3, 10, 7, '2017-08-31'),
(96, 'carlos.ifil', 49, 'Carlos Ifil', '2017-08-28', 'Actualizar Kaspersky', 1, 1, 2, 1, '2017-08-30'),
(97, 'vm.policome', 43, 'Yisel valdés', '2017-08-29', 'Configurar usuario a Celia García', 1, 3, 10, 7, '2017-08-29'),
(98, 'ailen.rodriguez', 33, 'ailen rodriguez', '2017-08-30', 'configurar impresora', 1, 2, 11, 5, '2017-08-30'),
(99, 'jesus.wilson', 3, 'Jesus Wilson', '2017-09-01', 'Nuevo usuario. Crear perfil', 1, 11, 10, 5, '2017-09-25'),
(100, 'eduardo.echeverria', 32, 'eduardo echeverria', '2017-09-01', 'montar el sistema autocad que esta en soporte CD, e intalarlo, conectarme a la impresora del departamento', 1, 11, 24, 5, '2017-09-25'),
(101, 'carlovis.gamez', 10, 'Carlovis Gámez', '2017-09-01', 'solicitud de traspaso de la información del disco de Sara Marta para el disco duro de Dilyara Ramos y revisar unas de las maquinas de Sara Marta que no funciona\r\n', 1, 2, 9, 6, '2017-09-25'),
(102, 'marilu', 25, 'Iliaser Barrios', '2017-09-26', 'La PC de Marilu no enciende y cuando lo logra hacer tiene un ruido.', 1, 3, 16, 7, '2017-09-27'),
(103, 'carmen.serpa', 29, 'carmen serpa', '2017-09-26', 'Desde el día de ayer he estado llamando para informar que mi máquina está presentando problema, hace falta que pasen a revisarla pues es necesario para la continuidad de mi trabajo.', 1, 11, 23, 9, '2017-09-26'),
(104, 'jantonio.concepcion', 20, 'José Antonio Concepción Rangel', '2017-09-27', 'Tengo 2 reportes:\r\n1. concluir la instalación del antivirus de mi PC.\r\n2. después de los sucesos del huracán asociados a la falta de servicio me están llegando los correos multiplicados y a 2 carpetas de destino, los de afuera del MINCEX me llegan 8 copias y los internos me llegan 4 copias', 1, 11, 26, 5, '2017-09-27'),
(105, 'Iliaser. barrios', 25, 'Iliaser Barrios Torres', '2017-09-27', 'Instalar pc nueva', 1, 1, 9, 7, '2017-10-25'),
(106, 'elaine.perez', 5, 'Elaine Pérez Pérez', '2017-09-27', 'Necesito me revisen el correo porque me pusieron un usuario ya existente y me llegan correos dirigidos a esa otra persona que no soy yo,.', 1, 11, 26, 6, '2017-09-27'),
(107, 'lidia.jimenez', 12, 'Lidia Jiménez Figueredo', '2017-09-27', 'la PC de la OCIC enciende y se apaga, favor ayuda', 1, 1, 6, 4, '2017-10-03'),
(108, 'nelida.guerra', 5, 'Nelida Guerra', '2017-09-27', 'No tiene Internet, ni correo.', 1, 11, 14, 6, '2017-09-27'),
(109, 'jessica.lugo', 17, 'Jessica Lugo Sardiñas', '2017-09-27', 'en mi oficina de Estadística hay dos bocinas rotas hace unos meses, y necesitamos que la reparen o la cambien por otra nueva\r\nsaludos Jessica Lugo', 1, 11, 29, 6, '2017-09-27'),
(110, 'omar.hernandez', 14, 'Omar Hernández', '2017-09-28', 'Se le cambió la contraseña y al entrar y cambiarla "Problema de la relación de confianza entre la estación de trabajo y ..."', 1, 3, 14, 7, '2017-10-02'),
(111, 'isamary.gonzalez', 6, 'Isamary González Jover', '2017-09-28', 'Configurar mi cuenta de usuario en una PC nueva', 1, 3, 10, 4, '2017-10-09'),
(112, 'claudia.febles', 13, 'Claudia Febles', '2017-09-29', 'Configurar navegador y el correo por cambio de máquina', 1, 3, 14, 4, '2017-10-02'),
(113, 'teresa.prendes', 18, 'Teresa Prendes Valenzuela', '2017-09-29', 'No puedo abrir el acrobat XI Pro. Me aparece una ventana que dice que los días de prueba terminaron y que debo tener una licencia o un número de serie. Este programa es muy importante para el trabajo que relizo a Diario, pues trabajo constantemente con el Sistema Armonizado de los Productos (Arancel) de Importación y exportación de los diferentes productos y el que tengo en la máquina está con el Acrobat.\r\nEn espera de su respuesta,\r\nTeresa', 1, 3, 24, 8, '2017-10-02'),
(114, 'claudia.febles', 6, 'Claudia Febles', '2017-10-02', 'Desde que me configuraron el navegador el viernes, no me he podido conectar a internet. Me da problema al cargar la página.', 1, 3, 14, 4, '2017-10-02'),
(115, 'antonio.rodriguez', 17, 'antonio.rodriguez', '2017-10-02', '^Poe orientaciones superiores el viernes se desconectaron todos los equipo, hoy al conectarlos la maquina tiene fecha 29 de septiembrecon las 4.25 pm.  Favor de apoyarnos lo más ràpido posible.  Nota Ya una vez se le cambió la pila. a lo mejor está vencida.\r\nSaludos\r\nTony\r\n', 1, 11, 26, 6, '2017-10-02'),
(116, 'yamile.fajardo', 5, 'Yamilet Fajardo', '2017-10-02', 'URGE: La PC no enciende.', 1, 3, 14, 6, '2017-10-02'),
(117, 'elaine.perez', 5, 'Elaine  Pérez', '2017-10-02', 'Cambiar nombre de usuario, pues  parece ser que coincide con uno anterior, estan entrando correos de otra persona.', 1, 11, 26, 6, '2017-10-02'),
(118, 'alegna.lombillo@mincex.cu', 1, 'Ingrid Rodríguez González', '2017-10-02', 'La computadora no reconoce los dispositivos SATA en la motherboard.', 1, 3, 29, 2, '2017-10-06'),
(119, 'isamary.gonzalez', 6, 'Isamary González Jover', '2017-10-02', 'INSISTO EN LA URGENCIA PARA LA CONFIRGURACIÓN DE USUARIO EN UNA PC NUEVA. LA MAYOR PARTE DE LA INFORMACIÓN DE LA PC EN USO YA SE TRASLADÓ A LA PC NUEVA, Y NO SE PUEDEN UTILIZAR LOS DOCUMENTOS DE ANTECEDENTES, POR NO CONTAR CON CONTRASEÑA DE ACCESO A LA NUEVA PC. ', 1, 3, 10, 4, '2017-10-04'),
(120, 'puesto de mando', 38, 'Puesto de mando', '2017-10-03', 'Problemas con la contraseña', 1, 3, 18, 1, '2017-10-03'),
(121, 'jesus.gonzalez@mincex.cu', 27, 'Jesus Gonzalez Perez', '2017-10-03', 'No tengo conexion de Internet y necesioto acceder para obtener unos CV', 1, 3, 14, 7, '2017-10-04'),
(122, 'elaine.perez', 5, 'Elaine Perez', '2017-10-03', 'Revisar el navegador', 1, 11, 26, 6, '2017-10-03'),
(123, 'nicolai.rodriguez', 3, 'Nicolai Rodriguez', '2017-10-03', 'Realizar cambio de PC', 1, 11, 10, 5, '2017-10-03'),
(124, 'liliana.alfonso', 13, 'Liliana Alfonso', '2017-10-03', 'Configuración del navegador y del correo', 1, 3, 10, 4, '2017-10-04'),
(125, 'nicolai.rodriguez', 3, 'Nicolai', '2017-10-03', 'eliminar virus en PC de trabajo', 1, 11, 28, 5, '2017-10-11'),
(126, 'lucia.chavez', 49, 'Lucis Rosa Chávez', '2017-10-04', 'no tengo acceso a internet', 1, 3, 14, 1, '2017-10-09'),
(127, 'solangel.santan', 26, 'Solangel Santana', '2017-10-05', 'La PC enciende, pero no levanta el sistema operativo.', 1, 1, 14, 6, '2017-10-06'),
(128, 'carlovis.gamez', 10, 'Carlovis Gámez', '2017-10-05', 'necesito acceder la maquina a un nuevo usuario de la dirección porque hay una nueva compañera ', 1, 3, 10, 6, '2017-10-06'),
(129, 'lidia.jimenez', 12, 'Lidia Jiménez Figueredo', '2017-10-06', 'la PC, sigue con problemas no reconoce mi contraseña, tengo q quitarla de la red  para poder entrar ', 1, 3, 10, 4, '2017-10-09'),
(130, 'alba.rosa', 37, 'Alba Rosa Alarcon Fonseca', '2017-10-06', 'Impresora HP Laser Jet 1320 se atascan las hojas.', 1, 13, 31, 7, '2017-10-19'),
(131, 'eli.perez', 5, 'Elaine Perez Perez', '2017-10-06', 'Nuevo Perfil de Usuario\r\neli.perez', 1, 3, 10, 6, '2017-10-06'),
(132, 'rafaela.morales', 10, 'Rafaela Morales', '2017-10-06', 'necesito revision de la maquina que se apaga y no quiere encender', 1, 3, 16, 6, '2017-10-09'),
(133, 'rafaela.morales', 10, 'Rafaela Morales', '2017-10-06', 'La torre se apaga sola', 1, 3, 16, 6, '2017-10-09'),
(134, 'aurora.garcía', 10, 'Aurora García Borrego', '2017-10-09', 'necesito revisar la maquina que no puede entrar el usuario\r\n', 1, 10, 18, 6, '2017-10-09'),
(135, 'dilyara.ramos', 10, 'Dilyara Ramos', '2017-10-09', 'necesito instalar 2 scanners para la directora y el jefe esquema externo', 1, 11, 12, 6, '2017-10-11'),
(136, 'dilyara.ramos', 10, 'Dilyara Ramos', '2017-10-09', 'necesito instalar la red interna', 1, 5, 17, 6, '2017-10-11'),
(137, 'salvador.caballero', 42, 'Salvador Caballero', '2017-10-09', 'Mi máquina tiene problemas al encenderla.\r\nNo se puede acceder a la impresora del Director, ni siquiera el Director puede acceder a ella.', 1, 3, 16, 7, '2017-10-16'),
(138, 'emilio.berto', 37, 'Emilio Berto Glz', '2017-10-09', 'Nuevo usuario', 1, 3, 10, 7, '2017-10-16'),
(139, 'noel.dominguez', 12, 'Noel Domínguez', '2017-10-09', 'No puede entrar, usuario deshabilitado', 1, 13, 18, 4, '2017-10-09'),
(140, 'lidia.jimenez', 12, 'Lidia Jiménez Figueredo', '2017-10-09', 'NO TIENE ACCESO A INTERNET', 1, 3, 14, 4, '2017-10-16'),
(141, 'lidia.jimenez', 12, 'Lidia Jiménez Figueredo', '2017-10-11', 'MAQUINA DE LA COMPAÑERA GLENDA ALVAREZ RUIZ, NO ENCIENDE , NECESITAMOS SU AYUDA ', 1, 3, 16, 4, '2017-10-16'),
(142, 'lidia.jimenez', 12, 'Lidia Jiménez Figueredo', '2017-10-11', 'la PC tiene problemas entrada internet', 1, 3, 14, 4, '2017-10-16'),
(143, 'antonio.rodriguez', 19, 'antonio.rodriguez', '2017-10-11', 'Cambiar las baterias de 5 backups', 1, 11, 30, 8, '2017-10-11'),
(144, 'alejandro.valdes', 9, 'Alejandro Valdes', '2017-10-11', 'Actualizar navegador y revisar configuración.', 1, 11, 4, 6, '2017-10-13'),
(145, 'glenda.alvarez', 12, 'Glenda Alvarez', '2017-10-11', 'PC no enciende.', 1, 3, 16, 4, '2017-10-16'),
(146, 'yulian.reyes', 40, 'Yulian Reyes', '2017-10-11', 'Necesito instalar una impresora HP laser jet 1018 en mi máquina. ', 1, 11, 11, 5, '2017-10-16'),
(147, 'nicolai.rodriguez', 3, 'Nicolai Rodríguez', '2017-10-12', 'Configurar la impresora desde mi PC. No esta imprimiendo.', 1, 11, 11, 5, '2017-10-12'),
(148, 'raciel.proenza', 39, 'Raciel Proenza Rodriguez ', '2017-10-12', 'Instalacion de impresora Lenovo. ', 1, 3, 11, 5, '2017-10-16'),
(149, 'j.dominguez', 3, 'Jose Antonio Dominguez', '2017-10-12', 'Nuevo usuario', 1, 11, 10, 5, '2017-10-12'),
(150, 'harry.amaya', 49, 'Harry Amaya Zaldivar', '2017-10-12', 'Configurar nuevo usuario', 1, 11, 10, 1, '2017-10-16'),
(151, 'felix.drake', 39, 'Felix Drake ', '2017-10-13', 'Instalacion de drivers para Scanner Canoscanlide 25 ', 1, 11, 12, 5, '2017-10-18'),
(152, 'nora.lao', 13, 'Nora Lao', '2017-10-13', 'Actualizar Navegador', 1, 3, 4, 4, '2017-10-16'),
(153, 'teresa.oramas', 11, 'Teresa Oramas', '2017-10-13', 'Revisar PC  para nueva incorporación de Especialista en la Dirección.', 1, 1, 29, 8, '2017-10-30'),
(154, 'ariagna.oramas', 1, 'Ariagna Oramas Interian', '2017-10-16', 'No da video', 1, 1, 16, 2, '2017-10-16'),
(155, 'eliza.carta', 35, 'Elisa Cartas', '2017-10-16', 'No tengo conexión para imprimir desde mi máquina', 1, 11, 9, 5, '2017-10-16'),
(156, 'harry.amaya', 49, 'harry.amaya', '2017-10-16', 'Configurar Perfil', 1, 11, 10, 1, '2017-10-16'),
(157, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2017-10-16', 'no tiene conexión la impresora', 1, 3, 14, 4, '2017-10-16'),
(158, 'raciel.proenza', 20, 'Raciel Proenza', '2017-10-16', 'No puede acceder al sitio de reportes', 1, 3, 21, 5, '2017-10-16'),
(159, 'teresa.oramas', 11, 'Teresa Oramas', '2017-10-16', 'Activar el punto de red de la oficina de la subdirectora de Importaciones y trasladar su PST de la Dirección de regulaciones Técnicas con la información que posee en esa PC. Fue nombrada la Ca. Mariela Cué, Especialista de la Dirección de Regulaciones Técnica como Subdirectora de Importaciones.', 1, 5, 17, 8, '2017-10-24'),
(160, 'carlos.burgos', 32, 'carlos.burgos', '2017-10-16', 'Necesito que me configuren el correo', 1, 11, 26, 5, '2017-10-16'),
(161, 'olga.guedes', 32, 'olga.guedes', '2017-10-16', 'Configurar la libreta de direcciones', 1, 11, 27, 5, '2017-10-16'),
(162, 'gerardo.perez', 3, 'Gerardo Perez Torres', '2017-10-17', 'Monitor fuera de servicio', 1, 11, 29, 5, '2017-10-18'),
(163, 'jacqueline.domech', 7, 'jacqueline dor domech', '2017-10-17', 'El backu con problemas se apaga solo y pita constantemente', 1, 3, 15, 4, '2017-10-23'),
(164, 'ariam.perez', 9, 'Ariam', '2017-10-17', 'Copiar la información del usuario jose.rojas al disco de datos de datos de la maquina.', 1, 11, 10, 6, '2017-10-18'),
(165, 'ariam.perez', 9, 'Ariam', '2017-10-17', 'Configurar  impresora lenovo', 1, 11, 11, 6, '2017-10-18'),
(166, 'yamila.martinez', 5, 'Yamila Martinez', '2017-10-17', 'Problemas con el outlook. No puede enviar ni recibir correos ', 1, 11, 26, 6, '2017-10-19'),
(167, 'margarita.lucas', 3, 'Margarita Lucas Poll', '2017-10-18', 'Configurar la PC de trabajo y conectar la PC de Internet ', 1, 11, 9, 5, '2017-10-18'),
(168, 'dianet.gonzalez ', 31, 'Dianet Gonzalez Mederos ', '2017-10-18', 'La computadora del director Dimas Lima tiene problemas con el Microsoft Word.', 1, 11, 26, 5, '2017-10-18'),
(169, 'norberto.diaz ', 39, 'Norberto Diaz', '2017-10-18', 'Instalacion de usuario en Pc. Oficina 508. ', 1, 11, 10, 5, '2017-10-18'),
(170, 'isamary.gonzalez', 6, 'Isamary González Jover', '2017-10-19', 'Instalar el Pandion y el acceso al DataInvex en la PC nueva\r\n', 1, 3, 24, 4, '2017-11-01'),
(171, 'ezequiel.diaz', 25, 'Ezequiel Diaz', '2017-10-19', 'Defectar backup, se apaga cuando hay cambio de voltaje', 1, 3, 30, 7, '2017-10-20'),
(172, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2017-10-20', 'favor se han realizado 3 reportes PC OCIC', 1, 1, 9, 4, '2017-10-25'),
(173, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2017-10-20', 'problemas con la impresora', 1, 3, 11, 4, '2017-10-26'),
(174, 'reynaldo.buides', 32, 'Reynaldo Buides', '2017-10-23', 'No puede entrar a la máquina', 1, 11, 9, 5, '2017-10-24'),
(175, 'kirenia.hierrezuelo', 18, 'Kirenia Hierrezuelo Verdecia', '2017-10-24', 'Mi PC no está conectada a la impresora.', 1, 3, 11, 8, '2017-10-30'),
(176, 'jose pablo', 10, 'Jose pablo', '2017-10-24', 'necesito que revise la maquina que no enciende', 1, 11, 16, 6, '2017-10-27'),
(177, 'nora.lao', 13, 'Nora Elis La O Cala', '2017-10-25', 'Actualizar el navegador', 1, 11, 4, 4, '2017-11-10'),
(178, 'roberto.infante', 5, 'Roberto Infante', '2017-10-25', 'no funcionan los puertos USB frontales.', 1, 11, 29, 6, '2017-11-03'),
(179, 'secretariaDGComex', 21, 'secretariaDGComex', '2017-10-26', 'Nuevo Perfil de usuartio\r\nusuario: secretaria.dgcomex\r\nCorreo: secretaria.dgcomex@mincex.cu', 1, 3, 10, 8, '2017-10-30'),
(180, 'santos.lazaro', 8, 'Santos Lazaro', '2017-10-27', 'Revisar PC, presenta problemas con el sistema operativo.', 1, 3, 16, 8, '2017-10-30'),
(181, 'nora.lao', 13, 'Nora Elis La O Cala', '2017-10-30', 'Actualizar navegador', 1, 11, 4, 4, '2017-11-10'),
(182, 'monica.alvarez', 39, 'Monica Alvarez Lopez ', '2017-10-30', 'Solicitud de dicatmen de baja tecnica para monitor. ', 1, 1, 29, 5, '2017-11-06'),
(183, 'mirielis.diaz', 19, 'Mirielis', '2017-10-30', 'Actualizar fecha y hora de la computadora del Capitan  Luis Rodriguez Hernandez.', 1, 3, 14, 8, '2017-11-02'),
(184, 'ramon.gutierrez', 26, 'Ramón Javier Gutiérrez Morales', '2017-10-30', 'Habilitar punto de red', 1, 10, 17, 6, '2017-10-30'),
(185, 'joaquin.cabada', 47, 'Joaquin Cabada', '2017-10-30', 'Configurar usuario en PC y copiar toda la información de otros usuarios en el disco de datos ', 1, 1, 29, 8, '2017-12-18'),
(186, 'Anamary Suarez', 9, 'Anamary Suarez', '2017-10-30', 'En la Direccion de Finanzas y Precios se encuentran tres Maquinas que es necesario sean revisadas una de ellas se encuentra en proceso de revision, en caso de no tener solucion por favor hacer dictamen para solicitar su baja.\r\nDe igual manera necesitamos instalar el escaner en una de las maquinas que se encuentran funcionando en la Direccion', 1, 1, 29, 6, '2017-10-31'),
(187, 'xiomara.salazar', 9, 'Xiomara', '2017-10-30', 'La maquina no me deja entrar al cambiar la contraseña Ref.Error de Relacion de confiaza', 1, 11, 9, 6, '2017-11-02'),
(188, 'dolores.marrero', 14, 'Dolores Marrero Permanyer', '2017-10-31', 'El sistema Office esta vencido y me dicen no me permite  ', 1, 3, 13, 7, '2017-11-06'),
(189, 'dolores.marrero', 14, 'Dolores Marrero Permanyer', '2017-10-31', 'El sistema Office esta vencido y necesita actualizarse. No me deja trabajar con documentos Word', 1, 3, 13, 7, '2017-11-06'),
(190, 'monica.alvarez', 39, 'Monica Alvarez Lopez', '2017-11-01', 'Reinstalacion de mozilla firefox. Oficina 507 ', 1, 11, 4, 5, '2017-11-06'),
(191, 'iraida.gonzales', 51, 'Iraida Gonzalez', '2017-11-02', 'La computadora no se me conecta a la impresora', 1, 11, 26, 5, '2017-11-06'),
(192, 'kirenia.hierrezuelo', 18, 'Kirenia Hierrezuelo Verdecia', '2017-11-02', 'Necesidad de Instalacion del Acrobat Reader para llenar formularios en PDF.', 1, 3, 24, 8, '2017-11-08'),
(193, 'nora.lao', 13, 'Nora Elis La O Cala', '2017-11-02', 'Actualizar Navegador', 1, 11, 4, 4, '2017-11-10'),
(194, 'felicia.hernandez', 12, 'Felicia Hernandez', '2017-11-03', 'poner la máquina en el dominio', 1, 3, 10, 4, '2017-11-22'),
(195, 'angel.casamayor', 18, 'Ángel Casamayor León', '2017-11-03', 'Revisión de disco externo de la dirección, que las máquinas no lo reconocen y toda la información de la Dirección se encuentra en este disco', 1, 13, 32, 8, '2017-11-14'),
(196, 'Omar Hernández Fleitas', 14, 'Omar Hernández Fleitas', '2017-11-06', 'No puedo imprimir y tengo problemas para entrar a la computadora, teniéndola que desconectar de la Red y poner la contraseña.', 1, 3, 14, 7, '2017-11-17'),
(197, 'mabel.hernandez', 33, 'Mabel Hernandez', '2017-11-06', 'Copiar la carpeta del usuario en el disco de datos para que otros puedan acceder a la información . ', 1, 13, 32, 5, '2017-11-06'),
(199, 'gerardo.perez', 3, 'Gerardo Pérez', '2017-11-06', 'Configucacion de la INTERNET Y DEL CORREO.', 1, 11, 26, 5, '2017-11-07'),
(200, 'esmeralda.fuentes', 33, 'Esmeralda Fuentes', '2017-11-06', 'Impresora con problemas', 1, 11, 11, 5, '2017-11-07'),
(201, 'nora.lao', 13, 'Nora Elis La O Cala', '2017-11-07', 'Actualizar el navegador', 1, 11, 4, 4, '2017-11-10'),
(202, 'dolores.marrero@mincex.cu', 14, 'Dolores Marrero Permanyer', '2017-11-07', 'El sistema word dice que la calidez está caduca y en tres días no podré trabajar con el mismo.', 1, 3, 13, 7, '2017-11-15'),
(203, 'solangel.santana', 26, 'Solangel Santana', '2017-11-07', 'La torre se fundió, empezó a echar humo. La estoy bajando a informatica para que me la revisen. ', 1, 11, 23, 6, '2017-11-07'),
(204, 'caridad.vallin', 27, 'Caridad Vallin', '2017-11-07', 'La PC no pasa de la pantalla primera de información.', 1, 3, 9, 7, '2017-11-08'),
(205, 'gerardo.perez', 3, 'Gerardo Perez', '2017-11-07', 'Necesidad urgente de configurar internet y correo', 1, 11, 26, 5, '2017-11-07'),
(206, 'ailen.rodriguez', 33, 'ailen rodriguez', '2017-11-07', 'no tengo conexion para imprimir en la caja, ni esmeralda la jefa del Dpto.. por favor pasar por la oficina. ', 1, 11, 14, 5, '2017-11-07'),
(207, 'maria.carrillo', 8, 'Maria Carrillo', '2017-11-08', 'Error al entrar en su sesión, como si no tuviera el usuario creado.', 1, 3, 10, 8, '2017-11-08'),
(208, 'alejandro.valdes', 1, 'Alejandro Valdes', '2017-11-08', 'Necesito instalar el Visual FoxPro (e instalador se encuentra en la pc)', 1, 11, 24, 2, '2017-11-14'),
(209, 'alejandro.valdes', 1, 'Alejandro Valdes', '2017-11-09', 'Una de las mauinas de la ofina enciende y al cargar da la pantalla da un error acerca de la configuracion del BIOS', 1, 11, 26, 2, '2017-11-15'),
(210, 'dolores.marrero@mincex.cu', 14, 'Dolores Marrero Permanyer', '2017-11-09', 'Por favor este es el tercer reporte que hago. Tengo problemas con el sistema Office', 1, 3, 13, 7, '2017-11-15'),
(211, 'dianleys.reyes', 5, 'Dianelys Reyes', '2017-11-09', 'La PC no tiene conexión, ni correo ni Internet.', 1, 11, 26, 6, '2017-11-10'),
(212, 'dianet.gonzalez ', 51, 'Dianet Gonzalez ', '2017-11-09', 'Necesito actualizar el antivirus tengo karpesky 6.0, me hace perder información de memorias   Piso 5 Oficina 512', 1, 11, 24, 5, '2017-11-10'),
(213, 'solangel.santana', 26, 'Solangel Santana', '2017-11-10', 'Ayer me entregaron la computadora que la habian estado arreglando hace dos dias y hoy no arranca. no enciende. ', 1, 11, 26, 6, '2017-11-10'),
(214, 'manuel.rodriguez', 32, 'Manuel Rodriguez', '2017-11-10', 'Actualizar el Office e instalar el Acrobat Reader', 1, 11, 24, 5, '2017-11-15'),
(215, 'alejandro.rodriguez', 9, 'alejandro', '2017-11-13', 'Dar de alta a usuario \r\ndaniel.nunez\r\n\r\nPass Mincex123*\r\n\r\ncorreo\r\ndaniel.nunez@mincex.cu', 1, 11, 10, 6, '2017-11-14'),
(216, 'alejandro.rodriguez', 14, 'Alejandro', '2017-11-13', 'Oficina 711f\r\n\r\nSacar una Pc del dominio y configurar correo e internet', 1, 3, 14, 7, '2017-11-17'),
(217, 'yannisliey.garbey', 40, 'Yannisliey Garbey Rodríguez', '2017-11-13', 'Solicitud de baja técnica del Bacup con No. Inventario: 45269', 1, 1, 33, 5, '2017-11-29'),
(218, 'Nadia', 45, 'Nadia Macias Duskiewiz', '2017-11-13', 'Es necesario que la fotocopiadora - impresora Cannon sea conectada a la red, ella estuvo tiempo atrás conectada pero estaba rota, por tal motivo es necesario volver a conectarla para el uso de las Oficinas de los Viceministros Primero y de Venezuela', 1, 14, 11, 9, '2017-11-14'),
(219, 'dimas.lima', 51, 'Dimas Lima', '2017-11-14', 'Actualizar Antivirus', 1, 11, 28, 5, '2017-11-23'),
(220, 'aymee.garcia', 19, 'Aymée Renée García Hernández', '2017-11-14', 'cambiar el usuario para otra computadora', 1, 3, 10, 8, '2017-11-15'),
(221, 'luis.rodriguez', 19, 'Luis RODRIGUEZ hernández', '2017-11-15', 'arreglar fecha y backop', 1, 3, 15, 8, '2017-11-15'),
(222, 'luis.rodriguez', 19, 'Luis Rodriguez Hernández', '2017-11-15', 'arreglar fechay backop', 1, 3, 15, 8, '2017-11-15'),
(223, 'alejandro.valdes', 1, 'Alejandro Valdes', '2017-11-15', 'El transformador de 110v a 220v de la impresora esta dando mas voltaje y ha roto dos maquinas', 1, 2, 29, 2, '2017-11-30'),
(224, 'ernesto.carvajal', 8, 'Ernesto Carvajal Moreno', '2017-11-16', 'Eliminar virus que oculta información y crea accesos directos', 1, 3, 28, 8, '2017-11-23'),
(225, 'yamila.martinez', 14, 'Yamila Martínez Abreu', '2017-11-16', 'Necesito revisen una bateria de Backup para saber si se puede instalar en un equipo que no funciona.', 1, 3, 30, 7, '2017-11-23'),
(226, 'dilyara.ramos', 10, 'Dilyara Ramos', '2017-11-16', 'Revisar la tarjeta de red de la maquina secreta.', 1, 1, 9, 6, '2017-12-08'),
(227, 'xiomara.salazar', 9, 'Xiomara Salazar', '2017-11-17', 'La maquina que me pusieron en el d´´ia de Hoy se se ha reiniciado sola 5 veces en 6 Horas', 1, 11, 16, 6, '2017-11-24'),
(228, 'lidia.jimenez', 12, 'Lidia Jimenez', '2017-11-21', 'No puede entrar a la máquina', 1, 3, 18, 4, '2017-11-23'),
(229, 'idanay.rodriguez', 42, 'Idanay Rodríguez', '2017-11-21', 'Configurar perfil \r\nNuevo usuario', 1, 10, 10, 7, '2017-11-21'),
(230, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2017-11-21', 'no puedo entrar a Internet', 1, 3, 14, 4, '2017-11-23'),
(231, 'yeser.bocourt', 8, 'Yaser Bocourt', '2017-11-21', 'Revisar configuración del proxy y el flashplayer.', 1, 3, 14, 8, '2017-11-23'),
(232, 'alba.rosa', 37, 'Alba Rosa', '2017-11-22', 'Revisar el Outlook que no se conecta', 1, 3, 14, 7, '2017-11-23'),
(233, 'alba.rosa', 37, 'Alba Rosa Alarcon Fonseca', '2017-11-22', 'Impresora HP Laser Jet 1320 que se atascan hojas. 3er reporte que realizo y no tengo respuestas.', 1, 3, 29, 7, '2017-11-28'),
(234, 'alba.rosa', 37, 'Alba Rosa Alarcon Fonseca', '2017-11-22', 'PC de información clasificada la imagen es inestable y salta constantemente', 1, 3, 16, 7, '2017-11-23'),
(235, 'margarita.lucas', 3, 'Margarita Lucas', '2017-11-22', 'No levanta el sistema operativo de la PC con  internet ', 1, 11, 26, 5, '2017-11-23'),
(236, 'monica.alvarez', 39, 'Monica Alvarez', '2017-11-22', 'La Pc no reconoce el sistema operativo.  ', 1, 3, 16, 5, '2017-11-23'),
(237, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-23', 'poner disco duro a laptop, formatear e intalar todos los programas ', 1, 1, 33, 6, '2017-11-30'),
(238, 'lourdes.rivera', 8, 'Lourdes Yasmin Rivera OReilly', '2017-11-23', 'Reinstalación sistemas operativos\r\nNo puede acceder al sitio de reportes \r\nPC con virus', 1, 3, 24, 8, '2017-11-27'),
(239, 'yaser.bocourt', 11, 'Yaser Bocourt Becquer', '2017-11-24', 'No tengo acceso a internet', 1, 3, 26, 8, '2017-11-27'),
(240, 'conchitab', 11, 'Concepcion Bueno', '2017-11-24', 'No tengo conexion con la red', 1, 3, 26, 8, '2017-11-27'),
(241, 'xiomara.salazar', 9, 'Xiomara Salazar', '2017-11-24', 'La maquina se reinicia constantemente constantemente constantemente', 1, 11, 23, 6, '2017-11-27'),
(242, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-27', 'Habilitar PC para crear nuevo usuario ', 1, 2, 29, 6, '2017-11-28'),
(243, 'margarita.lucas', 3, 'Margarita Lucas', '2017-11-27', 'Poner la máquina del dominio', 1, 1, 1, 5, '2017-11-28'),
(244, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-28', 'Habilitar correo electrónico a nuevo usaurio : yiset.turcas ', 1, 11, 10, 6, '2017-11-29'),
(245, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-28', 'Instalar impresora en red en la oficina de Yanet, Infante y Yiset.', 1, 2, 11, 6, '2017-11-29'),
(246, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-28', 'Revisar torre de PC que se encuentra sin uso para habilitarla para funcionamiento', 1, 1, 9, 6, '2017-11-30'),
(247, 'inalvis.bonachea', 5, 'Inalvis Bonachea', '2017-11-28', 'Instalar disco duro en PC, formatear e intalar todos los programas', 1, 1, 9, 6, '2017-11-30'),
(248, 'yiset.turcas', 5, 'Yiset Turcas Garcia', '2017-11-28', 'Nuevo usuario', 1, 11, 10, 6, '2017-11-29'),
(249, 'yadira.gp', 12, 'yadira grave de peralta balsalobre', '2017-11-29', 'no reacciona al clik derecho la pc', 1, 3, 29, 4, '2017-11-30'),
(250, 'esmeralda.fuentes@mincex.cu ', 3, 'Esmeralda Fuentes Pedro ', '2017-11-29', 'Revision de la coneccción-.\r\nProblemas con la maquina y el mouse ', 1, 2, 29, 5, '2017-12-07'),
(251, 'esmeralda.fuentes@mincex.cu ', 3, 'Esmeralda Fuentes Pedro ', '2017-11-29', 'Revision de la coneccción-.\r\nProblemas con la maquina y el mouse ', 1, 11, 29, 5, '2017-11-30'),
(252, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-11-30', 'para instalar el pandion', 1, 3, 24, 8, '2017-12-01'),
(253, 'esmeralda.fuentes@mincex.cu', 33, 'Esmeralda Fuentes Pedro', '2017-11-30', 'Tenemos serios problemas con el sistema contable dados por la conección  , Ejemplo  ala compañera Maria Emilia Arteaga  el sistema le borra los asientos contables  y se le va el sistema .', 1, 2, 29, 5, '2017-11-30'),
(254, 'esmeralda.fuentes@mincex.cu', 33, 'Esmeralda Fuentes Pedro', '2017-11-30', 'Tenemos serios problemas con el sistema contable dados por la conección  , Ejemplo  ala compañera Maria Emilia Arteaga  el sistema le borra los asientos contables  y se le va el sistema .', 1, 2, 14, 5, '2017-11-30'),
(255, 'Lourdes Rivera', 8, 'Lourdes Rivera O´reilly', '2017-11-30', 'Revisar computadora de la directora (urgente)', 1, 3, 16, 8, '2017-11-30'),
(256, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2017-12-01', 'Favor venir a revisar la máquina secreta, la misma no enciende', 1, 3, 26, 8, '2017-12-08'),
(257, 'mcarmen.rodriguez', 39, 'Maria del Carmen Rodriguez ', '2017-12-05', 'Se cambio clave y no se reconoce para navegar Internet. ', 1, 11, 26, 5, '2017-12-07'),
(258, 'luis.rodriguez', 19, 'Luis Rodríguez', '2017-12-05', 'No se puede abrir ventnas de Microsoft Office Outlook. Así dice cuando se quiere abrir un documento. Por favor atender solicitud con la mayor prontitud posible.\r\nGRACIAS', 1, 3, 13, 8, '2017-12-06'),
(259, 'jessica.lugo', 17, 'Jessica Lugo Sardiñas', '2017-12-05', 'Necesito que me instalen el windows 10 en mi maquina', 1, 11, 24, 6, '2017-12-06'),
(260, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-12-05', 'La impresora no escanea', 1, 3, 11, 8, '2017-12-06'),
(261, 'mcarmen.rodriguez', 39, 'Maria del Carmen Rodriguez', '2017-12-07', 'Sin acceso a internet al cambiar la clave. Reporte echo hace 2 dias. ', 1, 11, 18, 5, '2017-12-07'),
(262, 'perdo.perez', 11, 'Pedro Perez', '2017-12-07', 'Revisar que no entran correos', 1, 3, 14, 8, '2017-12-08'),
(263, 'odalys.sanchez', 29, 'odalys.sanchez', '2017-12-08', 'No abre el Outlook', 1, 11, 26, 9, '2017-12-08'),
(264, 'solanch.fundora', 29, 'Solanch Fundora', '2017-12-08', 'Conectar impresora', 1, 11, 11, 9, '2017-12-08'),
(265, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2017-12-11', 'Revisar computadora del especialista Ernesto Carvajar, la misma no arranca', 1, 3, 16, 8, '2017-12-12'),
(266, 'olga.guedes ', 51, 'Olga Maria Guedes ', '2017-12-11', 'Su maquina  no tiene conección con nada \r\n\r\nProblemas  con correo \r\nInternet \r\n', 1, 2, 18, 5, '2017-12-11'),
(267, 'olga.guedes ', 51, 'Olga Maria Guedes ', '2017-12-11', 'Su maquina  no tiene conección con nada \r\n\r\nProblemas  con correo \r\nInternet \r\n', 1, 2, 29, 5, '2017-12-11'),
(268, 'yamila.herrera', 23, 'Yamila Herrera Marcos', '2017-12-11', 'Crear perfil de usuario', 1, 3, 10, 4, '2017-12-13'),
(269, 'tarra, yelena.villegas', 7, 'Teresita, Yelena', '2017-12-12', 'Dicen que no tienen internet', 1, 3, 18, 4, '2017-12-14'),
(270, 'regnis.arzuaga', 5, 'Regnis Arzuaga', '2017-12-12', 'Nuevo usuario', 1, 11, 10, 6, '2017-12-13'),
(271, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-12-13', 'No tengo internet y me sale el cartelito de poner el usuario y contraseña siempre', 1, 3, 18, 8, '2017-12-14'),
(272, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-12-13', 'No puedo acceder a internet.tengo problemas porque me sale un cartelito', 1, 3, 29, 8, '2017-12-13'),
(273, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-12-13', 'no me funciona el correo\r\n', 1, 3, 18, 8, '2017-12-14'),
(274, 'dalgis.chaviano', 23, 'Dalgis Chaviano Rosales', '2017-12-13', 'Nuevo usuario', 1, 3, 10, 4, '2017-12-14'),
(275, 'carlos.jorge', 30, 'Carlos Luis Jorge Méndez', '2017-12-13', 'No logro acceder al Ávila. Usuario: asesor', 1, 13, 26, 9, '2017-12-14'),
(276, 'karla.martinez', 19, 'Karla Martinez Romero', '2017-12-13', 'no puedo iniciar sesion', 1, 3, 18, 8, '2017-12-14'),
(277, 'lidia.jimenez', 12, 'Lidia Jimenez', '2017-12-14', 'Por favor con caracter URGENTE, PC de la secretaria no enciende.', 1, 3, 16, 4, '2017-12-14'),
(278, 'pedro.luis', 11, 'Pedro Luis', '2017-12-14', 'Outloock trabajando en modo sin conexion, no puede enviar ni resivir correo, y esta esperando el plan de inportacion del cierre de año.', 1, 3, 26, 8, '2017-12-14'),
(279, 'regnis.arzuaga', 5, 'Reignis Arzuaga', '2017-12-15', 'No puedo entrar a mi sesión.', 1, 11, 18, 6, '2017-12-15'),
(280, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2017-12-15', 'instalar sistema operativo a 2 Laptos', 1, 3, 13, 4, '2018-01-04'),
(281, 'mairin.aspuro', 37, 'mairin aspuro herrera', '2017-12-15', 'por favor necesito que suban, porque no recuerdo la contraseña del avila y necesito sacar informaciones recibidas para el VM Roberto, de favor les pido que sea lo antes posible, pues el me está pidiendo las informaciones.', 1, 13, 26, 7, '2017-12-19'),
(282, 'saily.gonzalez@mincex.cu', 17, 'Saily González Herrera', '2017-12-15', 'La PC de mi puesto de trabajo, se reinicia solo, sin tocar ningun botón. ', 1, 11, 9, 6, '2017-12-18'),
(283, 'viviana.torres', 18, 'Viviana Torres Carreras', '2017-12-18', 'Conectar la máquina de Viviana Torres a la impresora Lenovo de la Dirección para poder imprimir', 1, 3, 11, 8, '2018-01-04'),
(284, 'leniuska.garcia', 22, 'leniuska.garcia', '2017-12-18', 'No enciende la Pc', 1, 11, 16, 6, '2017-12-18'),
(285, 'yamilet.fajardo', 5, 'Yamilet Fajardo Castellanos', '2017-12-19', 'tengo todos los archivos dañados, word, PDF, etc, el correo no me deja enviar adjuntos.', 1, 11, 9, 6, '2017-12-19'),
(286, 'yamilet.fajardo', 10, 'Yamilet Fajardo', '2017-12-20', 'No  levanta el sistema,!!!!', 1, 3, 10, 6, '2017-12-21'),
(287, 'danay.perez', 22, 'Danay Isabel Perez', '2017-12-21', 'La maquina de la Ocic no enciende', 1, 1, 29, 6, '2018-01-10'),
(288, 'danay.perez', 22, 'Danay Isabel Perez', '2017-12-21', 'La maquina de la Ocic no enciende', 1, 2, 29, 6, '2017-12-21'),
(289, 'janet.acosta', 39, 'Janet Acosta ', '2017-12-22', 'Revision de monitor. Oficina 508B', 1, 11, 34, 5, '2017-12-27'),
(290, 'dilyara.ramos', 10, 'Dilyara Ramos', '2017-12-26', 'solicito reporte que la maquina de la directora no prende y es necesario urgente porque necesita trabajar en la máquina', 1, 11, 16, 6, '2017-12-26'),
(291, 'daniel.nunez', 22, 'Daniel Núñez', '2017-12-28', 'Problemas al conectarse a Internet, máquina fuera del dominio (máquina de la feria)', 1, 2, 10, 6, '2018-01-03'),
(292, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2018-01-03', 'la pc sin  acceso internet', 1, 3, 14, 4, '2018-01-04'),
(293, 'ramon.gutierrez', 26, 'Ramón Javier Gutiérrez Morales', '2018-01-03', 'La configuración de impresión imprime 2 páginas por hoja, no puedo modificarlo. En otro orden, necesito cambiar la impresora que tengo configurada para otra de la misma Dirección.', 1, 2, 11, 6, '2018-01-15'),
(294, 'danay.perez', 22, 'Danay Isabel Perez', '2018-01-04', 'el equipo no funciona, desde hace un mes por favor necesitamos lo más  pronto posible su colaboración\r\n', 1, 1, 29, 6, '2018-01-10'),
(295, 'aylin.rodriguez', 47, 'Aylin Rodriguez', '2018-01-04', 'La PC no enciende', 1, 3, 15, 8, '2018-01-04'),
(296, 'jesus', 32, 'Jesus', '2018-01-05', 'Problemas con el correo', 1, 2, 26, 5, '2018-01-05'),
(297, 'reynaldo.buides', 32, 'Reynaldo Buides', '2018-01-05', 'Problemas con permisos de usuario especificamente para acceder a internet', 1, 2, 26, 5, '2018-01-05'),
(298, 'jesus.cartaya', 32, 'Jesus cartaya', '2018-01-05', 'Necesita que se le instale un Scanner, un copiador y poder convertir de pdf a word.', 1, 2, 24, 5, '2018-01-15'),
(299, 'yamila.martinez', 14, 'Yamila Martínez Abreu', '2018-01-05', 'Problemas con la computadora de la secretaría de la Dirección con conexión única a la impresora y escáner de la Dirección (no enciende).', 1, 3, 26, 7, '2018-01-05'),
(300, 'roberto.rivas', 37, 'Roberto Rivas', '2018-01-05', 'Problema de relación de confianza.', 1, 3, 14, 7, '2018-01-10'),
(301, 'daillana.barzaga', 26, 'daillana barzaga', '2018-01-08', 'El monitor no funciona', 1, 11, 29, 6, '2018-01-16'),
(302, 'miguel.creus', 46, 'miguel R. Creus Alvarez', '2018-01-08', 'Activación del office', 1, 2, 24, 9, '2018-01-18'),
(303, 'pedro.rivera', 11, 'Pedro Luis Pérez Rivera', '2018-01-08', 'EL CORREO INTERNO AUTLOOK NO  ABRE NI FUNCIONA', 1, 3, 14, 8, '2018-01-10'),
(304, 'yamila.martinez', 14, 'Yamila Martínez Abreu', '2018-01-08', 'La PC me pide licencia de activación del outlook express y de word.\r\n\r\n', 1, 3, 13, 7, '2018-01-10'),
(305, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2018-01-09', 'problema con la impresora', 1, 3, 11, 4, '2018-01-10');
INSERT INTO `solicitud` (`id_solicitud`, `usuario`, `area_id`, `nombre`, `fecha`, `descripcion`, `estado`, `tecnico_id`, `tipo_problema_id`, `piso_id`, `fecha_realizado`) VALUES
(306, 'dalgis.chaviano', 23, 'Dalgis Chaviano', '2018-01-09', 'La máquina no tiene conexión', 1, 3, 10, 4, '2018-01-10'),
(307, 'Martha', 34, 'Martha Alvarez', '2018-01-09', 'Necesito que me instalen el scanner', 1, 11, 12, 5, '2018-01-15'),
(308, 'eliannis.sanchez', 43, 'Eliannis Sanchez Barcenas', '2018-01-09', 'Nuevo Perfil de Usuario', 1, 3, 10, 7, '2018-01-10'),
(309, 'viviana.garcia', 23, 'Viviana Garcia Fonseca', '2018-01-10', 'Nuevo usuario, también tiene una maquina secreta', 1, 3, 10, 4, '2018-01-10'),
(310, 'ruben.ramos', 43, 'Ruben Ramos', '2018-01-10', 'nuevo usuario y ponerle el agente de kaspersky, cojer el nombre de la maquina y anadir la fuente de actualizacion', 1, 3, 10, 7, '2018-01-10'),
(311, 'mario.garcia', 26, 'Mario Luis Garcia', '2018-01-10', 'Crear una nueva sesión ', 1, 11, 10, 6, '2018-01-16'),
(312, 'Marian', 48, 'MArian Iglesias', '2018-01-10', 'Configurar perfil de usuario', 1, 2, 10, 2, '2018-01-10'),
(313, 'Solange', 48, 'Solange Abreu', '2018-01-10', 'Configurar Perfil de Usuario', 1, 2, 10, 2, '2018-01-10'),
(314, 'ramon.gutierrez', 26, 'Ramón Javier Gutiérrez Morales', '2018-01-11', 'Necesito resolver la impresión, no imprime la impresora a la que me conectaron hace pocos días.', 1, 11, 11, 6, '2018-01-16'),
(315, 'Yasaris Lago', 40, 'yasaris.lago', '2018-01-11', 'Activar Office', 1, 2, 13, 5, '2018-01-11'),
(316, 'Madelin', 40, 'Madelin Olivera', '2018-01-11', 'Conectar impresora', 1, 2, 11, 5, '2018-01-11'),
(317, 'Jesus Caballero', 40, 'jesus.caballero', '2018-01-11', 'Configurar perfil', 1, 11, 10, 5, '2018-01-11'),
(318, 'Daniela Pernas', 48, 'daniela.pernas', '2018-01-12', 'Configurar perfil', 1, 2, 10, 2, '2018-01-12'),
(319, 'Maria Arteaga', 33, 'maria.arteaga', '2018-01-12', 'No enciende la Pc', 1, 11, 16, 5, '2018-01-12'),
(320, 'Jesus Caballero', 40, 'jesus.caballero', '2018-01-12', 'No enciende mi maquina', 1, 11, 16, 5, '2018-01-12'),
(321, 'yusel.arias@mincex.cu', 43, 'Yusel', '2018-01-15', 'TIENE PROBLEMAS DE CONEXION, YA SE VIO CON LOS INFORMATICOS QUE LLEVAN LA RED Y NO ES DE ELLOS EL TEMA.', 1, 3, 14, 7, '2018-01-16'),
(322, 'felicia.hernandez', 12, 'Felicia Hernandez', '2018-01-15', 'Problemas con la contraseña', 1, 3, 18, 4, '2018-01-16'),
(323, 'maria.iglesias', 39, 'María Teresa Iglesias Font', '2018-01-15', 'Los especialistas de esta dirección no pueden imprimir en la impresora asignada y tenemos trabajo que hacer.', 1, 11, 11, 5, '2018-01-16'),
(324, 'Luis Rodriguez', 19, 'Luis Rodriguez', '2018-01-16', 'No salen los correos emitidos', 1, 3, 13, 8, '2018-01-17'),
(325, 'dilyara.ramos', 10, 'Dilyara Ramos', '2018-01-16', 'por favor mi maquina no quiere abrir la contraseña y he llamado unas cuantas veces y no ha venido arreglar, sldos Dilyara\r\n', 1, 1, 35, 6, '2018-01-22'),
(326, 'cinthya.toca', 24, 'cinthya toca', '2018-01-17', 'sin conexion a intenet desde el jueves 11 de enero en que cambiaron el chasis', 1, 3, 14, 8, '2018-01-17'),
(327, 'eliannis.sanchez', 43, 'Eliannis Sanchez', '2018-01-17', 'La máquina no enciende', 1, 3, 9, 7, '2018-01-18'),
(328, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2018-01-17', 'La compuradora del Co Ernesto Carvajal, especialista de la dirección, no le permite el acceso', 1, 3, 10, 8, '2018-01-17'),
(329, 'Omar Hernández Fleitas', 14, 'Omar Hernández Fleitas', '2018-01-17', 'URGE CAMBIAR LA IMPRESORA DE LENOVO A CANOS. NO PUEDO IMPRIMIR Y TENGO QUE SACAR UNOS DOCUMENTOS.', 1, 3, 11, 7, '2018-01-18'),
(330, 'gabriel.lahens', 18, 'Gabriel Lahens Espinosa', '2018-01-17', 'tengo problemas con el correo. Por la mañana del día de hoy (17-1-18) el informático Ernesto vino a mi oficina, pero los problemas continúan', 1, 3, 13, 8, '2018-01-17'),
(331, 'viviana.torres', 18, 'Viviana Torres Carreras', '2018-01-17', 'el mouse no funciona bien', 1, 3, 34, 8, '2018-01-18'),
(332, 'norberto.diaz', 39, 'Norberto Diaz', '2018-01-17', 'Configuracion de impresora en red ', 1, 2, 11, 5, '2018-01-19'),
(333, 'teresa.oramas', 11, 'Teresa Oramas', '2018-01-17', 'Problemas para imprimir. URGENTE', 1, 3, 11, 8, '2018-01-18'),
(334, 'dalai.buides', 40, 'Dalai Buides', '2018-01-18', 'Buzón de correo lleno. No puedo darle Entrada/Salida a los correos.', 1, 2, 21, 5, '2018-01-19'),
(335, 'mairin.aspuro', 37, 'mairin aspuro herrera', '2018-01-19', 'Problemas con el backup por lo que no puede ingresar a la máquina. ', 1, 3, 30, 7, '2018-01-22'),
(336, 'janet.acosta', 39, 'Janet Acosta Quiñones', '2018-01-19', 'En el dia de hoy me actualizaron el antivirus y despues de esto, los correos electronicos que envío se quedan en la bandeja de salida. esta incidencia tambien la tienen mis compañeros de oficina.', 1, 11, 26, 5, '2018-01-19'),
(337, 'yamilet.fajardo', 5, 'yamilet fajardo', '2018-01-19', 'problema con el correo electronico ', 1, 2, 29, 6, '2018-01-19'),
(338, 'luis Rodriguez', 19, 'Luis Rodriguez', '2018-01-22', 'no entran correos', 1, 3, 14, 8, '2018-01-24'),
(339, 'yaimary.vera', 33, 'Yaimary Vera', '2018-01-22', 'Mover la ubicación de Mis Documentos y el Escritorio.', 1, 2, 10, 5, '2018-01-23'),
(340, 'rene.capote', 3, 'Rene Capote Forzate', '2018-01-22', 'Nuevo Pefil de usuario', 1, 11, 10, 5, '2018-01-22'),
(341, 'bernardo.diaz', 35, 'Bernardo Diaz', '2018-01-22', 'Se cambio de puesto y necesita que le conecten la maquina. La maquina esta en la oficina de Vivo.', 1, 2, 17, 5, '2018-01-23'),
(342, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2018-01-22', 'la PC de la Subdirectora no puede imprimir se apaga la máquina\r\nIndira', 1, 8, 11, 4, '2018-01-25'),
(343, 'carlovis.gamez', 10, 'carlovis gamez', '2018-01-22', 'mi maquina no tiene conexión y necesito urgente, sldos Carlovis', 1, 11, 26, 6, '2018-01-22'),
(344, 'Carlos Luis', 30, 'carlos.jorge', '2018-01-22', 'Activar el Windows y Office al ministro', 1, 11, 24, 9, '2018-01-22'),
(345, 'cinthya.toca', 24, 'cinthya.toca', '2018-01-22', 'Se necesita instalar una aplicación para la legalización de documentos en el MINREX en la PC de la Directora y de la Subdirectora.', 1, 13, 24, 8, '2018-01-22'),
(346, 'Nelida Guerra', 5, 'nelida.guerra', '2018-01-22', 'Cambio de clave', 1, 2, 18, 6, '2018-01-22'),
(347, 'jesus.gonzales', 14, 'Jesus Gonzales', '2018-01-23', 'No puedo entrar a la PC', 1, 3, 10, 7, '2018-01-24'),
(348, 'viviana.garcia', 23, 'Viviana García', '2018-01-23', 'Necesito cuanto antes me instalen el Office en mi máquina restringuida. Slds, \r\n\r\nViviana', 1, 1, 13, 4, '2018-01-30'),
(349, 'despacho', 30, 'Solange', '2018-01-24', 'Revisar escáner.', 1, 2, 31, 9, '2018-01-24'),
(350, 'Belnardo', 35, 'Bernardo Diaz', '2018-01-24', 'Problema con inicio de seccion', 1, 11, 29, 5, '2018-01-25'),
(351, 'Roberto.Infante', 5, 'Roberto Infante', '2018-01-25', 'Sin internet, no correo electronico', 1, 11, 29, 6, '2018-01-25'),
(352, 'roberto.infante', 5, 'Roberto Infante', '2018-01-25', 'URGENTE: NO tiene conectividad a internet ni correo electronico.\r\nHay que reiniciarla constantemente pues no acepta la contraseña\r\n', 1, 11, 14, 6, '2018-01-25'),
(353, 'dianelys.reyes', 5, 'Dianelys Reyes', '2018-01-25', 'La PC no da señal de video, no se abre el monitor.\r\n\r\n', 1, 3, 16, 6, '2018-01-25'),
(354, 'Yannisliey Garbey', 40, 'Yannisliey.Garbey', '2018-01-25', 'Configurar impresora', 1, 11, 11, 5, '2018-01-25'),
(355, 'Israel Arambarri', 39, 'israel.arambarri', '2018-01-25', 'Configurar impresora', 1, 2, 11, 5, '2018-01-25'),
(356, 'Luis Rodriguez', 19, 'Luis Rodriguez', '2018-01-25', 'No le entran los correos', 1, 3, 14, 8, '2018-01-30'),
(357, 'Luis Rodriguez', 19, 'Luis Rodriguez', '2018-01-26', 'lleva dos dias sin poder emitir ni recibir correo', 1, 3, 14, 8, '2018-01-30'),
(358, 'yamine.bertran ', 40, 'Yamine Bertran Olivares', '2018-01-29', 'crear perfil de usuario', 1, 2, 10, 5, '2018-01-29'),
(359, 'raciel.proenza', 20, 'Raciel Proenza', '2018-01-29', 'Revisar backup y máquina. Oficina 506D', 1, 11, 15, 5, '2018-01-30'),
(360, 'raciel.proenza', 20, 'Raciel Proenza', '2018-01-29', 'No enciende el back up', 1, 11, 29, 5, '2018-01-29'),
(361, 'yamile.egura', 33, 'Yamile Segura Paque', '2018-01-29', 'Ingreso de nuevo usuario', 1, 2, 10, 5, '2018-01-31'),
(362, 'Lourdes Rivera', 8, 'Lourdes Rivera O´reilly', '2018-01-30', 'Revisar monitor máquina especialista, no enciende', 1, 3, 15, 8, '2018-01-30'),
(363, 'isabel.azcuy', 11, 'Isabel Azcuy', '2018-01-30', 'Problemas de impresión.\r\nRevisar Kaspersky de Conchita\r\nOficina 805', 1, 3, 11, 8, '2018-02-01'),
(364, 'bernardo.diaz', 35, 'Bernardo Diaz', '2018-01-30', 'No puedo entrar a la PC', 1, 11, 29, 5, '2018-01-30'),
(365, 'eliannis.sanchez', 43, 'Eliannis Sánchez', '2018-01-30', 'Revisar la máquina que tiene un ruido', 1, 3, 34, 7, '2018-02-01'),
(366, 'teresa.oramas', 11, 'Teresa Oramas', '2018-01-31', 'Configurar Impresora a la máquina de la subdirectora.\r\nRevisar sitio de reportes que no llegan.', 1, 3, 11, 8, '2018-02-01'),
(367, 'teresa.oramas', 8, 'Teresa Oramas', '2018-01-31', 'sssss', 1, 13, 29, 8, '2018-02-01'),
(368, 'dalgis.chaviano', 23, 'Dalgis Chaviano', '2018-01-31', 'Dificultades para entrar en INTERNET en la máquina de la Subdirectora de la Dirección General de Inversión Extrajera.\r\n\r\n', 1, 3, 4, 4, '2018-02-01'),
(369, 'lidia.jimenez', 12, 'lidia jimenez figueredo', '2018-02-01', 'LA PC DE GLENDA (ABOGADA) SE APAGA EL MITOR', 1, 3, 16, 4, '2018-02-02'),
(370, 'gabriel.lahens', 18, 'Gabriel Lahens Espinosa', '2018-02-02', 'Cuando se va a abrir algún documento pdf pide la contraseña de la máquina', 1, 3, 24, 8, '2018-02-08'),
(371, 'dilyara.ramos', 10, 'Dilyara Ramos', '2018-02-02', '1- revisión de la red interna (3 máquinas secretas)\r\n2- revisión de carpeta compartida', 1, 1, 14, 6, '2018-02-07'),
(372, 'Luis Rodriguez', 19, 'Luis Rodriguez', '2018-02-05', 'la  maquina se apaga y se enciende ahora no da señal', 1, 3, 14, 8, '2018-02-05'),
(373, 'teresa.granadillo', 6, 'Teresa Granadillo', '2018-02-05', 'No se puede conectar', 1, 3, 39, 4, '2018-02-05'),
(374, 'lidia.jimenez', 6, 'lidia jimenez figueredo', '2018-02-05', 'problemas con el correo de la Directora', 1, 3, 39, 4, '2018-02-05'),
(375, 'Irelis', 30, 'irelisdg', '2018-02-05', 'Activar Office', 1, 2, 24, 9, '2018-02-05'),
(376, 'leoyurdy.duran', 41, 'Leoyurdy Duran', '2018-02-05', 'necesito revisión de mi maquina que no prende, espero su respuesta\r\n', 1, 11, 16, 6, '2018-02-05'),
(377, 'dilyara.ramos', 10, 'Dilyara', '2018-02-05', 'Habilitar permisos a carpeta compartida', 1, 2, 26, 6, '2018-02-05'),
(378, 'Amarilys Pérez', 6, 'Amarilys Pérez', '2018-02-06', 'Formatear maquína OCIC y transferir información a otra maquína', 1, 1, 29, 4, '2018-02-13'),
(379, 'yulian.reyes', 20, 'Yulian Reyes', '2018-02-06', 'La PC no reconoce la impresora y ninguna de las que estamn en la red. Al intentar añadir alguna muestra un  mensaje de error con el siguiente contenido: "El servicio de trabajo de administración local no se estña ejecutando". La última vez paso por acá la informatica y menciono algo sobre la salva de los datos del pc y la reinstalación del sistema. Se necesita con urgencia la solución de este problema .Gracias de antemano.', 1, 2, 9, 5, '2018-02-07'),
(380, 'marta.santander', 10, 'Marta Santander', '2018-02-07', 'Revisar el navegador.', 1, 11, 29, 6, '2018-02-07'),
(381, 'Nathalie Gallardo', 26, 'Nathalie Gallardo', '2018-02-07', 'No estan entrando ni saliendo los correos, es problema en el Ottlock porque por el wordclient si funciona.', 1, 2, 21, 6, '2018-02-07'),
(382, 'marta.santander', 10, 'Marta Santander', '2018-02-07', 'solicito revision que no tengo internet', 1, 11, 14, 6, '2018-02-07'),
(383, 'jnatonio.concepcion', 20, 'José Antonio Concepcion Rangel', '2018-02-07', 'Necesito instalar el scanner Canon LIDE 110 USB a mi PC\r\ngarcias de antemano,', 1, 2, 12, 5, '2018-02-08'),
(384, 'angelica.abeledo', 42, 'Angelica María Abeledo Sicilia', '2018-02-08', 'Instalación de impresora-escaner que estaba en maquina de la secretaria. Modelo lenovo ', 1, 3, 11, 7, '2018-02-09'),
(385, 'makisleidis.esponda', 12, 'Maki', '2018-02-08', 'Laptop reinstalar el microsoft office', 1, 3, 13, 4, '2018-02-20'),
(386, 'eliannis.sanchez', 43, 'Eliannis  Sanchez', '2018-02-09', 'La máquina se apagó.', 1, 3, 9, 7, '2018-02-13'),
(387, 'angelica.abeledo', 42, 'Angelica María Abeledo Sicilia', '2018-02-09', 'Instalación de impresora lenovo que estaba en la maquina de la secretaria.', 1, 3, 11, 7, '2018-02-09'),
(388, 'idanay.rodriguez', 42, 'Idanay Rodriguez', '2018-02-09', 'Instalar las impresoras y conectar la computadora a ella para poder imprimir ', 1, 3, 11, 7, '2018-02-09'),
(389, 'alvaro.martinez', 42, 'Alvaro Martínez', '2018-02-09', '- Necesidad de instalar dos impresoras\r\n- Respuesta de la solicitud de 1 bateria y 6 backup necesarios para proteger la información trabajada.\r\n', 1, 3, 11, 7, '2018-02-09'),
(390, 'ian.figueredo', 11, 'Ian Figueredo', '2018-02-09', 'Nuevo usuario', 1, 3, 10, 8, '2018-02-09'),
(391, 'yamine.bertran', 40, 'Yamine Bertran', '2018-02-12', 'No puedo entrar al sitio de los correos del MINCEX. ', 1, 11, 21, 5, '2018-02-12'),
(392, 'aily.rodriguez@mincex.cu', 47, 'Ailyn Rodriguez', '2018-02-12', 'Equipo  no fuciona.', 1, 3, 8, 8, '2018-02-13'),
(393, 'alejandro.valdes', 1, 'Alejandro Valdes', '2018-02-12', 'Instalar la impresora', 1, 2, 11, 2, '2018-02-13'),
(394, 'gwendolyne', 8, 'Gwendolyne', '2018-02-12', 'Ha ocurrido un error de lectura en el disco. Eso es lo que pone en la pantalla.', 1, 3, 8, 8, '2018-02-13'),
(395, 'Jose Gomez', 32, 'Jose Gomez', '2018-02-13', 'No Tiene conexión de ningún tipo.', 1, 2, 14, 5, '2018-02-13'),
(396, 'jantonio.concepcion', 20, 'José Antonio Concepcion Rangel', '2018-02-13', 'No se puede imprimir desde mi PC', 1, 2, 29, 5, '2018-02-13'),
(397, 'eliannis.sanchez', 43, 'Eliannis Sanchez', '2018-02-14', 'La PC sigue sin encender.', 1, 3, 23, 7, '2018-02-15'),
(398, 'gabriel.lahens', 18, 'Gabriel Lahens', '2018-02-14', 'Los documentos pdf no abren.', 1, 3, 24, 8, '2018-02-15'),
(399, 'teresa.prendes', 18, 'Teresa Prendes', '2018-02-14', 'No puedo imprimir.', 1, 3, 11, 8, '2018-02-15'),
(400, 'Elsa Drake', 19, 'Elsa Drake', '2018-02-15', 'tiembla la pantalla y se pierde el puntero', 1, 3, 16, 8, '2018-02-16'),
(401, 'Jesus.wilson', 38, 'Jesus Wilson', '2018-02-15', 'Activar Office', 1, 11, 40, 1, '2018-02-15'),
(402, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2018-02-16', 'Revisar word y correo', 1, 3, 13, 8, '2018-02-20'),
(403, 'Lietsa Peña Pacheco', 8, 'Lietsa Peña Pacheco', '2018-02-19', 'Favor venir a revisar la computadora (urgene)', 1, 3, 13, 8, '2018-02-20'),
(404, 'roberto.infante', 5, 'Roberto Infante Cervantes', '2018-02-19', 'Nueva conección de equipo en oficina 604-E', 1, 2, 17, 6, '2018-02-19'),
(405, 'yannisliey.garbey', 40, 'Yannisliey Garbey Rodriguez', '2018-02-19', 'No funciona el Correo ni la Internet', 1, 11, 14, 5, '2018-02-19'),
(406, 'yoandra.tur', 40, 'Yoandra Tur', '2018-02-19', 'No hay acceso a internet.', 1, 2, 26, 5, '2018-02-19'),
(407, 'roberto.infante', 5, 'Roberto Infante', '2018-02-19', 'Activar punto de red', 1, 4, 17, 6, '2018-02-20'),
(408, 'mileidis.lopez', 21, 'Mileidis Lopez', '2018-02-20', 'Problema con el navegador', 1, 13, 26, 8, '2018-02-20'),
(409, 'dalgis.chaviano', 23, 'Dalgis Chaviano', '2018-02-20', 'Problema con Internet y AvilaDoc.', 1, 13, 18, 4, '2018-02-20'),
(410, 'ileana.nunez', 43, 'Ileana Núñez', '2018-02-20', 'Quitar tarjeta de red extra que tiene la máquina.', 1, 3, 14, 7, '2018-02-22'),
(411, 'madelin.olivera', 3, 'Madelin Olivera', '2018-02-20', 'No puedo imprimir', 1, 11, 26, 5, '2018-02-21'),
(412, 'secretaria.dgcomex', 21, 'Mileidys Lopez', '2018-02-21', 'La impresora de la OCIC', 1, 1, 11, 8, '2018-02-28'),
(413, 'marta.santander', 10, 'Marta Santander', '2018-02-21', 'solicito que mi maquina no me abre en office que no puedo abrir el word, excel y otros\r\n', 1, 11, 36, 6, '2018-02-21'),
(414, 'marbelis.leyet', 45, 'Marbelis Leyes', '2018-02-21', 'Configuración de perfil de usuario, importar archivo pst de correos de Nadia.', 1, 2, 10, 9, '2018-02-21'),
(415, 'mercedes.guerra', 20, 'Mercedes', '2018-02-21', 'Problemas con la impresora', 1, 2, 26, 5, '2018-02-21'),
(416, 'beatriz.crespin', 14, 'Beatriz Crespín', '2018-02-21', 'Montar disco duro con la información en otra máquina.', 1, 3, 32, 7, '2018-02-22'),
(417, 'alvaro.martinez', 42, 'Alvaro Martinez', '2018-02-21', 'Se necesitan 6 backups y una bateria.', 1, 3, 29, 7, '2018-02-22'),
(418, 'jantonio.concepcion', 20, 'José Antonio Concepcion Rangel', '2018-02-21', 'No es posible imprimir desde la PC del especialista de la DG', 1, 11, 11, 5, '2018-02-22'),
(419, '                                                   arturo.pie                                                                           ', 3, '               Arturio Pie                                                                                                                                                                      ', '2018-02-21', 'problema con el correo, no funciona', 1, 2, 21, 5, '2018-02-22'),
(420, 'vicente.roman', 49, 'Vicente Roman', '2018-02-22', 'Problemas con el navegador', 1, 2, 14, 1, '2018-03-06'),
(421, 'Luis Rodriguez', 19, 'Luis Rodriguez', '2018-02-22', 'no se reciben los correos los cuales son vitales y urgentes', 1, 3, 13, 8, '2018-02-26'),
(422, 'daniel.nunez', 9, 'Daniel Núñez', '2018-02-22', 'problemas con el correo a la hora de mandar correos por una lista de destinatarios y darle a responder a todos', 1, 2, 21, 6, '2018-02-26'),
(423, 'Ivys.rabaza', 33, 'Ivys', '2018-02-22', 'Revisar el monitor de Mabel', 1, 2, 33, 5, '2018-02-22'),
(424, 'dalay.buides', 40, 'Dalay', '2018-02-22', 'Revisar los backups de la oficina', 1, 11, 15, 5, '2018-02-22'),
(425, 'jantonio.concepcion', 20, 'José Antonio Concepcion Rangel', '2018-02-22', 'Disculpen tanta molestía.\r\nNuevamente no puedo imprimir a pesar de la configuración realizada esta mañana.', 1, 11, 26, 5, '2018-02-26'),
(426, 'madelin.olivera', 3, 'Madelin Olivera', '2018-02-22', 'No puedo imprimir', 1, 11, 11, 5, '2018-02-26'),
(427, 'madelin.olivera', 3, 'Madelin Olivera', '2018-02-23', 'Instalar la impresora a la maquina', 1, 11, 11, 5, '2018-02-26'),
(428, 'yasaris.lago', 40, 'Yasaris Lago', '2018-02-26', 'Importar archivo PST a otra cuenta de correo por causa de baja', 1, 2, 18, 5, '2018-02-27'),
(429, 'yamine.bertran', 40, 'Yamine Bertran', '2018-02-27', 'No se puede entrar en la máquina de Yasaris porque no reconoce la contraseña.', 1, 2, 18, 5, '2018-02-27'),
(430, 'yulian.reyes', 40, 'Yulian Reyes', '2018-02-27', 'La pc se apaga y se enciende continuamente. No permite hacer ninguna operación.', 1, 11, 16, 5, '2018-02-27'),
(431, 'karla.martuinez', 19, 'Karla Martínez', '2018-02-27', 'No puedo entrar a la página de la OMC para inscribirme en un nuevo curso.\r\nMe sale esto:\r\nThe requested URL was rejected. Please consult with your administrator.\r\n\r\nYour support ID is: 14851737446310018184', 1, 3, 14, 8, '2018-03-01'),
(432, 'roberto.infante', 5, 'Roberto Infante', '2018-02-27', 'Sin correo, sin  internet, Oficina 304-E', 1, 11, 14, 6, '2018-02-27'),
(433, 'jose.gomez', 32, 'Jose  Gomez', '2018-02-27', 'El mouse de Ismary no funciona', 1, 2, 41, 5, '2018-02-27'),
(434, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2018-02-27', 'Favor venir a revisar la máquina secreta', 1, 1, 23, 8, '2018-02-28'),
(435, 'jessie.coto', 14, 'Jessie Coto', '2018-02-27', '- Instalación de la impresora en red con otra impresora. \r\n- Actualización de fecha y hora de la máquina. No me permite actualizarla sino es contraseña de administrador. ', 1, 3, 11, 7, '2018-03-01'),
(436, 'ismary.martinez', 32, 'Ismary', '2018-02-27', 'No puedo imprinir', 1, 11, 11, 5, '2018-02-27'),
(437, 'yamine.bertran', 40, 'Yamine Bertrán ', '2018-02-27', 'No tengo correo en la nueva máquina', 1, 2, 10, 5, '2018-02-27'),
(438, 'reynaldo.buides', 32, 'Reynaldo Buides', '2018-02-27', 'Instalar el adobecroat', 1, 11, 24, 5, '2018-02-28'),
(439, 'patricia.garcia', 18, 'Patricia Garcia', '2018-02-28', 'La PC no enciende...', 1, 3, 29, 8, '2018-03-01'),
(440, 'teresa.prendes', 18, 'Teresa Prendes Valenzuela', '2018-02-28', 'La impresora presenta problemas ...', 1, 3, 11, 8, '2018-03-01'),
(441, 'yulian.reyes', 40, 'Yulian Reyes', '2018-02-28', 'No levanta el sistema operativo. Revisar', 1, 11, 7, 5, '2018-02-28'),
(442, 'makisleidis.esponda', 12, 'Maki', '2018-02-28', 'Reinstalar SO a la laptop, se necesita para viaje a provincia segunda semana del mes de marzo', 1, 3, 13, 4, '2018-03-06'),
(443, 'yodelsis.sama', 47, 'Yodelsis Sama', '2018-02-28', 'Revisar el navegador que dice que no tiene internet pero si tiene correo y ya comprobe la contraseña y funciona bien. Hay otros usuarios que tambien tienen problemas.', 1, 3, 26, 8, '2018-02-28'),
(444, 'maria.goberna', 20, 'Maria de la C. Goberna Perdomo', '2018-03-01', 'Creación de perfil de usuario, configurar AvilaDocPro', 1, 2, 10, 5, '2018-03-02'),
(445, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2018-03-01', 'Favor revisar monitor, o reponer ', 1, 3, 42, 8, '2018-03-05'),
(446, 'ivon.alfonso', 40, 'Ivon Alfonso', '2018-03-01', 'No puede cambiar la contraseña.', 1, 5, 37, 5, '2018-03-01'),
(447, 'teresa.granadillo', 6, 'Teresa Granadillo', '2018-03-01', 'Se precisa revisión a la PC de la Secretaria de la Dirección General pues  no enciende', 1, 3, 1, 4, '2018-03-02'),
(448, 'yamine.bertran', 40, 'Yamine Bertrán', '2018-03-01', 'Importar el archivo pst de la máquina que tenía antes para una nueva y ponerle en el navegador el acceso al sistema colaboración (master.mincex.cu)', 1, 2, 29, 5, '2018-03-01'),
(449, 'ania.fernandez', 30, 'Ania Ferandez', '2018-03-01', 'Revisar la conexion de la impresora ...', 1, 11, 29, 9, '2018-03-02'),
(450, 'dianet.gonzalez', 32, 'Dianet Gonzalez', '2018-03-02', 'Se solicita revisar la computadora de la Secretaria del Dpto Administrativo que se apagó sola', 1, 11, 29, 5, '2018-03-02'),
(451, 'olga.guedes', 32, 'Olga Maria', '2018-03-02', 'La pc no enciende', 1, 11, 1, 5, '2018-03-02'),
(452, 'ramiro.machado@mincex.cu', 37, 'Ramiro Alberto MAchado Gonzalez', '2018-03-02', 'PC abre pero no permite hacer ninguna operación.', 1, 3, 16, 7, '2018-03-05'),
(453, 'estela.pinos', 29, 'Estela Pino', '2018-03-05', 'Instalar la impresora.', 1, 2, 11, 9, '2018-03-06'),
(454, 'estela.pinos', 29, 'Estela Pinos', '2018-03-05', 'Instalar  Impresora.', 1, 2, 29, 9, '2018-03-05'),
(455, 'inzulindia.simpson', 10, 'Inzulindia Simpson', '2018-03-06', 'solicito revision de la máquina que no se quiere copiar y pegar, es la maquina secreta, ', 1, 1, 29, 6, '2018-03-08'),
(456, 'madelin,olivera', 3, 'Madelin Olivera', '2018-03-06', 'No enciende la maquina', 1, 11, 16, 5, '2018-03-06'),
(457, 'olga .guedes', 32, 'olga maria guedes', '2018-03-06', 'cambiar la fuente por una nueva que esta aqui', 1, 11, 1, 5, '2018-03-06'),
(458, 'jantonio.concepcion', 20, 'José Antonio Concepcion Rangel', '2018-03-06', 'A partir de la visita de Yida para tema funcionamiento de las UPS se precisó la necesidad de poner bateria:\r\n- a UPS de la OCIC y \r\n- a UPS de la oficina del especialista de la dirección general.', 1, 13, 29, 5, '2018-03-06'),
(459, 'luvania.hinojosa', 28, 'Luvania Hinojosa', '2018-03-06', 'La Licencia de Windows 10 expiró.\r\nOutlook tiene un certificado de seguridad que no se puede comprobar\r\nActualizar la licencia de Kaspersky en las aulas \r\n', 1, 16, 24, 1, '2018-03-06'),
(460, 'luvania.hinojosa', 28, 'Luvania Hinojosa', '2018-03-06', 'Urge instalar en la maquina # 25 del laboratorio (aula de Lugo) el Project\r\nConfigurar las máquinas y la impresora a través de la red\r\nEn el aula E y la Gerencial no hay acceso a Alfresco', 1, 16, 29, 1, '2018-03-07'),
(461, 'luvania.hinojosa', 28, 'Luvania Hinojosa', '2018-03-06', 'El certificado de seguridad de outlook no se reconoce.', 1, 16, 21, 1, '2018-03-06'),
(462, 'gretel.molina', 28, 'Gretel Molina', '2018-03-06', 'Instalar una Impresora', 1, 16, 11, 1, '2018-03-09'),
(463, 'maria.emilia', 33, 'Maria Emilia', '2018-03-06', 'La máquina se apaga constantemente', 1, 2, 1, 5, '2018-03-06'),
(464, 'liliana.ramos', 28, 'liliana ramos gutierrez', '2018-03-07', 'cable de red roto ', 1, 17, 43, 1, '2018-03-07'),
(465, 'berta.jimenez', 28, 'berta jiménez cabrera', '2018-03-07', 'Cambio de un servidor nuevo de la Base de Datos\r\nInstalar Tarjeta de Red Externa Para la Base de Datos. Máquina Bertica\r\nUna vez puesta la tarjeta instalar todo el sistema de la misma.\r\nContratar servicio de un nuevo resideño de la Base de Datos.\r\n', 0, NULL, NULL, 1, NULL),
(466, 'yodelsis.sama', 47, 'yodelsis sama', '2018-03-07', 'buenos dias necesitamos que vengan arreglar la impresora que no esta funcionando y la necesitamos muchas gracias', 1, 3, 26, 8, '2018-03-08'),
(467, 'berta.jimenez', 28, 'berta jiménez cabrera', '2018-03-07', 'En la máquina que está puesta para el año 2017 me dice que hay que actualizar el kasperski que estoy en riesgo de perder la información', 1, 17, 29, 1, '2018-03-08'),
(468, 'omar.galego', 46, 'Omar Galego Florez', '2018-03-07', 'Nuevo Perfil de usuario', 1, 2, 36, 9, '2018-03-07'),
(469, 'yennifer.nunes', 33, 'Yennifer Nuñez Pacheco', '2018-03-07', 'Nuevo Perfil de usuario', 1, 2, 10, 5, '2018-03-08'),
(470, 'teresa.oramas', 11, 'Teresa Oramas', '2018-03-07', 'Revisar impresora de la Dirección, da error y no imprime', 1, 3, 11, 8, '2018-03-08'),
(471, 'teresa.oramas', 11, 'Teresa Oramas', '2018-03-07', 'Revisar impresora de la OCIC, presenta problemas', 1, 13, 29, 8, '2018-03-15'),
(472, 'Omar Galego', 46, 'Omar galego ', '2018-03-07', 'Tengo dificultades con el acceso a Internet', 1, 2, 36, 9, '2018-03-07'),
(473, 'sara', 44, 'Sara', '2018-03-07', 'Revisar el kaspersky, las bases de datos obsoletas', 1, 3, 26, 8, '2018-03-08'),
(474, 'juaquin.cabada', 47, 'Julio Joaquin Cabada Ferrera', '2018-03-07', '7-3-2018\r\nLa impresora está como mareada, a pesar de que le cambiamos el Toner, nos sigue diciendo  "reemplazar el Toner" y no podemos imprimir nada.\r\nes una impresora de las Chinas.\r\nNecesiamos que la revisen a ver si reprogramandola esa se reajusta.\r\nSaludos, \r\n', 1, 3, 44, 8, '2018-03-08'),
(475, 'yulieth.brinas', 28, 'Yulieth Briñas Cera', '2018-03-08', 'Tenemos problemas con el toner de la impresora. Por favor pudiera cambiarlo.', 1, 17, 44, 1, '2018-03-08'),
(476, 'roberto.alvarez', 28, 'Roberto alvarez', '2018-03-08', 'Necesito cambiar un back up de lugar', 1, 16, 45, 1, '2018-03-09'),
(477, 'mabel.hernandez', 33, 'Mabel', '2018-03-08', 'La Maquina no enciende', 1, 11, 16, 5, '2018-03-08'),
(478, 'dilyara.ramos', 10, 'Dilyara Ramos', '2018-03-08', 'Cambiar la contraseña del correo en el Outlook', 1, 2, 18, 6, '2018-03-12'),
(479, 'pedro.perez', 11, 'Pedro Peréz', '2018-03-08', 'La PC no enciende', 1, 3, 16, 8, '2018-03-09'),
(480, 'iris.cruz', 28, 'Iris Cruz Gómez', '2018-03-09', 'Mi PC no tiene sonido', 1, 16, 26, 1, '2018-03-09'),
(481, 'isabel.gonzalez', 44, 'isabel gonzale cossio', '2018-03-09', 'la maquina no da video', 1, 3, 16, 8, '2018-03-12'),
(482, 'iraida.gonzales', 33, 'Iraida Gonzalez', '2018-03-09', 'Las computadoras del departamento no tienen conexion con la impresoras, no podemos imprimir.', 1, 11, 29, 5, '2018-03-12'),
(483, 'nicolai.rodriguez', 3, 'Nicolai', '2018-03-09', 'Problemas con la configuración del navegador', 1, 13, 18, 5, '2018-03-09'),
(484, 'nicolai.rodriguez', 3, 'Nicolai Rodríguez', '2018-03-09', 'Problema con la Contraseña para acceder a Internet', 1, 13, 18, 5, '2018-03-09'),
(485, 'xiomara.salazar', 9, 'xiomara', '2018-03-09', 'Mi maquina necesita micro hace cinco meses', 1, 11, 29, 6, '2018-03-12'),
(486, 'omar.galego', 46, 'Omar galego', '2018-03-12', 'El Outloook no esta enviando ni recibiendo mensajes, manifiesta Error al conectar con la base de datos de outlook.', 1, 2, 29, 9, '2018-03-12'),
(487, 'raciel.proenza', 20, 'Raciel Proenza Rodriguez', '2018-03-12', 'la PC no enciende y , tiene problemas con mouse', 1, 11, 16, 5, '2018-03-12'),
(488, 'alejandro.montano', 28, 'Alejandro Montano Godinez ', '2018-03-12', 'Problema en el usuario y contraseña de INTERNET', 1, 16, 18, 1, '2018-03-12'),
(489, 'ingrid.mora', 28, 'Ingrid Mora ', '2018-03-12', 'Problema de máquina, cargar Window, PC Laura.', 1, 17, 7, 1, '2018-03-12'),
(490, 'ingrid.mora', 28, 'Ingrid Mora', '2018-03-12', 'Reportar la impresora multifunción CANON.', 1, 17, 11, 1, '2018-03-15'),
(491, 'maria.portilla', 28, 'María de los Ángeles Portilla', '2018-03-12', 'Problemas con la Pc No. 2 del Salón de profesores de Idiomas. la máquina no enciende.', 1, 17, 23, 1, '2018-03-12'),
(492, 'jennymary', 28, 'Jenny Mary Sánchez Labrada', '2018-03-12', 'Problemas con la PC, lenta, se bloquea el sistema operativo, no deja imprimir desde la red.', 1, 17, 9, 1, '2018-03-12'),
(493, 'damicela.naranjo', 28, 'Damicela Naranjo', '2018-03-12', 'La máquina no enciende.', 1, 17, 23, 1, '2018-03-12'),
(494, 'maria.portilla', 28, 'María de los Ángeles Portilla', '2018-03-12', 'La impresora no imprime, dice que tiene atasco de papel, cuando no lo tiene realmente. Solicito diagnóstico de Impresora', 1, 17, 31, 1, '2018-03-12'),
(495, 'maria.goberna', 20, 'Maria de la C. Goberna Perdomo', '2018-03-12', 'PC no enciende ', 1, 2, 16, 5, '2018-03-14'),
(496, 'yulian.reyes', 40, 'Yulian Mabel Reyes Caballero ', '2018-03-12', 'Revisar PC que será instalada en RED SEGURA y conectar a la red\r\nVer a Yulian Puerta 505 ', 1, 2, 6, 5, '2018-03-13'),
(497, 'raciel.proenza', 20, 'Raciel Proenza Rodriguez', '2018-03-13', 'Colocar batería nueva al Backop de la PC\r\nPuerta 506 ', 1, 11, 30, 5, '2018-03-13'),
(498, 'mabel.hernandez', 33, 'Mabel Hernandez', '2018-03-13', 'No tengo conexión con la impresora.', 1, 2, 11, 5, '2018-03-13'),
(499, 'dianet.gonzalez', 51, 'Dianet Gonzalez Mederos', '2018-03-13', 'Configurar impresora oficina del director', 1, 11, 26, 5, '2018-03-13'),
(500, 'teresa.oramas', 11, 'Teresa Oramas', '2018-03-14', 'No puedo escanear, sale el siguiente cuadro:  "Error al interactuar con el escanesr: el escaner seleccionado no se ha encontrado.\r\n', 1, 3, 12, 8, '2018-03-15'),
(501, 'yusel.arias@mincex.cu', 43, 'Yusel', '2018-03-14', 'NO FUNCIONA EL CORREO NI LA INTERNET.', 1, 3, 14, 7, '2018-03-16'),
(502, 'maria.arteaga', 33, 'Maria Emilia Arteaga', '2018-03-14', 'Ya se encuentra la pieza en el departamento.Estoy en espera de que sea puesta.', 1, 2, 23, 5, '2018-03-14'),
(503, 'ingrid.mora', 28, 'Ingrid Mora', '2018-03-14', 'Necesito que se arregle la PC-1de estudiante, tiene roto el mouse.', 1, 17, 29, 1, '2018-03-15'),
(504, 'carmen.zaldivar', 17, 'Carmen Zaldivar', '2018-03-15', 'Problemas con la apertura y ejecución de Micrososoft Word', 1, 11, 40, 6, '2018-03-16'),
(505, 'antonio.salinas', 28, 'Antonio Salinas Gamarra', '2018-03-15', 'No tengo conexión en INTERNET', 1, 16, 43, 1, '2018-03-16'),
(506, 'Lourdes Rivera', 8, 'Lourdes Rivera O´Reilly', '2018-03-16', 'Cambiar información de una máquina a otra (de María Julia a la computadora de Yanetzis), favor lo más rápido posible', 1, 3, 32, 8, '2018-03-16'),
(507, 'jessica.lugo', 17, 'Jessica Lugo Sardiñas', '2018-03-16', 'una de mis maquinas clasificadas esta muy lenya y me imposibilita el trabajo ya q se bloquea, necesito que me chequeen esto de ser posible lo mas rapido q puedan', 0, NULL, NULL, 6, NULL),
(508, 'antonio.salinas', 28, 'Antonio Salinas Gamarra', '2018-03-16', 'La licencia de Windows pide ser cambiada', 1, 16, 46, 1, '2018-03-16'),
(509, 'luvania.hinojosa', 28, 'Luvania Hinojosa Rodriguez', '2018-03-16', 'Licencia de Windows 10 expiró', 0, NULL, NULL, 1, NULL),
(510, 'luvania.hinojosa', 28, 'Luvania Hinojosa Rodriguez', '2018-03-16', 'kaspersky no se actualiza automáticamente', 0, NULL, NULL, 1, NULL),
(511, 'luvania.hinojosa', 28, 'Luvania Hinojosa Rodriguez', '2018-03-16', 'Outlook informa que el certificado de seguridad no se puede comprobar', 1, 16, 29, 1, '2018-03-20'),
(512, 'luvania.hinojosa', 28, 'Luvania Hinojosa Rodriguez', '2018-03-16', 'actualizar la licencia de Kaspersky en las aulas', 0, NULL, NULL, 1, NULL),
(513, 'dianet.gonzalez', 51, 'Dianet Gonzalez', '2018-03-16', 'Solicito actualización del antivirus de la máquina q se encuentra en los Salones de Casa de Protocolo 1ra y 18.', 0, NULL, NULL, 5, NULL),
(514, 'teresa.oramas', 11, 'Teresa Oramas', '2018-03-16', 'Favor revisar la impresora de la Secretaria, no imprime\r\n ', 1, 3, 11, 8, '2018-03-20'),
(515, 'ibis.leon@mincex.cu', 28, 'ibis león', '2018-03-19', 'La máquina no abre', 1, 17, 26, 1, '2018-03-19'),
(516, 'ingrid.mora', 28, 'Ingrid Mora', '2018-03-19', 'Necesito que me cambie el mouse de la máquina de Registro de Usuarios, del centro de Documentación.', 0, NULL, NULL, 1, NULL),
(517, 'yolanda.alcalde', 21, 'Yolanda Alcalde', '2018-03-19', 'Limpiar cache de navegador revisar configuracion.', 1, 4, 36, 8, '2018-03-19'),
(518, 'alicia.rodriguez', 28, 'Alicia Rodríguez Valdes', '2018-03-20', 'Mi máquina dice reparar windows y sala una barra', 1, 16, 9, 1, '2018-03-20'),
(519, 'jesus.wade', 11, 'Jesus Wade', '2018-03-20', 'configuración de la pc', 1, 15, 10, 8, '2018-03-20'),
(520, 'rene.garcia', 18, 'René García', '2018-03-20', 'actualizar el microsoft office', 1, 15, 40, 8, '2018-03-20'),
(521, 'maria.goberna', 20, 'María Goberna', '2018-03-20', 'Poner el AvilaDocPro', 0, NULL, NULL, 5, NULL),
(522, 'ofelia.arteaga', 27, 'ofelia.arteaga', '2018-03-20', ' NO TIENEN INTERNET OFELIA ARTEAGA  CARDENAS Y GRICELDA LEFRIU.', 1, 3, 14, 7, '2018-03-20'),
(523, 'rarmiro', 37, 'ramiro machado', '2018-03-20', 'la máquina que está en red no quiere encender', 0, NULL, NULL, 7, NULL),
(524, 'ivania.bakura', 28, 'Ivania Bakura torres', '2018-03-20', 'Desde hace tiempo y hasta hoy, cada vez que enciendo la computadora me sale el American Megatrends y no realiza ninguna función.  Tengo que dar F2, escape y aceptar con “yes”.  Cuando comienza el proceso, para iniciar la sección, tengo que esperar hasta el final, caso contrario la fecha aparece es del año 2011. ', 0, NULL, NULL, 1, NULL),
(525, 'ivania.bakura', 28, 'Ivania Bakura torres', '2018-03-20', 'Continuamente, no pasan más de 20 mínutos que trabajo en el Correo y al solicitar de nuevo su uso, tengo que hacer todo el proceso de usuario y volver a entrar. Disculpen pero no entiendo mucho de los procesos.', 0, NULL, NULL, 1, NULL),
(526, 'rafaela.morales', 10, 'Rafaela Morales', '2018-03-20', 'solicito revision de la computadora para que ella conecte su red de la impresora para que pueda imprimir\r\n', 0, NULL, NULL, 6, NULL),
(527, 'Ramon Molina', 5, 'ramon.molina', '2018-03-20', 'La PC no enciende. Revisar urgente', 0, NULL, NULL, 6, NULL),
(528, 'patricia.garcía', 18, 'Patricia García', '2018-03-21', 'La Compañera Patricia García se incorporó de Licencia de Maternidad y se hace necesario crearle una seción en la máquina que está utilizando y configurarle nuevamente su correo.', 0, NULL, NULL, 8, NULL),
(529, 'patricia.garcia', 18, 'Patricia Garcia', '2018-03-21', 'Configurar Perfil de usuario en otra PC', 0, NULL, NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tecnico`
--

CREATE TABLE IF NOT EXISTS `tecnico` (
`id_tecnico` int(11) NOT NULL,
  `tecnico` varchar(255) NOT NULL,
  `estado_tecnico` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tecnico`
--

INSERT INTO `tecnico` (`id_tecnico`, `tecnico`, `estado_tecnico`) VALUES
(1, 'Luis Alberto Teran Anderson', 0),
(2, 'Yidamaray Speck', 0),
(3, 'Ernesto Duran', 0),
(4, 'Alejandro Rodriguez Tamayo', 0),
(5, 'Alexis Janero Moliner', 0),
(6, 'Ariagna Caridad Oramas Interian', 1),
(7, 'Arianna Díaz Pérez', 0),
(8, 'Aymee Castillo Pozo', 0),
(9, 'Carlos Enriques Ruiz Cruz', 1),
(10, 'Daynet Núñez Valdés', 0),
(11, 'José Carlos Torres Aguilar', 0),
(12, 'Ricardo Arias', 0),
(13, 'Claudia De Sola Zamora', 0),
(14, 'Camilo Garcia Duquesne', 0),
(15, 'Ibrahim Tamayo Chaveco', 0),
(16, 'Pablo Reinoso Amaro', 0),
(17, 'David Pérez Valdés', 0);

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
(2, 'Software', 'Actualización de Licencia Kaspersky'),
(3, 'Sistema', 'Nuevo Usuario EXACT'),
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
(20, 'Software', 'En Espera de Respuesta de los Especialista de DESOFT. Sistema de Nomenclatura'),
(21, 'Software', 'Problemas con la Configuración del Correo'),
(22, 'Hardware', 'Sobrecalentamiento del Microprocesador'),
(23, 'Hardware', 'Máquina rota - Upgrade'),
(24, 'Software', 'Instalación de Software'),
(25, 'Hardware', 'Puerto PS/2 roto'),
(26, 'Software', 'Problemas de Configuración'),
(27, 'Software', 'Configurar Libreta de Direcciones'),
(28, 'Software', 'Actualizar antivirus'),
(29, 'Software', 'NO PROCEDE'),
(30, 'Hardware', 'Cambiar baterias de UPS'),
(31, 'Hardware', 'Impresora con problemas (Hay que llevar a arreglar)'),
(32, 'Software', 'Copiar Información'),
(33, 'Hardware', 'Realizar dictamen técnico'),
(34, 'Hardware', 'Mantenimiento PC'),
(35, 'Software', 'Cambio contraseña - Máquina secreta'),
(36, 'Hardware', 'Negligencia del usuario'),
(45, 'Hardware', 'Instalación de Backup'),
(40, 'Software', 'Activar Office'),
(39, 'Hardware', 'Swich Roto'),
(41, 'Hardware', 'Mouse roto'),
(42, 'Hardware', 'Cable VGA Roto'),
(43, 'Hardware', 'Punto de Red'),
(44, 'Hardware', 'Cambio de Toner'),
(46, 'Software', 'Activar Windows');

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
