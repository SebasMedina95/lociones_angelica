-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 19:19:20
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lociones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Categoria 11', '2023-07-07 16:12:15'),
(2, 'Categoria 22', '2023-07-07 16:12:20'),
(3, 'Categoria X', '2023-07-07 16:50:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` text NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'Anjellin Manuela Morales Panesso', '123456789', 'anjellin@gmail.com', '(313) 435-6667', 'Direccion # direccion 45-43', '2004-10-04', 3, '2023-07-07 11:38:53', '2023-07-07 16:38:53'),
(2, 'Juan Sebastian Medina Toro', '987654321', 'juanmedina@gmail.com', '(311) 711-5833', 'Direccion El Moral# 12345', '1995-05-02', 8, '2023-07-07 12:00:40', '2023-07-07 17:00:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '10001', 'Producto 1', 'vistas/img/productos/10001/410.jpg', 96, 55000, 77000, 4, '2023-07-07 17:00:40'),
(2, 2, '20001', 'Producto 22', 'vistas/img/productos/20001/646.jpg', 50, 120000, 168000, 4, '2023-07-07 16:42:17'),
(3, 3, '30001', 'Producto X', 'vistas/img/productos/30001/301.jpg', 7, 143000, 200200, 3, '2023-07-07 17:00:40'),
(4, 3, '30002', 'sdafsd', 'vistas/img/productos/default/anonymous.png', 345, 34534, 48347.6, 0, '2023-07-07 16:56:58'),
(5, 3, '30003', 'tryt', 'vistas/img/productos/30003/875.jpg', 564, 645464, 903650, 0, '2023-07-07 17:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL,
  `perfil` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `foto`, `perfil`, `fecha`, `estado`, `ultimo_login`) VALUES
(2, 'Angelica', 'angelica', '$2a$07$asxx54ahjppf45sd87a5auQR9Lr0a7J0VxcV1RVhB/FXuk2QCE9FC', 'vistas/img/usuarios/angelica/274.jpg', 'Administrador', '2023-07-07 16:08:45', 1, '2023-07-07 11:08:45'),
(3, 'Juan Sebastian Medina Toro', 'sebasmedina', '$2a$07$asxx54ahjppf45sd87a5au9tRG5/zWq3DAOWEP9j.Z2h6tSUJFzky', 'vistas/img/usuarios/sebasmedina/458.jpg', 'Administrador', '2023-07-07 17:03:48', 1, '2023-07-07 12:03:48'),
(4, 'Angela Milwaski Torres', 'angela', '$2a$07$asxx54ahjppf45sd87a5aupEWanzXNWwA0/4j9qb2ws25ruWlUff.', 'vistas/img/usuarios/angela/672.jpg', 'Especial', '2023-07-07 16:49:18', 0, '0000-00-00 00:00:00'),
(5, 'Fulanito de Tal 2', 'fulano', '$2a$07$asxx54ahjppf45sd87a5aum9PSNRjPwLxrnBgjBbfefLjUo1Zk6S.', 'vistas/img/usuarios/fulano/939.jpg', 'Vendedor', '2023-07-07 17:09:25', 0, '0000-00-00 00:00:00'),
(6, 'gdfg', 'dfgdf', '$2a$07$asxx54ahjppf45sd87a5auev0LXA7Xpym2Y7C3Qk5OOSOvIhiqT6a', 'vistas/img/usuarios/dfgdf/271.jpg', 'Especial', '2023-07-07 17:12:20', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, '10001', 1, 2, '[{\"id\":\"2\",\"descripcion\":\"Producto 22\",\"cantidad\":\"3\",\"stock\":\"51\",\"precio\":\"168000\",\"total\":\"504000\"}]', 95760, 504000, 599760, 'Efectivo', '2023-07-07 16:38:53'),
(2, '10002', 2, 2, '[{\"id\":\"2\",\"descripcion\":\"Producto 22\",\"cantidad\":\"1\",\"stock\":\"50\",\"precio\":\"168000\",\"total\":\"168000\"},{\"id\":\"1\",\"descripcion\":\"Producto 1\",\"cantidad\":\"2\",\"stock\":\"98\",\"precio\":\"77000\",\"total\":\"154000\"}]', 61180, 322000, 383180, 'TD-34664574723534', '2023-07-07 16:42:17'),
(3, '10003', 2, 2, '[{\"id\":\"3\",\"descripcion\":\"Producto X\",\"cantidad\":\"3\",\"stock\":\"7\",\"precio\":\"200200\",\"total\":\"600600\"},{\"id\":\"1\",\"descripcion\":\"Producto 1\",\"cantidad\":\"2\",\"stock\":\"96\",\"precio\":\"77000\",\"total\":\"154000\"}]', 143374, 754600, 897974, 'TC-76564525345', '2023-07-07 17:00:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
