-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-12-2017 a las 10:25:05
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eg_roles`
--
ALTER TABLE `eg_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `eg_users`
--
ALTER TABLE `eg_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eg_users`
--
ALTER TABLE `eg_users`
  ADD CONSTRAINT `eg_users_ibfk_1` FOREIGN KEY (`nu_rol`) REFERENCES `eg_roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
