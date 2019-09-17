-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2019 a las 03:47:01
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE herbalife;
--
-- Base de datos: `herbalife`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonificacion`
--

CREATE TABLE `bonificacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `anio` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkequipo_expansion` int(10) UNSIGNED NOT NULL,
  `fkmes` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Nutrición', 1, '2019-09-07 17:29:45', '2019-09-07 17:29:45'),
(2, 'Cuidado Personal', 1, '2019-09-07 17:29:45', '2019-09-07 17:29:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Claro', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(2, 'Tigo', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(3, 'Movistar', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Alta Verapaz', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(2, 'Baja Verapaz', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(3, 'Chimaltenango', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(4, 'Chiquimula', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(5, 'Petén', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(6, 'El Progreso', 1, '2019-09-07 17:29:46', '2019-09-07 17:29:46'),
(7, 'Quiché', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(8, 'Escuintla', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(9, 'Guatemala', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(10, 'Huehuetenango', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(11, 'Izabal', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(12, 'Jalapa', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(13, 'Jutiapa', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(14, 'Quetzaltenango', 1, '2019-09-07 17:29:47', '2019-09-07 17:29:47'),
(15, 'Retalhuleu', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(16, 'Sacatepéquez', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(17, 'San Marcos', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(18, 'Santa Rosa', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(19, 'Sololá', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(20, 'Suchitepéquez', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(21, 'Totonicapán', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(22, 'Zacapa', 1, '2019-09-07 17:29:48', '2019-09-07 17:29:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuento`
--

