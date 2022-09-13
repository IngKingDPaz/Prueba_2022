-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 31-08-2022 a las 03:35:14
-- Versión del servidor: 5.6.35
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g45_practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

DROP TABLE IF EXISTS `cita`;
CREATE TABLE IF NOT EXISTS `cita` (
  `Consecutivo` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` varchar(15) NOT NULL,
  `Codigo_Medico` int(11) NOT NULL,
  `iden_medico` int(11) NOT NULL,
  `Id_Paciente` int(11) NOT NULL,
  PRIMARY KEY (`Consecutivo`),
  KEY `FK_medico_cita` (`Codigo_Medico`,`iden_medico`),
  KEY `Fk_Paciente_cita` (`Id_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`Consecutivo`, `Fecha`, `Codigo_Medico`, `iden_medico`, `Id_Paciente`) VALUES
(1, '2022/08/29', 10, 123, 1),
(2, '2022/08/30', 20, 456, 1),
(3, '2022/08/31', 50, 789, 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `FK_medico_cita` FOREIGN KEY (`Codigo_Medico`,`iden_medico`) REFERENCES `medico` (`Codigo_Medico`, `Identificacion`),
  ADD CONSTRAINT `Fk_Paciente_cita` FOREIGN KEY (`Id_Paciente`) REFERENCES `paciente` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
