-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2022 a las 05:38:47
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbcatering`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `IdArea` int(11) NOT NULL,
  `NomArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`IdArea`, `NomArea`) VALUES
(1, 'VENTAS'),
(2, 'BEBIDAS'),
(3, 'MARKETING');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `IdCar` int(11) NOT NULL,
  `NomCar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`IdCar`, `NomCar`) VALUES
(1, 'VENDEDOR'),
(2, 'ANALISTA'),
(3, 'PROGRAMADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comensal`
--

CREATE TABLE `comensal` (
  `IdCom` int(11) NOT NULL,
  `IdCar` int(11) NOT NULL,
  `IdArea` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `NumFot` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `FechaN` date DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comensal`
--

INSERT INTO `comensal` (`IdCom`, `IdCar`, `IdArea`, `DNI`, `NumFot`, `Nombre`, `FechaN`, `Sexo`) VALUES
(1, 1, 1, '46206480', '4620', 'ELISEO HUAMAN QUISPE', '1987-06-13', 'M'),
(2, 2, 2, '04852478', '0485', 'GERARDO SOTO BALDIVIA', '1900-11-25', 'M'),
(4, 1, 3, '48965232', '987', 'PERCY ARANDA SANCHEZ', '2003-02-25', 'M'),
(6, 2, 3, '46512', '21321', 'JUAN PEREZ', '1985-10-02', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `IdVen` int(11) NOT NULL,
  `IdPro` int(11) NOT NULL,
  `Precio` decimal(16,2) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`IdVen`, `IdPro`, `Precio`, `Cantidad`) VALUES
(1, 2, '7.00', 1),
(2, 2, '7.00', 1),
(3, 12, '9.00', 1),
(4, 2, '7.00', 1),
(5, 1, '10.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE `familia` (
  `IdFam` int(11) NOT NULL,
  `NomFam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `familia`
--

INSERT INTO `familia` (`IdFam`, `NomFam`) VALUES
(1, 'MENU'),
(3, 'SNACKS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IdPro` int(11) NOT NULL,
  `IdFam` int(11) NOT NULL,
  `NomPro` varchar(100) NOT NULL,
  `Costo` decimal(16,2) NOT NULL,
  `Precio` decimal(16,2) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdPro`, `IdFam`, `NomPro`, `Costo`, `Precio`, `Foto`) VALUES
(1, 1, 'ALMUERZO', '4.00', '10.00', ''),
(2, 1, 'CENA', '3.00', '7.00', 'cena.jpg'),
(12, 3, 'DESAYUNO', '6.00', '9.00', 'desayuno.jpg'),
(13, 3, 'chisitos', '2.00', '5.00', 'snack.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUser` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `NomUser` varchar(50) NOT NULL,
  `PasUser` varchar(50) NOT NULL,
  `TipoUser` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUser`, `Nombre`, `NomUser`, `PasUser`, `TipoUser`) VALUES
(1, 'ELISEO HUAMAN QUISPE', 'ehuaman', '123', 'A'),
(3, 'ALCIDES ROJAS', 'arojas', '321', 'U');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IdVen` int(11) NOT NULL,
  `Numero` varchar(7) NOT NULL,
  `IdCom` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `FechaR` datetime NOT NULL,
  `Importe` decimal(16,2) NOT NULL,
  `Estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`IdVen`, `Numero`, `IdCom`, `IdUser`, `Fecha`, `FechaR`, `Importe`, `Estado`) VALUES
(1, '0000001', 1, 1, '2022-05-10', '2022-05-10 23:59:07', '7.00', 'R'),
(2, '0000002', 4, 1, '2022-05-10', '2022-05-10 23:59:58', '7.00', 'R'),
(3, '0000003', 1, 1, '2022-05-11', '2022-05-11 00:00:44', '9.00', 'R'),
(4, '0000004', 1, 1, '2022-05-13', '2022-05-13 22:40:29', '7.00', 'R'),
(5, '0000005', 1, 1, '2022-05-17', '2022-05-17 22:30:29', '10.00', 'R');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ventas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ventas` (
`numero` varchar(7)
,`fecha` date
,`dni` varchar(8)
,`NumFot` varchar(20)
,`nombre` varchar(100)
,`IdPro` int(11)
,`nompro` varchar(100)
,`precio` decimal(16,2)
,`cantidad` int(11)
,`IdArea` int(11)
,`IdCar` int(11)
,`Importe` decimal(16,2)
,`NomArea` varchar(50)
,`NomCar` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ventas`
--
DROP TABLE IF EXISTS `v_ventas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ventas`  AS SELECT `v`.`Numero` AS `numero`, `v`.`Fecha` AS `fecha`, `c`.`DNI` AS `dni`, `c`.`NumFot` AS `NumFot`, `c`.`Nombre` AS `nombre`, `p`.`IdPro` AS `IdPro`, `p`.`NomPro` AS `nompro`, `d`.`Precio` AS `precio`, `d`.`Cantidad` AS `cantidad`, `c`.`IdArea` AS `IdArea`, `c`.`IdCar` AS `IdCar`, `v`.`Importe` AS `Importe`, `ar`.`NomArea` AS `NomArea`, `ca`.`NomCar` AS `NomCar` FROM (((((`venta` `v` join `comensal` `c` on(`v`.`IdCom` = `c`.`IdCom`)) join `detalleventa` `d` on(`v`.`IdVen` = `d`.`IdVen`)) join `producto` `p` on(`d`.`IdPro` = `p`.`IdPro`)) join `area` `ar` on(`ar`.`IdArea` = `c`.`IdArea`)) join `cargo` `ca` on(`ca`.`IdCar` = `c`.`IdCar`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`IdArea`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IdCar`);

--
-- Indices de la tabla `comensal`
--
ALTER TABLE `comensal`
  ADD PRIMARY KEY (`IdCom`),
  ADD KEY `IdCar` (`IdCar`),
  ADD KEY `IdArea` (`IdArea`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD KEY `IdVen` (`IdVen`),
  ADD KEY `IdPro` (`IdPro`);

--
-- Indices de la tabla `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`IdFam`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdPro`),
  ADD KEY `IdFam` (`IdFam`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUser`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IdVen`),
  ADD UNIQUE KEY `Numero` (`Numero`),
  ADD KEY `IdCom` (`IdCom`),
  ADD KEY `IdUser` (`IdUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `IdArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `IdCar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comensal`
--
ALTER TABLE `comensal`
  MODIFY `IdCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `familia`
--
ALTER TABLE `familia`
  MODIFY `IdFam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IdPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `IdVen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comensal`
--
ALTER TABLE `comensal`
  ADD CONSTRAINT `comensal_ibfk_1` FOREIGN KEY (`IdCar`) REFERENCES `cargo` (`IdCar`),
  ADD CONSTRAINT `comensal_ibfk_2` FOREIGN KEY (`IdArea`) REFERENCES `area` (`IdArea`);

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`IdVen`) REFERENCES `venta` (`IdVen`),
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`IdPro`) REFERENCES `producto` (`IdPro`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`IdFam`) REFERENCES `familia` (`IdFam`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`IdCom`) REFERENCES `comensal` (`IdCom`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `usuario` (`IdUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
