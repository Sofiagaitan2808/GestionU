-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2023 a las 04:32:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnologo2023`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `id` int(11) NOT NULL,
  `Docu` int(11) NOT NULL,
  `Nombrea` varchar(45) DEFAULT NULL,
  `Apellidoa` varchar(45) DEFAULT NULL,
  `Correoa` varchar(45) DEFAULT NULL,
  `Numcontacto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`id`, `Docu`, `Nombrea`, `Apellidoa`, `Correoa`, `Numcontacto`) VALUES
(1, 27637, 'hshghdg', 'hsdhghd', 'hdhgchg', 27327),
(4, 8374, 'hdb', 'vdhv', 'hdhcv', 9289),
(11, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(12, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(13, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(14, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(15, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(16, 8287, 'gbhdbj', 'bgqabhbd', 'bhcbghyg@gnsj.com', 7236),
(17, 17627, 'ghwsvhv', '|hygdhyg|g|', 'yhdggd@msjbhjdb', 87676),
(18, 17627, 'ghwsvhv', '|hygdhyg|g|', 'yhdggd@msjbhjdb', 87676),
(19, 17627, 'ghwsvhv', '|hygdhyg|g|', 'yhdggd@msjbhjdb', 87676),
(20, 17627, 'ghwsvhv', '|hygdhyg|g|', 'yhdggd@msjbhjdb', 87676);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `codficha` int(11) NOT NULL,
  `cantapre` int(11) NOT NULL,
  `codpro` int(11) NOT NULL,
  `doapre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`codficha`, `cantapre`, `codpro`, `doapre`) VALUES
(9, 65, 65, 1),
(29, 32, 87, 4),
(52, 20, 87, 1),
(874, 8273, 64, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `codprograma` int(11) NOT NULL,
  `nombrepro` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`codprograma`, `nombrepro`) VALUES
(34, 'adso'),
(64, 'adsi'),
(65, 'Multi'),
(87, 'cerigrafia'),
(98, 'gu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`codficha`),
  ADD KEY `codpro` (`codpro`),
  ADD KEY `doapre` (`doapre`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`codprograma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `programa` (`codprograma`),
  ADD CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`doapre`) REFERENCES `aprendiz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
