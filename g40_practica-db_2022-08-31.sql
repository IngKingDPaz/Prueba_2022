-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 31-08-2022 a las 01:39:28
-- Versión del servidor: 5.6.35
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g40_practica`
--
CREATE DATABASE IF NOT EXISTS `g40_practica` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `g40_practica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

DROP TABLE IF EXISTS `cita`;
CREATE TABLE IF NOT EXISTS `cita` (
  `Consecutivo` int(11) NOT NULL,
  `Fecha` varchar(15) NOT NULL,
  `Codigo_Medico` int(10) NOT NULL,
  `iden_medico` int(11) NOT NULL,
  `Id_Paciente` int(11) NOT NULL,
  PRIMARY KEY (`Consecutivo`),
  KEY `Fk_medico_cita` (`Codigo_Medico`,`iden_medico`),
  KEY `Fk_Paciente_cita` (`Id_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `Codigo_Medico` int(10) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Apellido` varchar(300) NOT NULL,
  `E_mail` varchar(300) NOT NULL,
  `Celular` int(11) NOT NULL,
  `Identificacion` int(11) NOT NULL,
  PRIMARY KEY (`Codigo_Medico`,`Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `Identificacion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `E_mail` varchar(200) NOT NULL,
  `Celular` int(11) NOT NULL,
  PRIMARY KEY (`Identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `Fk_Paciente_cita` FOREIGN KEY (`Id_Paciente`) REFERENCES `paciente` (`Identificacion`),
  ADD CONSTRAINT `Fk_medico_cita` FOREIGN KEY (`Codigo_Medico`,`iden_medico`) REFERENCES `medico` (`Codigo_Medico`, `Identificacion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