CREATE TABLE `descuento` (
  `id` int(10) UNSIGNED NOT NULL,
  `porcentaje` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descuento`
--

INSERT INTO `descuento` (`id`, `porcentaje`, `created_at`, `updated_at`) VALUES
(1, '0.25', '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(2, '0.35', '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(3, '0.42', '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(4, '0.50', '2019-09-07 17:29:48', '2019-09-07 17:29:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_carga`
--

CREATE TABLE `detalle_carga` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkproducto` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_carga`
--

INSERT INTO `detalle_carga` (`id`, `cantidad`, `fecha_vencimiento`, `estado`, `fkpersona`, `fkproducto`, `created_at`, `updated_at`) VALUES
(1, 1000000, '2019-04-01', 1, 4, 1, '2019-09-07 17:30:35', '2019-09-07 17:30:35'),
(2, 1000000, '2019-04-02', 1, 4, 2, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(3, 1000000, '2019-04-03', 1, 4, 3, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(4, 1000000, '2019-04-04', 1, 4, 4, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(5, 1000000, '2019-04-05', 1, 4, 5, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(6, 1000000, '2019-04-06', 1, 4, 6, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(7, 1000000, '2019-04-07', 1, 4, 7, '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(8, 1000000, '2019-04-08', 1, 4, 8, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(9, 1000000, '2019-04-09', 1, 4, 9, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(10, 1000000, '2019-04-10', 1, 4, 10, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(11, 1000000, '2019-04-11', 1, 4, 11, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(12, 1000000, '2019-04-12', 1, 4, 12, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(13, 1000000, '2019-04-13', 1, 4, 13, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(14, 1000000, '2019-04-14', 1, 4, 14, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(15, 1000000, '2019-04-15', 1, 4, 15, '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(16, 1000000, '2019-04-16', 1, 4, 16, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(17, 1000000, '2019-04-17', 1, 4, 17, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(18, 1000000, '2019-04-18', 1, 4, 18, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(19, 1000000, '2019-04-19', 1, 4, 19, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(20, 1000000, '2019-04-20', 1, 4, 20, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(21, 1000000, '2019-04-21', 1, 4, 21, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(22, 1000000, '2019-04-22', 1, 4, 22, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(23, 1000000, '2019-05-01', 1, 5, 1, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(24, 1000000, '2019-05-02', 1, 5, 2, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(25, 1000000, '2019-05-03', 1, 5, 3, '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(26, 1000000, '2019-05-04', 1, 5, 4, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(27, 1000000, '2019-05-05', 1, 5, 5, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(28, 1000000, '2019-05-06', 1, 5, 6, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(29, 1000000, '2019-05-07', 1, 5, 7, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(30, 1000000, '2019-05-08', 1, 5, 8, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(31, 1000000, '2019-05-09', 1, 5, 9, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(32, 1000000, '2019-05-10', 1, 5, 10, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(33, 1000000, '2019-05-11', 1, 5, 11, '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(34, 1000000, '2019-05-12', 1, 5, 12, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(35, 1000000, '2019-05-13', 1, 5, 13, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(36, 1000000, '2019-05-14', 1, 5, 14, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(37, 1000000, '2019-05-15', 1, 5, 15, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(38, 1000000, '2019-05-16', 1, 5, 16, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(39, 1000000, '2019-05-17', 1, 5, 17, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(40, 1000000, '2019-05-18', 1, 5, 18, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(41, 1000000, '2019-05-19', 1, 5, 19, '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(42, 1000000, '2019-05-20', 1, 5, 20, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(43, 1000000, '2019-05-21', 1, 5, 21, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(44, 1000000, '2019-05-22', 1, 5, 22, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(45, 1000000, '2019-06-01', 1, 6, 1, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(46, 1000000, '2019-06-02', 1, 6, 2, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(47, 1000000, '2019-06-03', 1, 6, 3, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(48, 1000000, '2019-06-04', 1, 6, 4, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(49, 1000000, '2019-06-05', 1, 6, 5, '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(50, 1000000, '2019-06-06', 1, 6, 6, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(51, 1000000, '2019-06-07', 1, 6, 7, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(52, 1000000, '2019-06-08', 1, 6, 8, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(53, 1000000, '2019-06-09', 1, 6, 9, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(54, 1000000, '2019-06-10', 1, 6, 10, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(55, 1000000, '2019-06-11', 1, 6, 11, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(56, 1000000, '2019-06-12', 1, 6, 12, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(57, 1000000, '2019-06-13', 1, 6, 13, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(58, 1000000, '2019-06-14', 1, 6, 14, '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(59, 1000000, '2019-06-15', 1, 6, 15, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(60, 1000000, '2019-06-16', 1, 6, 16, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(61, 1000000, '2019-06-17', 1, 6, 17, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(62, 1000000, '2019-06-18', 1, 6, 18, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(63, 1000000, '2019-06-19', 1, 6, 19, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(64, 1000000, '2019-06-20', 1, 6, 20, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(65, 1000000, '2019-06-21', 1, 6, 21, '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(66, 1000000, '2019-06-22', 1, 6, 22, '2019-09-07 17:30:43', '2019-09-07 17:30:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkstock` int(10) UNSIGNED NOT NULL,
  `fkpedido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `cantidad`, `estado`, `fkstock`, `fkpedido`, `created_at`, `updated_at`) VALUES
(1, 200, 1, 1, 1, '2019-09-07 17:33:45', '2019-09-07 17:33:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_expansion`
--

CREATE TABLE `equipo_expansion` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipo_expansion`
--

INSERT INTO `equipo_expansion` (`id`, `nombre`, `porcentaje`, `created_at`, `updated_at`) VALUES
(1, 'Get Plus', '0.02', '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(2, 'Millonario', '0.04', '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(3, 'Equipo de Presidente', '0.06', '2019-09-07 17:29:51', '2019-09-07 17:29:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE `mes` (
  `id` int(10) UNSIGNED NOT NULL,
  `mes` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mes`
--

INSERT INTO `mes` (`id`, `mes`, `created_at`, `updated_at`) VALUES
(1, 'Enero', '2019-09-07 17:29:48', '2019-09-07 17:29:48'),
(2, 'Febrero', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(3, 'Marzo', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(4, 'Abril', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(5, 'Mayo', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(6, 'Junio', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(7, 'Julio', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(8, 'Agosto', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(9, 'Septiembre', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(10, 'Octubre', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(11, 'Noviembre', '2019-09-07 17:29:49', '2019-09-07 17:29:49'),
(12, 'Diciembre', '2019-09-07 17:29:50', '2019-09-07 17:29:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(163, '2014_10_12_100000_create_password_resets_table', 1),
(164, '2019_08_04_009912_create_tabla_categorias_table', 1),
(165, '2019_08_04_015009_create_tabla_productos_table', 1),
(166, '2019_08_04_015627_create_tabla_meses_table', 1),
(167, '2019_08_05_021801_create_tabla_departamentos_table', 1),
(168, '2019_08_06_022205_create_tabla_companias_table', 1),
(169, '2019_08_06_204911_create_tabla_personas_table', 1),
(170, '2019_08_06_204915_create_tabla_rols_table', 1),
(171, '2019_08_06_204919_create_users_table', 1),
(172, '2019_08_07_022518_create_tabla_descuentos_table', 1),
(173, '2019_08_07_022715_create_tabla_niveles_table', 1),
(174, '2019_08_07_022832_create_tabla_persona_niveles_table', 1),
(175, '2019_08_07_022957_create_tabla_paquete_iniciales_table', 1),
(176, '2019_08_07_023133_create_tabla_paquete_productos_table', 1),
(177, '2019_08_07_023170_tabla_paquete_iniciales_personas_table', 1),
(178, '2019_08_07_023236_create_tabla_detalle_cargas_table', 1),
(179, '2019_08_07_023342_create_tabla_stocks_table', 1),
(180, '2019_08_07_023458_create_tabla_facturas_table', 1),
(181, '2019_08_07_023616_create_tabla_detalle_ventas_table', 1),
(182, '2019_08_07_023742_create_tabla_puntos_mes_table', 1),
(183, '2019_08_07_025334_create_tabla_telefonos_table', 1),
(184, '2019_08_07_205543_create_tabla_pedido_aceptado_table', 1),
(185, '2019_08_07_205641_create_tabla_cliente_table', 1),
(186, '2019_08_08_231653_create_tabla_regalias_table', 1),
(187, '2019_08_08_231820_create_tabla_equipos_expansion_table', 1),
(188, '2019_08_08_231850_create_tabla_bonificaciones_table', 1),
(189, '2019_08_08_233332_create_tabla_pagos_asociados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkdescuento` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nombre`, `estado`, `fkdescuento`, `created_at`, `updated_at`) VALUES
(1, 'Asociado Independiente', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(2, 'Consultor Mayor', 1, 2, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(3, 'Constructor del Exito', 1, 3, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(4, 'Mayorista', 1, 4, '2019-09-07 17:29:50', '2019-09-07 17:29:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_asociado`
--

CREATE TABLE `pago_asociado` (
  `id` int(10) UNSIGNED NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `anio` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkmes` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_inicial`
--

CREATE TABLE `paquete_inicial` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paquete_inicial`
--

INSERT INTO `paquete_inicial` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Paquete No. 1', 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(2, 'Paquete No. 2', 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_inicial_persona`
--

CREATE TABLE `paquete_inicial_persona` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkpaquete_producto` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paquete_inicial_persona`
--

INSERT INTO `paquete_inicial_persona` (`id`, `estado`, `fkpersona`, `fkpaquete_producto`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 5, '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(2, 1, 10, 5, '2019-09-07 17:32:45', '2019-09-07 17:32:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_producto`
--

CREATE TABLE `paquete_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkproducto` int(10) UNSIGNED NOT NULL,
  `fkpaquete` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paquete_producto`
--

INSERT INTO `paquete_producto` (`id`, `estado`, `fkproducto`, `fkpaquete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(2, 1, 2, 1, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(3, 1, 3, 2, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(4, 1, 7, 1, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(5, 1, 10, 1, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(6, 1, 13, 2, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(7, 1, 16, 2, '2019-09-07 17:29:51', '2019-09-07 17:29:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `pagado` tinyint(1) NOT NULL DEFAULT 0,
  `fkcodigo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkpersonivel` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `fecha`, `subtotal`, `total`, `estado`, `pagado`, `fkcodigo`, `fkpersona`, `fkpersonivel`, `created_at`, `updated_at`) VALUES
(1, '2019-09-07', '1750.00', '7000.00', 1, 0, 'HER-0000010', 4, 2, '2019-09-07 17:33:06', '2019-09-07 17:33:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_aceptado`
--

CREATE TABLE `pedido_aceptado` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fkstock` int(10) UNSIGNED NOT NULL,
  `fkpedido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido_aceptado`
--

INSERT INTO `pedido_aceptado` (`id`, `cantidad`, `fkstock`, `fkpedido`, `created_at`, `updated_at`) VALUES
(1, 200, 1, 1, '2019-09-07 17:34:10', '2019-09-07 17:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_padre` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkdepartamento` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `apellido3`, `codigo`, `direccion`, `id_padre`, `email`, `estado`, `fkdepartamento`, `created_at`, `updated_at`) VALUES
(1, 'Ximena', NULL, 'Bautista', NULL, NULL, 'HER-0000001', 'Guatemala', 0, 'ximenis725@gmail.com', 1, 9, '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(2, 'Usuario', NULL, 'Uno', NULL, NULL, 'HER-0000002', 'Jutiapa', 1, 'correo1@gmail.com', 1, 13, '2019-09-07 17:29:59', '2019-09-07 17:29:59'),
(3, 'Usuario', NULL, 'Dos', NULL, NULL, 'HER-0000003', 'Jalapa', 1, 'correo2@gmail.com', 1, 12, '2019-09-07 17:30:01', '2019-09-07 17:30:01'),
(4, 'Usuario', NULL, 'Tres', NULL, NULL, 'HER-0000004', 'Chiquimulilla', 2, 'correo3@gmail.com', 1, 18, '2019-09-07 17:30:03', '2019-09-07 17:30:03'),
(5, 'Usuario', NULL, 'Cuatro', NULL, NULL, 'HER-0000005', 'Guazacapán', 2, 'correo4@gmail.com', 1, 18, '2019-09-07 17:30:06', '2019-09-07 17:30:06'),
(6, 'Usuario', NULL, 'Cinco', NULL, NULL, 'HER-0000006', 'Taxisco', 2, 'correo5@gmail.com', 1, 18, '2019-09-07 17:30:08', '2019-09-07 17:30:08'),
(7, 'Usuario', NULL, 'Seis', NULL, NULL, 'HER-0000007', 'Chiquimulilla', 3, 'correo6@gmail.com', 1, 18, '2019-09-07 17:30:11', '2019-09-07 17:30:11'),
(8, 'Usuario', NULL, 'Siete', NULL, NULL, 'HER-0000008', 'Guazacapán', 3, 'correo7@gmail.com', 1, 18, '2019-09-07 17:30:13', '2019-09-07 17:30:13'),
(9, 'Usuario', NULL, 'Ocho', NULL, NULL, 'HER-0000009', 'Taxisco', 3, 'correo8@gmail.com', 1, 18, '2019-09-07 17:30:15', '2019-09-07 17:30:15'),
(10, 'Usuario', NULL, 'Nueve', NULL, NULL, 'HER-0000010', 'Barrio Belén, Chiquimulilla', 4, 'correo9@gmail.com', 1, 18, '2019-09-07 17:30:17', '2019-09-07 17:30:17'),
(11, 'Usuario', NULL, 'Diez', NULL, NULL, 'HER-0000011', 'Barrio El Milagro, Chiquimulilla', 4, 'correo10@gmail.com', 1, 18, '2019-09-07 17:30:19', '2019-09-07 17:30:19'),
(12, 'Usuario', NULL, 'Once', NULL, NULL, 'HER-0000012', 'Barrio San Sebastian, Chiquimulilla', 4, 'correo11@gmail.com', 1, 18, '2019-09-07 17:30:21', '2019-09-07 17:30:21'),
(13, 'Usuario', NULL, 'Doce', NULL, NULL, 'HER-0000013', 'Barrio Belén, Guazacapán', 5, 'correo12@gmail.com', 1, 18, '2019-09-07 17:30:23', '2019-09-07 17:30:23'),
(14, 'Usuario', NULL, 'Trece', NULL, NULL, 'HER-0000014', 'Barrio El Milagro, Guazacapán', 5, 'correo13@gmail.com', 1, 18, '2019-09-07 17:30:25', '2019-09-07 17:30:25'),
(15, 'Usuario', NULL, 'Catorce', NULL, NULL, 'HER-0000015', 'Barrio San Sebastian, Guazacapán', 5, 'correo14@gmail.com', 1, 18, '2019-09-07 17:30:27', '2019-09-07 17:30:27'),
(16, 'Usuario', NULL, 'Quince', NULL, NULL, 'HER-0000016', 'Barrio Belén, Taxisco', 6, 'correo15@gmail.com', 1, 18, '2019-09-07 17:30:29', '2019-09-07 17:30:29'),
(17, 'Usuario', NULL, 'Dieciseis', NULL, NULL, 'HER-0000017', 'Barrio El Milagro, Taxisco', 6, 'correo16@gmail.com', 1, 18, '2019-09-07 17:30:31', '2019-09-07 17:30:31'),
(18, 'Usuario', NULL, 'Diecisiete', NULL, NULL, 'HER-0000018', 'Barrio San Sebastian, Taxisco', 6, 'correo17@gmail.com', 1, 18, '2019-09-07 17:30:33', '2019-09-07 17:30:33'),
(19, 'Kathia', 'Pamela', 'Bautista', 'Lopez', NULL, 'HER-0000019', 'colonia los Altos de chiquimulilla', 10, 'kbautista@gmail.com', 1, 18, '2019-09-11 04:49:29', '2019-09-11 04:49:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_nivel`
--

CREATE TABLE `persona_nivel` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fknivel` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona_nivel`
--

INSERT INTO `persona_nivel` (`id`, `estado`, `fkpersona`, `fknivel`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(2, 0, 10, 1, '2019-09-07 17:32:46', '2019-09-07 17:34:10'),
(3, 0, 10, 3, '2019-09-07 17:34:10', '2019-09-07 17:34:10'),
(4, 1, 10, 4, '2019-09-07 17:34:10', '2019-09-07 17:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `punto` decimal(10,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkcategoria` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `punto`, `precio`, `estado`, `fkcategoria`, `created_at`, `updated_at`) VALUES
(1, 'Formula 1 Batido Nutricional 19g. - Vainilla', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(2, 'Formula 1 Batido Nutricional 19g. - Chocolate', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(3, 'Formula 1 Batido Nutricional 19g.  - Fresa', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(4, 'Formula 1 Batido Nutricional 19g.  - Canela y especias', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(5, 'Formula 1 Batido Nutricional 19g. - Cookies & Cream', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(6, 'Formula 1 Batido Nutricional 19g. - Orange Cream', 'Polvo para preparar batido nutricional con proteína de soya, fibra, vitaminas y minerales.', '23.95', '35.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(7, 'Té Concentrado de Hierbas 50g.', 'Esta deliciosa bebida en polvo combina té verde y té de orange pekoe con semillas de hibisco y cardamomo y fuentes naturales de cafeína, que logran un sabor agradable.', '22.50', '38.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(8, 'Té Concentrado de Hierbas 100g.', 'Esta deliciosa bebida en polvo combina té verde y té de orange pekoe con semillas de hibisco y cardamomo y fuentes naturales de cafeína, que logran un sabor agradable.', '28.10', '68.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(9, 'Performance Protein Powder 240g.', 'Una forma de incrementar la ingesta de proteína, lo cual ayuda a mantener su nivel de energía entre comidas y le ayuda a mantener la masa muscular magra.', '31.25', '125.75', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(10, 'Cell U Loss 50 Tabletas.', 'Con magnesio y sodio para minimizar la pérdida de electrólitos durante disminuir la retención de fluidos.', '21.65', '30.00', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(11, 'Herbalifeline 60 Cápsulas.', 'Esta exclusiva mezcla de lípidos marinos altamente refinados contiene ácidos grasos Omega-3 de alta calidad.', '21.25', '31.25', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(12, 'Herbal Aloe Concentrado 40 ml. - Original', 'Concentrado para preparar bebidas de aloe vera.', '19.58', '26.35', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(13, 'Herbal Aloe Concentrado 40 ml. - Mango', 'Concentrado para preparar bebidas de aloe vera.', '19.58', '26.35', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(14, 'Herbal Aloe Concentrado 40 ml. - Mandarina', 'Concentrado para preparar bebidas de aloe vera.', '19.58', '26.35', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(15, 'Fibra Activa 210g.', 'Polvo para preparar bebida a base de fibra.', '39.87', '168.95', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(16, 'Cell Activator 60 Cápsulas.', 'Contiene ingredientes botánicos seleccionados, nutrientes y antioxidantes que le ayudarán a promover una nutrición saludable.', '21.68', '36.75', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(17, 'Niteworks 150g.', 'Polvo para preparar un refrescante bebida refrescante sabor a limón.', '29.89', '115.23', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(18, 'NRG 60g.', 'Mezcla para té instantáneo a base de ingrediente principal guaraná.', '20.35', '25.65', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(19, 'Herbalife Rebuild Strength 1500g.', 'Nutrición: Promueve la formación de proteína, gracias a sus 25 g de proteínas de suero de leche y de caseína, que proveen aminoácidos en forma rápida y sostenida.', '51.26', '528.65', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(20, 'CR7 DRIVE 810g.', 'Mejora la hidratación con 320 mg de electrolitos vitales que se pierden durante el ejercicio.', '68.95', '865.32', 1, 1, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(21, 'Limpiador Relajante de Sabila 150ml.', 'Limpiador a base de Sábila con fragancia fresca y suave. Perfecto para la piel Normal o Seca.', '21.47', '65.32', 1, 2, '2019-09-07 17:29:50', '2019-09-07 17:29:50'),
(22, 'Limpiador Cítrico', 'Microperlas de limpieza profunda que refrescan su piel dejándola radiante.', '22.36', '69.26', 1, 2, '2019-09-07 17:29:50', '2019-09-07 17:29:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `punto_mes`
--

CREATE TABLE `punto_mes` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `punto` decimal(10,2) NOT NULL,
  `fkmes` int(10) UNSIGNED NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `punto_mes`
--

INSERT INTO `punto_mes` (`id`, `fecha`, `punto`, `fkmes`, `fkpersona`, `created_at`, `updated_at`) VALUES
(1, '2019-09-07', '92.05', 9, 4, '2019-09-07 17:32:45', '2019-09-07 17:32:45'),
(2, '2019-09-07', '4790.00', 9, 10, '2019-09-07 17:34:10', '2019-09-07 17:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalia`
--

CREATE TABLE `regalia` (
  `id` int(10) UNSIGNED NOT NULL,
  `porcentaje` decimal(10,2) NOT NULL DEFAULT 0.05,
  `monto` decimal(10,2) NOT NULL,
  `anio` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkcodigo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkmes` int(10) UNSIGNED NOT NULL,
  `fkpedido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regalia`
--

INSERT INTO `regalia` (`id`, `porcentaje`, `monto`, `anio`, `fkpersona`, `fkcodigo`, `fkmes`, `fkpedido`, `created_at`, `updated_at`) VALUES
(1, '0.05', '1.75', '2019', 4, 'HER-0000010', 9, 1, '2019-09-07 17:34:10', '2019-09-07 17:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2019-09-07 17:29:45', '2019-09-07 17:29:45'),
(2, 'Gerente', '2019-09-07 17:29:45', '2019-09-07 17:29:45'),
(3, 'Asociado', '2019-09-07 17:29:45', '2019-09-07 17:29:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(10) UNSIGNED NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkproducto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `fkpersona`, `fkproducto`, `cantidad`, `fecha_vencimiento`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 999800, '2019-04-01', '2019-09-07 17:30:35', '2019-09-07 17:34:10'),
(2, 4, 2, 1000000, '2019-04-02', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(3, 4, 3, 1000000, '2019-04-03', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(4, 4, 4, 1000000, '2019-04-04', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(5, 4, 5, 1000000, '2019-04-05', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(6, 4, 6, 1000000, '2019-04-06', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(7, 4, 7, 1000000, '2019-04-07', '2019-09-07 17:30:36', '2019-09-07 17:30:36'),
(8, 4, 8, 1000000, '2019-04-08', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(9, 4, 9, 1000000, '2019-04-09', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(10, 4, 10, 1000000, '2019-04-10', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(11, 4, 11, 1000000, '2019-04-11', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(12, 4, 12, 1000000, '2019-04-12', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(13, 4, 13, 1000000, '2019-04-13', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(14, 4, 14, 1000000, '2019-04-14', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(15, 4, 15, 1000000, '2019-04-15', '2019-09-07 17:30:37', '2019-09-07 17:30:37'),
(16, 4, 16, 1000000, '2019-04-16', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(17, 4, 17, 1000000, '2019-04-17', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(18, 4, 18, 1000000, '2019-04-18', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(19, 4, 19, 1000000, '2019-04-19', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(20, 4, 20, 1000000, '2019-04-20', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(21, 4, 21, 1000000, '2019-04-21', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(22, 4, 22, 1000000, '2019-04-22', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(23, 5, 1, 1000000, '2019-05-01', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(24, 5, 2, 1000000, '2019-05-02', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(25, 5, 3, 1000000, '2019-05-03', '2019-09-07 17:30:38', '2019-09-07 17:30:38'),
(26, 5, 4, 1000000, '2019-05-04', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(27, 5, 5, 1000000, '2019-05-05', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(28, 5, 6, 1000000, '2019-05-06', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(29, 5, 7, 1000000, '2019-05-07', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(30, 5, 8, 1000000, '2019-05-08', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(31, 5, 9, 1000000, '2019-05-09', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(32, 5, 10, 1000000, '2019-05-10', '2019-09-07 17:30:39', '2019-09-07 17:30:39'),
(33, 5, 11, 1000000, '2019-05-11', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(34, 5, 12, 1000000, '2019-05-12', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(35, 5, 13, 1000000, '2019-05-13', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(36, 5, 14, 1000000, '2019-05-14', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(37, 5, 15, 1000000, '2019-05-15', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(38, 5, 16, 1000000, '2019-05-16', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(39, 5, 17, 1000000, '2019-05-17', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(40, 5, 18, 1000000, '2019-05-18', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(41, 5, 19, 1000000, '2019-05-19', '2019-09-07 17:30:40', '2019-09-07 17:30:40'),
(42, 5, 20, 1000000, '2019-05-20', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(43, 5, 21, 1000000, '2019-05-21', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(44, 5, 22, 1000000, '2019-05-22', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(45, 6, 1, 1000000, '2019-06-01', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(46, 6, 2, 1000000, '2019-06-02', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(47, 6, 3, 1000000, '2019-06-03', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(48, 6, 4, 1000000, '2019-06-04', '2019-09-07 17:30:41', '2019-09-07 17:30:41'),
(49, 6, 5, 1000000, '2019-06-05', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(50, 6, 6, 1000000, '2019-06-06', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(51, 6, 7, 1000000, '2019-06-07', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(52, 6, 8, 1000000, '2019-06-08', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(53, 6, 9, 1000000, '2019-06-09', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(54, 6, 10, 1000000, '2019-06-10', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(55, 6, 11, 1000000, '2019-06-11', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(56, 6, 12, 1000000, '2019-06-12', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(57, 6, 13, 1000000, '2019-06-13', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(58, 6, 14, 1000000, '2019-06-14', '2019-09-07 17:30:42', '2019-09-07 17:30:42'),
(59, 6, 15, 1000000, '2019-06-15', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(60, 6, 16, 1000000, '2019-06-16', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(61, 6, 17, 1000000, '2019-06-17', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(62, 6, 18, 1000000, '2019-06-18', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(63, 6, 19, 1000000, '2019-06-19', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(64, 6, 20, 1000000, '2019-06-20', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(65, 6, 21, 1000000, '2019-06-21', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(66, 6, 22, 1000000, '2019-06-22', '2019-09-07 17:30:43', '2019-09-07 17:30:43'),
(67, 4, 1, 1, '2020-09-07', '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(68, 4, 2, 1, '2020-09-07', '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(69, 4, 7, 1, '2020-09-07', '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(70, 4, 10, 1, '2020-09-07', '2019-09-07 17:31:59', '2019-09-07 17:31:59'),
(71, 10, 1, 201, '2020-09-07', '2019-09-07 17:32:46', '2019-09-07 17:34:10'),
(72, 10, 2, 1, '2020-09-07', '2019-09-07 17:32:46', '2019-09-07 17:32:46'),
(73, 10, 7, 1, '2020-09-07', '2019-09-07 17:32:46', '2019-09-07 17:32:46'),
(74, 10, 10, 1, '2020-09-07', '2019-09-07 17:32:46', '2019-09-07 17:32:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkcompania` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fkpersona` int(10) UNSIGNED NOT NULL,
  `fkrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `estado`, `fkpersona`, `fkrol`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'xbautista', 'ximenis725@gmail.com', '$2y$10$9.wja1/VSt1sCNXlK4x5zO6e/Sez9siGJlKLlqvl0jiCuMMIClMj2', 1, 1, 1, 'tusSNW5Vvn8pqvFrWNtNAQobP9llOqAbMOwfLRUUiBf3fVKNXLCMIK7iu479', '2019-09-07 17:29:51', '2019-09-07 17:29:51'),
(2, 'uuno', 'correo1@gmail.com', '$2y$10$svxT4rBp3nPtdapesphD3ub1ZxedYOO0GhbP6rIXeV2Ly0JLJvXVK', 1, 2, 2, '8pCSpbwujJZK1LQKgWOGNMhP1mzKGF5CuyIynikIhKAIK7FA3H0DOhiYhEfp', '2019-09-07 17:29:59', '2019-09-07 17:29:59'),
(3, 'udos', 'correo2@gmail.com', '$2y$10$KGZ5HMM7XAQRD6nSBQzHxOO.f5DdUnrvawJNNdIUaBnpJNO1XlB6C', 1, 3, 2, 'uMeH90y7Je64u7m4tJBgPa7BEVO3LGLhL6JVVJ8TiI0kwEE04EVS79305mZy', '2019-09-07 17:30:02', '2019-09-07 17:30:02'),
(4, 'utres', 'correo3@gmail.com', '$2y$10$xnX6/QLpLRA.ZB51sSukQOCMNUe3Z5cOC9NeAyZoe.RGrxlOwtA32', 1, 4, 3, 'ouIoICUGIZ0I5mrYaAY8LbyOoFQppQtMMmZlNsqCoPTlpjmPhE5VCF53NUzM', '2019-09-07 17:30:04', '2019-09-07 17:31:59'),
(5, 'ucuatro', 'correo4@gmail.com', '$2y$10$ffHJjqj/9Y7IBylVBHDAq.BMV022fQKN9Xnh.XUgj9Q1kbmLWJqqC', 0, 5, 3, NULL, '2019-09-07 17:30:06', '2019-09-07 17:30:06'),
(6, 'ucinco', 'correo5@gmail.com', '$2y$10$tldjBsRYQC.ywHtVLIYKI.o.TQdHkRHPozc6KGLW.rfS63flOqEyS', 0, 6, 3, NULL, '2019-09-07 17:30:09', '2019-09-07 17:30:09'),
(7, 'useis', 'correo6@gmail.com', '$2y$10$8p53qsZCbGfEMElf5.D7EeDVN0t360PknhnC9w6afWO9KZtc0A0pO', 0, 7, 3, NULL, '2019-09-07 17:30:11', '2019-09-07 17:30:11'),
(8, 'usiete', 'correo7@gmail.com', '$2y$10$r09Yh/nE04SBc2GiXKjvteimwbXmXTpjWamifC3UKUolqmrJL252C', 0, 8, 3, NULL, '2019-09-07 17:30:13', '2019-09-07 17:30:13'),
(9, 'uocho', 'correo8@gmail.com', '$2y$10$sbA2TWwVX6U7kS4WWoPO7.2Y9C3Ev2mH6.ZxnNe9fnH5kAKCE4v7u', 0, 9, 3, NULL, '2019-09-07 17:30:15', '2019-09-07 17:30:15'),
(10, 'unueve', 'correo9@gmail.com', '$2y$10$d7q.zg0H1ZEfnOuOi9RdAu3wLDiBQCaj/sG.4LegL7GNMNIktN.Gi', 1, 10, 3, 'AWCTRpZx59wjtAdOgdg98PrxfBYyGbi1QbeOU8FcY3bqwV77RAwWnfXk3rDz', '2019-09-07 17:30:17', '2019-09-07 17:32:46'),
(11, 'udiez', 'correo10@gmail.com', '$2y$10$lGWMq2WRkZ7D/JG5n0hr9OF0FJODUwUYqPFbGY/SpNHfH.2snFXqu', 0, 11, 3, NULL, '2019-09-07 17:30:19', '2019-09-07 17:30:19'),
(12, 'uonce', 'correo11@gmail.com', '$2y$10$TtPRH9L0WSiqQ6QJjuGpgOqECXKsUIKdWSxtUGqkRy/0CbCHZBgU6', 0, 12, 3, NULL, '2019-09-07 17:30:21', '2019-09-07 17:30:21'),
(13, 'udoce', 'correo12@gmail.com', '$2y$10$jrXO4acbau3.ENysQ.i9MO3rh1H9vWYXh7M..NdZ9YHtD2U/nxFeu', 0, 13, 3, NULL, '2019-09-07 17:30:23', '2019-09-07 17:30:23'),
(14, 'utrece', 'correo13@gmail.com', '$2y$10$Be194Qz8aqP8pKW32QeQ2u47STMePelLUPZNDppyc.qIFQYTwHVoS', 0, 14, 3, NULL, '2019-09-07 17:30:25', '2019-09-07 17:30:25'),
(15, 'ucatorce', 'correo14@gmail.com', '$2y$10$W24u0gbAxvgL1GREw10pjO6GKWf.gizjurTTHKlh5XpPL5OP4rqKa', 0, 15, 3, NULL, '2019-09-07 17:30:27', '2019-09-07 17:30:27'),
(16, 'uquince', 'correo15@gmail.com', '$2y$10$kVOfwiQLQSBguB/1gL2Gf.3wgKmlytquPqRkREoU9hTmo9/p6AUWW', 0, 16, 3, NULL, '2019-09-07 17:30:29', '2019-09-07 17:30:29'),
(17, 'udieciseis', 'correo16@gmail.com', '$2y$10$ox6GbuT.yQ2K5cpEAAIAUedR4H4Y1CEpxtgfu9cwOlWm1pvCyCoVm', 0, 17, 3, NULL, '2019-09-07 17:30:31', '2019-09-07 17:30:31'),
(18, 'udiecisiete', 'correo17@gmail.com', '$2y$10$46AB7o9c993QuLPQCPClTu2d7lp1i4yNHTvjR0H9AE6dozayjEldS', 0, 18, 3, NULL, '2019-09-07 17:30:33', '2019-09-07 17:30:33'),
(19, 'kpbautista', 'kbautista@gmail.com', '$2y$10$RACbe2buwgfViQEzvxaXiuRpKqZQqFe9UQZB85i/20FWnhm.iinqW', 0, 19, 3, NULL, '2019-09-11 04:49:30', '2019-09-11 04:49:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bonificacion`
--
ALTER TABLE `bonificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonificacion_fkmes_foreign` (`fkmes`),
  ADD KEY `bonificacion_fkpersona_foreign` (`fkpersona`),
  ADD KEY `bonificacion_fkequipo_expansion_foreign` (`fkequipo_expansion`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cliente_telefono_unique` (`telefono`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `compania_nombre_unique` (`nombre`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descuento`
--
ALTER TABLE `descuento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descuento_porcentaje_unique` (`porcentaje`);

--
-- Indices de la tabla `detalle_carga`
--
ALTER TABLE `detalle_carga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_carga_fkproducto_foreign` (`fkproducto`),
  ADD KEY `detalle_carga_fkpersona_foreign` (`fkpersona`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_venta_fkstock_foreign` (`fkstock`),
  ADD KEY `detalle_venta_fkpedido_foreign` (`fkpedido`);

--
-- Indices de la tabla `equipo_expansion`
--
ALTER TABLE `equipo_expansion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `equipo_expansion_nombre_unique` (`nombre`),
  ADD UNIQUE KEY `equipo_expansion_porcentaje_unique` (`porcentaje`);

--
-- Indices de la tabla `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nivel_nombre_unique` (`nombre`),
  ADD KEY `nivel_fkdescuento_foreign` (`fkdescuento`);

--
-- Indices de la tabla `pago_asociado`
--
ALTER TABLE `pago_asociado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pago_asociado_fkpersona_foreign` (`fkpersona`),
  ADD KEY `pago_asociado_fkmes_foreign` (`fkmes`);

--
-- Indices de la tabla `paquete_inicial`
--
ALTER TABLE `paquete_inicial`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paquete_inicial_nombre_unique` (`nombre`);

--
-- Indices de la tabla `paquete_inicial_persona`
--
ALTER TABLE `paquete_inicial_persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paquete_inicial_persona_fkpersona_foreign` (`fkpersona`),
  ADD KEY `paquete_inicial_persona_fkpaquete_producto_foreign` (`fkpaquete_producto`);

--
-- Indices de la tabla `paquete_producto`
--
ALTER TABLE `paquete_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paquete_producto_fkproducto_foreign` (`fkproducto`),
  ADD KEY `paquete_producto_fkpaquete_foreign` (`fkpaquete`);

--
-- Indices de la tabla `password_reset`
--
ALTER TABLE `password_reset`
  ADD KEY `password_reset_email_index` (`email`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_fkcodigo_foreign` (`fkcodigo`),
  ADD KEY `pedido_fkpersona_foreign` (`fkpersona`),
  ADD KEY `pedido_fkpersonivel_foreign` (`fkpersonivel`);

--
-- Indices de la tabla `pedido_aceptado`
--
ALTER TABLE `pedido_aceptado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_aceptado_fkstock_foreign` (`fkstock`),
  ADD KEY `pedido_aceptado_fkpedido_foreign` (`fkpedido`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persona_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `persona_email_unique` (`email`),
  ADD KEY `persona_fkdepartamento_foreign` (`fkdepartamento`);

--
-- Indices de la tabla `persona_nivel`
--
ALTER TABLE `persona_nivel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_nivel_fkpersona_foreign` (`fkpersona`),
  ADD KEY `persona_nivel_fknivel_foreign` (`fknivel`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producto_nombre_unique` (`nombre`),
  ADD KEY `producto_fkcategoria_foreign` (`fkcategoria`);

--
-- Indices de la tabla `punto_mes`
--
ALTER TABLE `punto_mes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `punto_mes_fkmes_foreign` (`fkmes`),
  ADD KEY `punto_mes_fkpersona_foreign` (`fkpersona`);

--
-- Indices de la tabla `regalia`
--
ALTER TABLE `regalia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regalia_fkpersona_foreign` (`fkpersona`),
  ADD KEY `regalia_fkcodigo_foreign` (`fkcodigo`),
  ADD KEY `regalia_fkpedido_foreign` (`fkpedido`),
  ADD KEY `regalia_fkmes_foreign` (`fkmes`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rol_nombre_unique` (`nombre`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_fkpersona_foreign` (`fkpersona`),
  ADD KEY `stock_fkproducto_foreign` (`fkproducto`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telefono_numero_unique` (`numero`),
  ADD KEY `telefono_fkpersona_foreign` (`fkpersona`),
  ADD KEY `telefono_fkcompania_foreign` (`fkcompania`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_fkpersona_foreign` (`fkpersona`),
  ADD KEY `users_fkrol_foreign` (`fkrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bonificacion`
--
ALTER TABLE `bonificacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compania`
--
ALTER TABLE `compania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `descuento`
--
ALTER TABLE `descuento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_carga`
--
ALTER TABLE `detalle_carga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipo_expansion`
--
ALTER TABLE `equipo_expansion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mes`
--
ALTER TABLE `mes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pago_asociado`
--
ALTER TABLE `pago_asociado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquete_inicial`
--
ALTER TABLE `paquete_inicial`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paquete_inicial_persona`
--
ALTER TABLE `paquete_inicial_persona`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paquete_producto`
--
ALTER TABLE `paquete_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido_aceptado`
--
ALTER TABLE `pedido_aceptado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `persona_nivel`
--
ALTER TABLE `persona_nivel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `punto_mes`
--
ALTER TABLE `punto_mes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `regalia`
--
ALTER TABLE `regalia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bonificacion`
--
ALTER TABLE `bonificacion`
  ADD CONSTRAINT `bonificacion_fkequipo_expansion_foreign` FOREIGN KEY (`fkequipo_expansion`) REFERENCES `equipo_expansion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bonificacion_fkmes_foreign` FOREIGN KEY (`fkmes`) REFERENCES `mes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bonificacion_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_carga`
--
ALTER TABLE `detalle_carga`
  ADD CONSTRAINT `detalle_carga_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_carga_fkproducto_foreign` FOREIGN KEY (`fkproducto`) REFERENCES `producto` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_fkpedido_foreign` FOREIGN KEY (`fkpedido`) REFERENCES `pedido` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_venta_fkstock_foreign` FOREIGN KEY (`fkstock`) REFERENCES `stock` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD CONSTRAINT `nivel_fkdescuento_foreign` FOREIGN KEY (`fkdescuento`) REFERENCES `descuento` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago_asociado`
--
ALTER TABLE `pago_asociado`
  ADD CONSTRAINT `pago_asociado_fkmes_foreign` FOREIGN KEY (`fkmes`) REFERENCES `mes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pago_asociado_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete_inicial_persona`
--
ALTER TABLE `paquete_inicial_persona`
  ADD CONSTRAINT `paquete_inicial_persona_fkpaquete_producto_foreign` FOREIGN KEY (`fkpaquete_producto`) REFERENCES `paquete_producto` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `paquete_inicial_persona_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete_producto`
--
ALTER TABLE `paquete_producto`
  ADD CONSTRAINT `paquete_producto_fkpaquete_foreign` FOREIGN KEY (`fkpaquete`) REFERENCES `paquete_inicial` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `paquete_producto_fkproducto_foreign` FOREIGN KEY (`fkproducto`) REFERENCES `producto` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_fkcodigo_foreign` FOREIGN KEY (`fkcodigo`) REFERENCES `persona` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_fkpersonivel_foreign` FOREIGN KEY (`fkpersonivel`) REFERENCES `persona_nivel` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido_aceptado`
--
ALTER TABLE `pedido_aceptado`
  ADD CONSTRAINT `pedido_aceptado_fkpedido_foreign` FOREIGN KEY (`fkpedido`) REFERENCES `pedido` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_aceptado_fkstock_foreign` FOREIGN KEY (`fkstock`) REFERENCES `stock` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_fkdepartamento_foreign` FOREIGN KEY (`fkdepartamento`) REFERENCES `departamento` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_nivel`
--
ALTER TABLE `persona_nivel`
  ADD CONSTRAINT `persona_nivel_fknivel_foreign` FOREIGN KEY (`fknivel`) REFERENCES `nivel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_nivel_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_fkcategoria_foreign` FOREIGN KEY (`fkcategoria`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `punto_mes`
--
ALTER TABLE `punto_mes`
  ADD CONSTRAINT `punto_mes_fkmes_foreign` FOREIGN KEY (`fkmes`) REFERENCES `mes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `punto_mes_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `regalia`
--
ALTER TABLE `regalia`
  ADD CONSTRAINT `regalia_fkcodigo_foreign` FOREIGN KEY (`fkcodigo`) REFERENCES `persona` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `regalia_fkmes_foreign` FOREIGN KEY (`fkmes`) REFERENCES `mes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `regalia_fkpedido_foreign` FOREIGN KEY (`fkpedido`) REFERENCES `pedido` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `regalia_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_fkproducto_foreign` FOREIGN KEY (`fkproducto`) REFERENCES `producto` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_fkcompania_foreign` FOREIGN KEY (`fkcompania`) REFERENCES `compania` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `telefono_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_fkrol_foreign` FOREIGN KEY (`fkrol`) REFERENCES `rol` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
