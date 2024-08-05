-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2024 a las 06:31:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ariel_dell_ortto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(2, 'usuario', 'usuario', 'usuario', 'usuario@usuario.com', '$2y$10$BTaBJOpp/r3cOGuQv4DrBOK2t7MjgWVqJTP8W1BlSIUJSeccLTx3.', 2, 'NO'),
(3, 'cliente', 'cliente', 'cliente', 'cliente@cliente.com', '$2y$10$Zq3El3ieFJyk2wUCElofAOiqBj9aSlMVUiVEok7Y3tneKVW4oU4eW', 2, 'NO'),
(4, 'asdfa', 'asdfa', 'asdkljlk', 'alguien@admin.com', '$2y$10$rpf7qkw16/9uPuR6ScKO1.L80cKvXCgIJXsLRialIsLJA/PDbNqDi', 2, 'NO'),
(5, 'admin', 'amdmin', 'admin', 'admin@gmail.com', '$2y$10$2ZqVwqp0/Algceour3qJM.8wlwiSd0qH8J.cZVaGnG6huCrE.pY5C', 1, 'NO'),
(6, 'cliente', 'cliente', 'cliente', 'cliente@gmail.com', '$2y$10$a/tBM6tROHFGLvHWY885d.sA0IIZuyfVDVt5bvznNrlw.19MXqUwm', 2, 'NO'),
(7, 'usuario', 'usuario', 'usuario', 'usuario@gmail.com', '$2y$10$ub.YPNQEKeEYHkV3ZBap0evo6l5po.yh8PDeCdPKOuQwN.ShplE0m', 2, 'NO'),
(8, 'admin', 'admin', 'amkdlkfk', 'admin1@gmail.com', '$2y$10$Ej7NoOdgv7Dux2Nv2/xES.cN0M3eJXcZ/Rkxaya2tqkiMLIF1tuZW', 2, 'NO'),
(10, 'registro', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(12, 'registro  tetetre', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(13, 'registro  RRRRRR', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(14, 'registro  ZZZZZZZZ', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(24, 'registro  HHHHHH', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(27, 'registro  HHHHHH XXXX', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(28, 'registro  44444 HHHHHH XXXX', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(29, 'registro  55555 HHHHHH XXXX', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(30, 'registro  1111 HHHHHH XXXX', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(31, 'registro 0000 HHHHHH XXXX', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(33, 'registro fulbo', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(34, 'registro fulbo dos', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(35, 'registro fulbo treess', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(36, 'registro fulbo treess', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(37, 'registro fulbo treess', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(38, 'registro fulbo 909090 38 LLL°° 38', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(39, 'registro fulbo 909090 XXXX1°', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(40, 'registro fulbo 909090  xxxx 2°', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(41, 'registro fulbo 909090 xxx 3°', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(42, 'registro fulbo 909090 xxx xxx5°', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO'),
(43, 'registro fulbo 43', 'registro', 'registro', 'registro@gmail.com', 'cuarentaytres', 2, 'NO'),
(45, 'registro fulbo 45', 'registro', 'registro', 'registro@gmail.com', '$2y$10$m1NX2OyHZHinSJqrdIBbpu23l0OLp7SACdRuM1O0Rpza/FuWxyWUq', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
