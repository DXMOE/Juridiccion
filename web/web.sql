-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-04-2018 a las 06:27:42
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id3907260_jsescarcega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eg_roles`
--

CREATE TABLE `eg_roles` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eg_roles`
--

INSERT INTO `eg_roles` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eg_users`
--

CREATE TABLE `eg_users` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `paterno` varchar(512) DEFAULT NULL,
  `materno` varchar(512) DEFAULT NULL,
  `usuario` varchar(256) NOT NULL,
  `contraseña` varchar(512) DEFAULT NULL,
  `correo` varchar(512) DEFAULT NULL,
  `telefono` varchar(128) DEFAULT NULL,
  `direccion` varchar(256) DEFAULT NULL,
  `nu_rol` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eg_users`
--

INSERT INTO `eg_users` (`id`, `nombre`, `paterno`, `materno`, `usuario`, `contraseña`, `correo`, `telefono`, `direccion`, `nu_rol`) VALUES
(1, 'Eduardo', 'Diaz', 'Martinez', 'administrador', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrador@institucion.org', '1234567890', 'Calle 1234', 1),
(2, 'Juan', 'Lopez', 'Perez', 'empleado', 'f9f011a553550aef31a8ee2690e1d1b5f261c9ff', 'empleado@institucion.org', '9876543210', 'Calle 678', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato_talleres`
--

CREATE TABLE `formato_talleres` (
  `id` bigint(20) NOT NULL,
  `nu_user` bigint(20) NOT NULL,
  `localidad` varchar(256) DEFAULT NULL,
  `municipio` varchar(256) DEFAULT NULL,
  `determinante` varchar(256) DEFAULT NULL,
  `unidad_salud` varchar(256) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total_de_asistentes` decimal(10,0) DEFAULT NULL,
  `nombre_taller` varchar(256) DEFAULT NULL,
  `dirigido` varchar(256) DEFAULT NULL,
  `objetivo_general` text,
  `contenido_tematico` varchar(256) DEFAULT NULL,
  `objetivos_especificos` text,
  `tecnicas_didacticas` text,
  `auxiliares_didacticos` text,
  `ponente` varchar(256) DEFAULT NULL,
  `images` text,
  `hora_inicio` datetime DEFAULT NULL,
  `hora_final` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formato_talleres`
--

INSERT INTO `formato_talleres` (`id`, `nu_user`, `localidad`, `municipio`, `determinante`, `unidad_salud`, `fecha`, `total_de_asistentes`, `nombre_taller`, `dirigido`, `objetivo_general`, `contenido_tematico`, `objetivos_especificos`, `tecnicas_didacticas`, `auxiliares_didacticos`, `ponente`, `images`, `hora_inicio`, `hora_final`) VALUES
(1, 1, 'La Asunción', 'Escárcega', 'Salud Sexual y Reproductiva', 'R-6 PEC', '2017-12-11', 15, 'Embarazo, parto y puerperio, climaterio masculino y femenino y prevención del cáncer.', 'Población general', '<p>\r\n	Sensibilizar a las y los asistentes acerca de la importancia del control prenatal, las caracteristicas del climaterio masculino y femenino, y las acciones de prevencion del cancer de mama, cacu y cancer de prostata.</p>\r\n', 'Embarazo y maternidad en riesgo', '<ul>\r\n	<li>\r\n		Sensibilizar a las y los asistentes sobre la importancia del control prenatal, los signos de alama y la importancia de una buena alimentacion durante el embarazo.</li>\r\n</ul>\r\n', '<p>\r\n	Exposici&oacute;n verbal</p>\r\n', '<p>\r\n	Rotafolios</p>\r\n', 'Prom. Fernando Villarino López', 'a:5:{i:0;s:61:\"Captura_de_pantalla_de_2017-02-25_16-45-48_20171211094715.png\";i:1;s:61:\"Captura_de_pantalla_de_2017-04-08_05-25-57_20171211094719.png\";i:2;s:61:\"Captura_de_pantalla_de_2017-05-16_10-06-33_20171211094723.png\";i:3;s:61:\"Captura_de_pantalla_de_2017-05-16_10-06-33_20171211094728.png\";i:4;s:61:\"Captura_de_pantalla_de_2017-06-07_10-32-32_20171211094734.png\";}', '2017-12-11 10:25:00', '2017-12-11 11:25:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eg_roles`
--
ALTER TABLE `eg_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eg_users`
--
ALTER TABLE `eg_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_rol` (`nu_rol`);

--
-- Indices de la tabla `formato_talleres`
--
ALTER TABLE `formato_talleres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nu_user` (`nu_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eg_roles`
--
ALTER TABLE `eg_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `eg_users`
--
ALTER TABLE `eg_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formato_talleres`
--
ALTER TABLE `formato_talleres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eg_users`
--
ALTER TABLE `eg_users`
  ADD CONSTRAINT `eg_users_ibfk_1` FOREIGN KEY (`nu_rol`) REFERENCES `eg_roles` (`id`);

--
-- Filtros para la tabla `formato_talleres`
--
ALTER TABLE `formato_talleres`
  ADD CONSTRAINT `formato_talleres_ibfk_1` FOREIGN KEY (`nu_user`) REFERENCES `eg_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
