-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2023 a las 13:21:29
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
-- Base de datos: `dwes_tarde_gestion_actividades_deportivas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `edad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `edad`) VALUES
(1, 'María', 'López Hernández', 7),
(2, 'Mónica', 'Fernández Paniagua', 11),
(3, 'Beatriz', 'Fernández León', 12),
(4, 'Rosario', 'Pérez Alonso', 10),
(5, 'Carmen', 'García Moran', 10),
(6, 'Nuria', 'Pastor Meneses', 10),
(7, 'Elena', 'Montaño Moreno', 11),
(8, 'Daniel', 'Hernández Muñoz', 11),
(9, 'Pedro', 'García Hidalgo', 16),
(10, 'Francisco', 'Cabrera González', 16),
(11, 'Ángel', 'Álvarez González', 16),
(12, 'Francisca', 'López Barroso', 10),
(13, 'Mireia', 'Alarcón Quero', 13),
(14, 'María José', 'Fernández Moreno', 16),
(15, 'Juan', 'Rodríguez García', 10),
(16, 'Estibaliz', 'Mirón Márquez', 12),
(17, 'Ana María', 'Tapia Valera', 10),
(18, 'Vicente', 'Gutiérrez Fernández', 11),
(19, 'Francisca', 'Linares Martí', 10),
(20, 'María', 'López Afonso', 10),
(21, 'María Carmen', 'Vázquez San Martin', 16),
(22, 'Julia', 'Jiménez Fernández', 11),
(23, 'Antonia', 'Andrade Fernández', 11),
(24, 'Andrés', 'Cervantes Santos', 11),
(25, 'Sergio', 'Rodríguez Ros', 10),
(26, 'Iván', 'Aguilar Bermúdez', 13),
(27, 'Juan', 'Aranda Riera', 12),
(28, 'Francisca', 'Martin Castro', 11),
(29, 'Antonio', 'Barrera Fernández', 11),
(30, 'Maider', 'Pujol Yepes', 12),
(31, 'Antonia', 'Fernández Castillo', 10),
(32, 'Rosa María', 'Manrique Montero', 11),
(33, 'Ricardo', 'Cañada Fernández', 12),
(34, 'Manuel', 'Viñas Carrera', 11),
(35, 'Juan José', 'Quesada García', 7),
(36, 'Paula', 'Arredondo Carrasco', 13),
(37, 'David', 'Sánchez Martin', 12),
(38, 'Raúl', 'Martínez Uceda', 10),
(39, 'Antonia', 'Rubio Hernández', 11),
(40, 'Carlos', 'Carmona Garate', 11),
(41, 'María Teresa', 'Lozano Ramón', 11),
(42, 'Alberto', 'Alvarado Ruiz', 11),
(43, 'Javier', 'Sánchez Mesas', 16),
(44, 'Manuel', 'Álvarez Gallardo', 16),
(45, 'Sergio', 'Valls Espinoza', 11),
(46, 'Ramón', 'Muñoz Rodríguez', 11),
(47, 'Joaquín', 'Maldonado Neira', 10),
(48, 'Manuel', 'Fernández Rojo', 11),
(49, 'Josefa', 'Rivas Fernández', 10),
(50, 'María Carmen', 'Hernández Galán', 12),
(51, 'David', 'Martínez García', 7),
(52, 'María Ángeles', 'Alsina Martin', 11),
(53, 'Antonio', 'Moreno Gómez', 10),
(54, 'Francisco', 'Álvarez Viera', 16),
(55, 'José Antonio', 'Ayala Delgado', 10),
(56, 'Antonio', 'Quintero Martínez', 12),
(57, 'Antonio', 'Cabrera Vera', 12),
(58, 'Antonio', 'Esteban Catalán', 7),
(59, 'Juan José', 'Gómez Montero', 10),
(60, 'José María', 'Martínez Gutiérrez', 12),
(61, 'María Dolores', 'Bautista Gómez', 16),
(62, 'Dolores', 'Gutiérrez Amores', 16),
(63, 'María Teresa', 'Conde Carracedo', 12),
(64, 'Sara', 'Planells González', 10),
(65, 'Elena', 'Parra Calvente', 10),
(66, 'Joaquín', 'Díaz Romero', 11),
(67, 'Josefa', 'Fernández Falcón', 12),
(68, 'María', 'González Saura', 10),
(69, 'Javier', 'Sevilla Blanco', 11),
(70, 'Pablo', 'Matos Barrachina', 10),
(71, 'María Carmen', 'Pérez Carbajo', 11),
(72, 'Milagros', 'Fernández De Blas', 12),
(73, 'Francisco', 'Hernández González', 10),
(74, 'Ana María', 'Espina López', 7),
(75, 'Carmen', 'Romero Alberola', 7),
(76, 'José', 'Mendoza Carrasco', 16),
(77, 'Raquel', 'Ibáñez Real', 12),
(78, 'Daniel', 'Pérez Aguilar', 10),
(79, 'Ana', 'Gallego Villarejo', 12),
(80, 'Raquel', 'Macia Monge', 10),
(81, 'Enrique', 'Mesa Pérez', 11),
(82, 'María Carmen', 'Iglesias Millán', 12),
(83, 'Beatriz', 'Cabrera García', 11),
(84, 'José Luis', 'Jiménez Bueno', 11),
(85, 'María Carmen', 'González Guzmán', 10),
(86, 'María', 'Garrido Carpintero', 12),
(87, 'Álvaro', 'Molero Hernández', 10),
(88, 'Antonio', 'González Beltrán', 12),
(89, 'Jorge', 'Brown Liñán', 16),
(90, 'Antonio', 'Muñoz Revuelta', 11),
(91, 'Andrea', 'Ruiz Alfonso', 11),
(92, 'Francisca', 'Soria Pascual', 11),
(93, 'Ana', 'Arias Del Campo', 7),
(94, 'Isabel', 'Gutiérrez Rivera', 11),
(95, 'Mercedes', 'Da Silva Alonso', 10),
(96, 'María Josefa', 'Cubero Castañeda', 10),
(97, 'María', 'Guerrero Melian', 12),
(98, 'Diego', 'Rebollo Zamora', 10),
(99, 'Francisco', 'Hernández Torre', 7),
(100, 'María Luisa', 'Márquez Esteban', 10),
(101, 'Josefa', 'Pérez García', 10),
(102, 'José Luis', 'Ríos Molina', 12),
(103, 'Pedro', 'González Serrano', 11),
(104, 'Anna', 'Medina Sánchez', 11),
(105, 'María Carmen', 'Murcia Muñoz', 10),
(106, 'Marta', 'Gallardo Peña', 12),
(107, 'Laura', 'Montesdeoca Fernández', 10),
(108, 'Francisco', 'Rodríguez Ferrer', 11),
(109, 'Ángel', 'Llorente Moreno', 12),
(110, 'José', 'De los Santos Bernal', 10),
(111, 'Laura', 'Castro López', 16),
(112, 'José', 'Alonso Lucas', 11),
(113, 'Miguel Ángel', 'Rodríguez Ávila', 12),
(114, 'Antonio', 'Vásquez García', 12),
(115, 'Manuela', 'Martínez Álvarez', 9),
(116, 'María Luisa', 'Mendoza Suarez', 7),
(117, 'José Manuel', 'Carretero García', 7),
(118, 'María Begoña', 'Diéguez Flores', 10),
(119, 'Sara', 'Rodríguez Suarez', 12),
(120, 'Antonio', 'Castro González', 8),
(121, 'Ana María', 'García Herrero', 12),
(122, 'María Carmen', 'Muñoz Rodríguez', 12),
(123, 'Ángel', 'Alemán Royo', 15),
(124, 'María Teresa', 'Ruiz Aragón', 7),
(125, 'Nuria', 'González Ramos', 11),
(126, 'Jorge', 'Álvarez Rodríguez', 10),
(127, 'José', 'García Alarcón', 7),
(128, 'Encarnación', 'Carrión López', 15),
(129, 'María Mar', 'De la Torre García', 14),
(130, 'Jorge', 'Ramírez Sánchez', 9),
(131, 'Ángel', 'Hernández Aranda', 14),
(132, 'David', 'Martínez Vázquez', 8),
(133, 'José', 'López Pérez', 16),
(134, 'Daniel', 'Díaz Serrano', 13),
(135, 'Fernando', 'Morales Saiz', 15),
(136, 'José', 'Aguirre González', 8),
(137, 'Javier', 'Fontán Fernández', 14),
(138, 'Vicenta', 'Molina Martínez', 9),
(139, 'Antonio', 'Ezquerra López', 14),
(140, 'María Ángeles', 'Méndez García', 10),
(141, 'Juan Antonio', 'Guardia Tome', 15),
(142, 'Marta', 'Torres Blasco', 14),
(143, 'Pedro', 'Castillo Bravo', 12),
(144, 'Purificación', 'Valdés Hinojosa', 10),
(145, 'Ángel', 'Barroso Tapia', 13),
(146, 'Carmen', 'Herrera Paniagua', 8),
(147, 'Francisco', 'Trejo Tornero', 12),
(148, 'Francisco', 'Castro Serra', 8),
(149, 'María', 'Vela González', 8),
(150, 'Mario', 'Ortega Villanueva', 14),
(151, 'Antonio', 'García Fernández', 15),
(152, 'Antoni', 'López Sánchez', 16),
(153, 'José María', 'Cano Madrid', 14),
(154, 'Francisca', 'Álvarez Mayol', 14),
(155, 'Antonio', 'Montañez Hidalgo', 16),
(156, 'Diego', 'Fernández Morales', 14),
(157, 'María', 'García Valdés', 11),
(158, 'Javier', 'Zabala Prieto', 9),
(159, 'Jesús', 'Montero Claros', 15),
(160, 'Manuel', 'Díaz García', 15),
(161, 'Francisco Javier', 'Núñez Domínguez', 15),
(162, 'Diego', 'Domínguez Moya', 9),
(163, 'Marta', 'Lorenzo Armero', 14),
(164, 'José Ignacio', 'Espino Barrachina', 14),
(165, 'Francisco', 'Garrote Murcia', 14),
(166, 'Ángela', 'García Carrillo', 15),
(167, 'Francisca', 'Esteban Aranda', 8),
(168, 'María Dolores', 'Gutiérrez Guillen', 13),
(169, 'María', 'Domenech Martínez', 15),
(170, 'Pedro', 'Haro Martin', 13),
(171, 'Manuel', 'López Ovejero', 15),
(172, 'Manuel', 'Flores Aguilar', 15),
(173, 'Juan', 'Rivas López', 16),
(174, 'Rafael', 'Gómez Pérez', 16),
(175, 'Ángel', 'Fuentes Jiménez', 8),
(176, 'Miguel Ángel', 'Delgado De Miguel', 15),
(177, 'Juan José', 'Romero Mir', 13),
(178, 'José Luis', 'Vázquez Gascón', 8),
(179, 'Juan Manuel', 'Huang González', 8),
(180, 'Cristina', 'Márquez Gámez', 9),
(181, 'María Luisa', 'Reina Fernández', 8),
(182, 'Dolores', 'Martin García', 14),
(183, 'Antonio', 'Villena López', 16),
(184, 'Manuel', 'Rodríguez Zapata', 16),
(185, 'María Teresa', 'Maza López', 12),
(186, 'María Isabel', 'Paz García', 9),
(187, 'Rosario', 'Sánchez Mateo', 14),
(188, 'Iván', 'Bosch Guisado', 16),
(189, 'Javier', 'Calvo Luengo', 7),
(190, 'Lucia', 'Ortega Díaz', 15),
(191, 'Elena', 'Antolín Maroto', 7),
(192, 'Pedro', 'Romero Malagón', 10),
(193, 'Juan Manuel', 'Pradas Gómez', 16),
(194, 'Juan', 'Muñoz García', 15),
(195, 'Isabel', 'Solera Jiménez', 15),
(196, 'Rosario', 'Mancebo Saiz', 9),
(197, 'Ángeles', 'Hernández Álvarez', 7),
(198, 'José Luis', 'Izquierdo Jiménez', 8),
(199, 'Ana', 'Bejarano Piña', 16),
(200, 'Carmen', 'Sánchez Alba', 9),
(201, 'Manuel', 'Martorell Martínez', 7),
(202, 'Rosa', 'Fernández Alonso', 10),
(203, 'Ana María', 'García Del Rio', 15),
(204, 'Silvia', 'López López', 13),
(205, 'José Luis', 'Jaén Fernández', 15),
(206, 'Josefa', 'Valera Valle', 7),
(207, 'Iván', 'Morales Sánchez', 16),
(208, 'Montserrat', 'Diez Gutiérrez', 10),
(209, 'Juan Antonio', 'Ruiz Suarez', 7),
(210, 'Patricia', 'Hernández Pascual', 9),
(211, 'María Isabel', 'Serra Ballesta', 15),
(212, 'María Carmen', 'Fernández Gil', 7),
(213, 'Pilar', 'Serra Muñoz', 16),
(214, 'David', 'Vázquez Barranco', 8),
(215, 'David', 'García Martínez', 7),
(216, 'María Pilar', 'Candel García', 8),
(217, 'José Luis', 'García Singh', 15),
(218, 'Juan', 'Navarro Rodríguez', 9),
(219, 'Enrique', 'Meléndez Jiménez', 9),
(220, 'Ángeles', 'Díaz Pajares', 14),
(221, 'Rosa', 'Rodríguez Abella', 14),
(222, 'Manuel', 'Martin Sanz', 14),
(223, 'Francisca', 'Martínez Morera', 15),
(224, 'Juan', 'Hernández García', 8),
(225, 'Antonio', 'Quesada Pallares', 8),
(226, 'Marta', 'Mena Martínez', 8),
(227, 'Elena', 'Esteban Ochoa', 9),
(228, 'Antonio', 'García Bravo', 15),
(229, 'José Antonio', 'Villar Rodríguez', 16),
(230, 'Jesús', 'Zorrilla Sánchez', 14),
(231, 'Francisco Javier', 'Pérez Garriga', 7),
(232, 'María Teresa', 'García Casado', 9),
(233, 'Elena', 'Soto Vílchez', 13),
(234, 'Vicenta', 'Pérez Navarro', 8),
(235, 'Joan', 'Fernández Dorado', 15),
(236, 'Encarnación', 'Cobos Sánchez', 8),
(237, 'José', 'Pina Luis', 14),
(238, 'José Antonio', 'Silva Benavent', 9),
(239, 'Jesús', 'Expósito González', 15),
(240, 'Francisco Javier', 'Miralles Mendoza', 16),
(241, 'Ángel', 'Medina Alba', 14),
(242, 'Pedro', 'Marques Jiménez', 8),
(243, 'José', 'Menéndez Burgos', 16),
(244, 'Marta', 'González Zhu', 8),
(245, 'Miguel', 'Castañeda Funes', 13),
(246, 'Antonio', 'Amaya Roca', 8),
(247, 'María Carmen', 'Martínez Toledo', 13),
(248, 'Dolores', 'Tena González', 9),
(249, 'Ana María', 'Rodríguez Comino', 15),
(250, 'José', 'Gallego Varo', 9),
(251, 'Silvia', 'Regalado Hernández', 9),
(252, 'Javier', 'Arranz Cortes', 13),
(253, 'David', 'Ruiz Gaspar', 14),
(254, 'José', 'Moreno López', 16),
(255, 'Jorge', 'Garrido Trujillo', 9),
(256, 'Miguel Ángel', 'Pérez Álvarez', 9),
(257, 'Manuel', 'Delgado Paz', 16),
(258, 'Manuel', 'Serrano Aguilera', 15),
(259, 'Juana', 'González Morillo', 9),
(260, 'Luis', 'Hurtado Sánchez', 9),
(261, 'María Carmen', 'Carrillo López', 14),
(262, 'Manuel', 'Artiles Muñoz', 7),
(263, 'Carmen', 'Villegas Gómez', 16),
(264, 'Francisco', 'Gonzalo Herraiz', 14),
(265, 'Manuel', 'García Martínez', 9),
(266, 'María Carmen', 'Jiménez Gómez', 16),
(267, 'Javier', 'Acosta Liébana', 8),
(268, 'Francisco Javier', 'Miralles Hita', 16),
(269, 'Sonia', 'Pérez Mora', 14),
(270, 'Vicente', 'Sánchez Sánchez', 13),
(271, 'Juan José', 'Delgado Asensio', 15),
(272, 'Francisco', 'Torres López', 7),
(273, 'María Josefa', 'Plaza García', 16),
(274, 'Alejandro', 'Viñas Ayllón', 13),
(275, 'Isabel', 'Martorell Maldonado', 7),
(276, 'Ana María', 'Gómez Morales', 7),
(277, 'Juan', 'Márquez Flores', 13),
(278, 'Elena', 'Jorda Pablos', 9),
(279, 'María Magdalena', 'Ros Gómez', 14),
(280, 'María Luisa', 'Martínez Ballesteros', 13),
(281, 'Ramón', 'Feijoo Cava', 8),
(282, 'Juan', 'Stoica León', 14),
(283, 'Antonio', 'Riba Luque', 9),
(284, 'María Luisa', 'Losada Rodríguez', 8),
(285, 'Rubén', 'Rodríguez Rodríguez', 14),
(286, 'María Carmen', 'Zurita San José', 9),
(287, 'Iker', 'Marín Ortiz', 15),
(288, 'Julio', 'Sanz Galarza', 8),
(289, 'Pedro', 'Martin Macías', 8),
(290, 'Francisca', 'Bermejo García', 13),
(291, 'Pedro', 'Rodríguez Crespo', 16),
(292, 'Fernando', 'Castaño De la Torre', 13),
(293, 'José', 'López Pérez', 8),
(294, 'Raúl', 'Naranjo Rocha', 8),
(295, 'Eva', 'Rueda Vera', 7),
(296, 'Isabel', 'Villegas Labrador', 13),
(297, 'Dolores', 'Carmona García', 9),
(298, 'Carmen', 'Díaz Vargas', 9),
(299, 'José Luis', 'Romero Montes', 14),
(300, 'María Teresa', 'Flores Alonso', 14),
(301, 'Irene', 'Cabañas Martí', 15),
(302, 'Sara', 'Rodríguez García', 9),
(303, 'José Luis', 'Sánchez García', 9),
(304, 'Cristina', 'López Pérez', 15),
(305, 'Teresa', 'Rivero Romero', 13),
(306, 'Raúl', 'Gheorghe Rodrigo', 16),
(307, 'Antonio', 'Romero Campos', 14),
(308, 'Enrique', 'Triguero Fernández', 8),
(309, 'Carmen', 'García De Castro', 9),
(310, 'Mercedes', 'Pintor Catalán', 7),
(311, 'Antonio', 'Sanz Diez', 13),
(312, 'Cristina', 'Gómez Masip', 8),
(313, 'Antonio', 'Trujillo Martínez', 9),
(314, 'Eduardo', 'Muñoz Rubio', 9),
(315, 'Julián', 'Gómez Muñoz', 9),
(316, 'María Teresa', 'Contreras Moreno', 7),
(317, 'Laura', 'Márquez Carrera', 9),
(318, 'Raquel', 'Antelo González', 16),
(319, 'Miguel', 'Vigil Calvo', 8),
(320, 'Francisco Javier', 'Peñas Tabares', 9),
(321, 'Manuel', 'Asencio Díaz', 9),
(322, 'Elena', 'Sainz Ochoa', 8),
(323, 'Antonio', 'Montenegro Sánchez', 9),
(324, 'Alberto', 'Solé Diez', 13),
(325, 'María', 'Espada García', 13),
(326, 'Julia', 'Santos Romero', 9),
(327, 'Juan', 'Pla Rodríguez', 8),
(328, 'David', 'González Casas', 13),
(329, 'José Luis', 'Giner Stoica', 15),
(330, 'María Pilar', 'Pérez Reyes', 15),
(331, 'Pedro', 'Gallego Márquez', 8),
(332, 'Francisco', 'Ibáñez Millán', 15),
(333, 'Álvaro', 'Fernández Villena', 14),
(334, 'Jesús', 'Escudero Fernández', 14),
(335, 'Juan José', 'Negrín Alfonso', 14),
(336, 'David', 'De Diego Viñas', 14),
(337, 'Manuela', 'Carnero Rico', 15),
(338, 'Jesús', 'López Reig', 13),
(339, 'José Antonio', 'Jurado Megias', 14),
(340, 'Patricia', 'Alonso Rodrigo', 7),
(341, 'Ignacio', 'Caballero Jaén', 7),
(342, 'Jesús', 'Pujol Cruz', 15),
(343, 'Albert', 'Pérez Flores', 13),
(344, 'Diego', 'Arco Fernández', 7),
(345, 'María', 'Llanos Pereira', 8),
(346, 'Ana', 'Ruiz Andrés', 7),
(347, 'Ángeles', 'Morales Hernández', 7),
(348, 'Antonio', 'Guerrero Mena', 8),
(349, 'Santiago', 'Artiles Moraga', 13),
(350, 'Miguel', 'Lafuente Saborido', 8),
(351, 'Isabel', 'Ruiz Grande', 15),
(352, 'Pablo', 'García Solís', 8),
(353, 'Adrián', 'Pérez Sanz', 14),
(354, 'María', 'Fernández Romero', 15),
(355, 'Pablo', 'Salvador Gómez', 16),
(356, 'Pilar', 'Rodríguez Sastre', 8),
(357, 'Marc', 'Luque Barrios', 7),
(358, 'Elena', 'Ramírez Muñoz', 8),
(359, 'Elena', 'Delgado González', 10),
(360, 'Marc', 'Romero Jiménez', 9),
(361, 'José Manuel', 'Palau González', 13),
(362, 'Dolores', 'Moreno Nieves', 14),
(363, 'María', 'Carreras Ruiz', 9),
(364, 'María Carmen', 'Puertas Granero', 7),
(365, 'Manuela', 'Alonso Cruz', 9),
(366, 'Mercedes', 'Ruiz Romero', 9),
(367, 'Miguel', 'Ramos Ortega', 14),
(368, 'Emilio', 'Morales Martínez', 16),
(369, 'Francisco José', 'García Antolín', 15),
(370, 'María Jesús', 'Melian Villar', 8),
(371, 'Francisco', 'Salgado Duran', 13),
(372, 'Carmen', 'Álvarez Arce', 14),
(373, 'José', 'Nicolau López', 7),
(374, 'José', 'Lara Álvarez', 9),
(375, 'Francisco', 'Vergara Bermúdez', 14),
(376, 'Laura', 'Patiño Domínguez', 9),
(377, 'Miguel Ángel', 'Palenzuela Giner', 16),
(378, 'Juan José', 'González Carrero', 16),
(379, 'Diego', 'Peral Vázquez', 16),
(380, 'Antonio', 'Sevillano Frías', 13),
(381, 'José', 'Rodríguez García', 14),
(382, 'María Pilar', 'Bustamante Gaspar', 16),
(383, 'Juan', 'Samper García', 14),
(384, 'Isabel', 'Lorenzo Navas', 16),
(385, 'Roberto', 'Aparicio Casado', 16),
(386, 'María Isabel', 'Gago García', 9),
(387, 'María Rosario', 'Mendizábal Huertas', 9),
(388, 'Francisco', 'Martin Martínez', 14),
(389, 'José Antonio', 'Martínez González', 7),
(390, 'Vicente', 'Pastor Muñoz', 7),
(391, 'Jesús', 'Rodríguez Martínez', 15),
(392, 'Alejandro', 'Rodríguez Marco', 15),
(393, 'José', 'Luna Corral', 7),
(394, 'Encarnación', 'Pulido Martínez', 13),
(395, 'Miguel', 'Rojas Rodríguez', 7),
(396, 'María Isabel', 'Galindo Recio', 8),
(397, 'Irene', 'Martínez Pérez', 9),
(398, 'Lucia', 'García Cruz', 8),
(399, 'Adrián', 'Gallego Diez', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero_jugadores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id`, `nombre`, `numero_jugadores`) VALUES
(1, 'Futbol', 11),
(2, 'Baloncesto', 5),
(3, 'Balonmano', 7),
(4, 'Voleibol', 6),
(5, 'Padel', 2),
(6, 'Hockey sobre patines', 5),
(7, 'Waterpolo', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad_minima` int(3) NOT NULL,
  `deporte_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `edad_minima`, `deporte_id`) VALUES
(1, 'Las Jugones', 10, 1),
(2, 'Patinaores', 12, 6),
(3, 'Los Canastas', 13, 2),
(4, 'Hispania', 7, 3),
(5, 'Smash Team', 11, 4),
(6, 'Retadores', 8, 5),
(7, 'Los Guerreros', 14, 7),
(8, 'Manoplas', 14, 4),
(9, 'Rolling', 9, 6),
(10, 'Triples', 11, 2),
(11, 'Manotas', 13, 3),
(12, 'Acuaticos', 10, 7),
(13, 'Futbolisimos', 7, 1),
(14, 'Peloteros', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_alumnos`
--

CREATE TABLE `equipos_alumnos` (
  `equipo_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos_alumnos`
--

INSERT INTO `equipos_alumnos` (`equipo_id`, `alumno_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 12),
(1, 16),
(1, 17),
(1, 19),
(1, 22),
(1, 83),
(2, 33),
(2, 37),
(2, 88),
(2, 109),
(2, 113),
(3, 13),
(3, 142),
(3, 150),
(3, 177),
(3, 220),
(4, 1),
(4, 341),
(4, 364),
(8, 10),
(8, 14),
(8, 111),
(8, 174),
(8, 183),
(8, 213),
(9, 18),
(9, 24),
(9, 34),
(9, 40),
(9, 81),
(11, 36),
(11, 154),
(11, 163),
(11, 168),
(11, 187),
(11, 221),
(11, 333),
(12, 101),
(12, 105),
(12, 107),
(12, 118),
(12, 140),
(12, 144),
(13, 51),
(13, 120),
(13, 178),
(13, 179),
(13, 214),
(13, 224),
(13, 225),
(13, 242),
(13, 246),
(13, 352),
(14, 136),
(14, 148),
(14, 158),
(14, 267),
(14, 281),
(14, 293),
(14, 321),
(14, 323),
(14, 348),
(14, 350),
(14, 360);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `deporte_id` (`deporte_id`);

--
-- Indices de la tabla `equipos_alumnos`
--
ALTER TABLE `equipos_alumnos`
  ADD UNIQUE KEY `equipo_id` (`equipo_id`,`alumno_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`deporte_id`) REFERENCES `deportes` (`id`);

--
-- Filtros para la tabla `equipos_alumnos`
--
ALTER TABLE `equipos_alumnos`
  ADD CONSTRAINT `equipos_alumnos_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `equipos_alumnos_ibfk_2` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
