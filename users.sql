-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2022 a las 19:39:55
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorized`
--

CREATE TABLE `authorized` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(30) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `token` varchar(500) NOT NULL DEFAULT 'UNVERIFIED',
  `score` int(4) NOT NULL DEFAULT 0,
  `scoreNow` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authorized`
--

INSERT INTO `authorized` (`username`, `password`, `email`, `imagen`, `nombre`, `apellido`, `token`, `score`, `scoreNow`) VALUES
('Micapony', '6e34746dfe6e94dd496d165ede8f0eb9', 'r.bordon@hotmail.com.ar', 'vsqnemdsrtzdabbjddfw', 'Micaela', 'Caniso', 'VERIFIED', 70, 70),
('JuanCarlos', '8eb96ef6923848f988370a0783561dbf', 'riky09@hotmail.es', 'l3ezqbfyieorndvdtfl0', 'Juan', 'Carlos', 'VERIFIED', 80, 80),
('RikyBordon', '437297941fa2ae39a8c4500c7d1e7f4f', 'rikyyy09@gmail.com', 'jaxezgugeywddmv3liz8', 'Ricardo', 'Bordon', 'VERIFIED', 20, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorized`
--
ALTER TABLE `authorized`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
