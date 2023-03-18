-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-03-2023 a las 01:18:58
-- Versión del servidor: 10.6.7-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `svbdqa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_tabla_menu` int(11) NOT NULL,
  `id_tabla_padre` int(11) DEFAULT NULL,
  `nivel` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `titulo` varchar(64) NOT NULL,
  `desc_icono` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_tabla_menu`, `id_tabla_padre`, `nivel`, `id_rol`, `id_modulo`, `titulo`, `desc_icono`) VALUES
(1, NULL, 0, 1, 1, 'Menu Principal', 'icono ejemplo'),
(2, NULL, 0, 1, 1, 'Menu Principal 0.9086997415020128', 'icono ejemplo'),
(3, NULL, 0, 1, 1, 'Menu Principal 0.3341045904290905', 'icono ejemplo'),
(4, NULL, 0, 1, 1, 'Menu Principal 0.44165720645492634', 'icono ejemplo'),
(5, NULL, 0, 1, 1, 'Menu Principal 0.5527319652519487', 'icono ejemplo'),
(6, NULL, 0, 1, 1, 'Menu Principal 0.489712194064364', 'icono ejemplo'),
(7, NULL, 0, 1, 1, 'Menu Principal 0.5528978030689972', 'icono ejemplo'),
(8, NULL, 0, 1, 1, 'Menu Principal 0.44776713237889776', 'icono ejemplo'),
(9, NULL, 0, 1, 1, 'Menu Principal 0.348552668791779', 'icono ejemplo'),
(10, NULL, 0, 1, 1, 'Menu Principal 0.2632834457450392', 'icono ejemplo'),
(11, 1, 1, 1, 1, 'Menu Principal 0.5265624081032001', 'icono ejemplo'),
(12, 2, 1, 1, 1, 'Menu Principal 0.7669770100777754', 'icono ejemplo'),
(13, 2, 1, 1, 1, 'Menu Principal 0.2551978568129222', 'icono ejemplo'),
(14, 3, 1, 1, 1, 'Menu Principal 0.9750582845649294', 'icono ejemplo'),
(15, 3, 1, 1, 1, 'Menu Principal 0.10969788311952527', 'icono ejemplo'),
(16, 1, 1, 1, 1, 'Menu Principal 0.6557575833571679', 'icono ejemplo'),
(17, 2, 1, 1, 1, 'Menu Principal 0.8728553772651175', 'icono ejemplo'),
(18, 2, 1, 1, 1, 'Menu Principal 0.3970041669877285', 'icono ejemplo'),
(19, 3, 1, 1, 1, 'Menu Principal 0.36645473387693495', 'icono ejemplo'),
(20, 3, 1, 1, 1, 'Menu Principal 0.6412611991551344', 'icono ejemplo'),
(21, 11, 2, 1, 1, 'Menu Principal 0.6891527927379616', 'icono ejemplo'),
(22, 12, 2, 1, 1, 'Menu Principal 0.9636617507447133', 'icono ejemplo'),
(23, 12, 2, 1, 1, 'Menu Principal 0.7508504062433266', 'icono ejemplo'),
(24, 19, 2, 1, 1, 'Menu Principal 0.8632668097161379', 'icono ejemplo'),
(25, 19, 2, 1, 1, 'Menu Principal 0.06378286058435483', 'icono ejemplo'),
(26, 19, 2, 1, 1, 'Menu Principal 0.7291139045070055', 'icono ejemplo'),
(27, 19, 2, 1, 1, 'Menu Principal 0.454220971515608', 'icono ejemplo'),
(28, 19, 2, 1, 1, 'Menu Principal 0.08376317479066847', 'icono ejemplo'),
(29, 19, 2, 1, 1, 'Menu Principal 0.05615299014016333', 'icono ejemplo'),
(30, 29, 3, 1, 1, 'Menu Principal 0.2435441177743898', 'icono ejemplo'),
(31, 29, 3, 1, 1, 'Menu Principal 0.5253893812423474', 'icono ejemplo'),
(32, 29, 3, 1, 1, 'Menu Principal 0.8963145836222122', 'icono ejemplo'),
(33, 29, 3, 1, 1, 'Menu Principal 0.9054048051176637', 'icono ejemplo'),
(34, 29, 3, 1, 1, 'Menu Principal 0.8380803054553273', 'icono ejemplo'),
(35, 29, 3, 1, 1, 'Menu Principal 0.47418714265729034', 'icono ejemplo'),
(36, 29, 3, 1, 1, 'Menu Principal 0.8566948276541148', 'icono ejemplo'),
(37, 29, 3, 1, 1, 'Menu Principal 0.9034745915825242', 'icono ejemplo'),
(38, 29, 3, 1, 1, 'Menu Principal 0.6361537237057031', 'icono ejemplo'),
(39, 29, 3, 1, 1, 'Menu Principal 0.47034487451458806', 'icono ejemplo'),
(40, 29, 3, 1, 1, 'Menu Principal 0.4432632321894758', 'icono ejemplo'),
(41, 29, 3, 1, 1, 'Menu Principal 0.8052815681372597', 'icono ejemplo'),
(42, 29, 3, 1, 1, 'Menu Principal 0.6966181748515164', 'icono ejemplo'),
(43, 29, 3, 1, 1, 'Menu Principal 0.06724620057944786', 'icono ejemplo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_tabla_menu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_tabla_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;









/*
-------------------------------------------------------------
Posibles implementaciones para obtener el menu

-------------------------------------------------------------
*/








SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 0
    ) MPR
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1 ) SM1 ON SM1.id_tabla_padre = MPR.id_tabla_menu
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 2) SM2 ON SM2.id_tabla_padre = SM1.id_tabla_menu
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 3 ) SM3 ON SM3.id_tabla_padre = SM2.id_tabla_menu
WHERE	MPR.`id_tabla_menu` = 1        
ORDER by MPR.id_tabla_menu ASC        






SELECT	MPR.*
FROM	menu MPR
ORDER	BY MPR.id_tabla_padre,MPR.nivel ASC





;
SELECT	FUN.ID_NIVEL, FUN.DES_FUNCIONALIDAD, MPR.titulo, MPR.nivel
FROM	menu MPR

INNER	JOIN svc_funcionalidad FUN ON FUN.ID_NIVEL = MPR.nivel
GROUP	by MPR.titulo, MPR.nivel
ORDER	BY MPR.nivel ASC 

;
/* QUERY PARA OBTENER LOS SUBMENUS */
SELECT	MP1.*	
FROM	menu MPR
INNER JOIN	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1
    ) MP1 ON MP1.id_tabla_padre = MPR.id_tabla_menu
WHERE	MPR.id_tabla_menu = 1    -- VARIABLE QUE SE VA A ITERAR



SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 0
    ) MPR
WHERE	MPR.id_tabla_menu = 1    
UNION ALL 
SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1
    ) MP1
WHERE	MP1.id_tabla_padre = 1
UNION ALL 

SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 2
    ) MP2
WHERE	MP2.id_tabla_padre = 11
;








SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 0
    ) MPR
    ;
SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1
    ) MP1
WHERE	MP1.id_tabla_padre  =1  












;
SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 0
    ) MPR
WHERE	MPR.id_tabla_menu = 1    
UNION ALL 
SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1
    ) MP1
    
UNION ALL 
SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 2
    ) MP2    
;


















SELECT	*
FROM	(
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 0
    ) MPR
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 1 ) SM1 ON SM1.id_tabla_padre = MPR.id_tabla_menu
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 2) SM2 ON SM2.id_tabla_padre = SM1.id_tabla_menu
LEFT	JOIN (
        SELECT	men.*
        FROM	menu men
        WHERE	men.nivel = 3 ) SM3 ON SM3.id_tabla_padre = SM2.id_tabla_menu
WHERE	MPR.`id_tabla_menu` = 1        
ORDER by MPR.id_tabla_menu ASC        
