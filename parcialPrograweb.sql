-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.8.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para recursoshumanos
CREATE DATABASE IF NOT EXISTS `recursoshumanos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `recursoshumanos`;

-- Volcando estructura para tabla recursoshumanos.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEmpleado` varchar(250) NOT NULL,
  `apellidoEmpleado` varchar(2500) NOT NULL,
  `fechaContratacion` date NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `idProyecto` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_empleado_proyecto` (`idProyecto`),
  CONSTRAINT `fk_empleado_proyecto` FOREIGN KEY (`idProyecto`) REFERENCES `proyectos` (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla recursoshumanos.empleados: ~25 rows (aproximadamente)
INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `fechaContratacion`, `estado`, `fechaNacimiento`, `telefono`, `correo`, `idProyecto`, `createdAt`, `updatedAt`) VALUES
	(1, 'Sara', 'Sanchez', '2025-08-22', 1, '2000-05-15', '5551234567', 'Sara@gmail.com', 1, '2025-08-22 18:03:35', '2025-08-22 18:40:04'),
	(2, 'María', 'Gómez', '2024-12-01', 1, '1998-03-22', '51234568', 'mari@gmail.com', 3, '2025-08-22 18:45:47', '2025-08-22 18:45:47'),
	(3, 'Ana', 'López', '2025-08-22', 1, '2000-05-05', '5551234567', 'analopez@gmail.com', 3, '2025-08-22 18:46:41', '2025-08-22 18:50:32'),
	(4, 'Juan', 'Perez', '2024-11-15', 1, '1997-05-12', '5550000001', 'juan.perez@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(5, 'Maria', 'Gomez', '2024-12-01', 1, '1998-03-22', '5550000002', 'maria.gomez@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(6, 'Luis', 'Alvarez', '2025-01-10', 1, '1996-07-04', '5550000003', 'luis.alvarez@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(7, 'Sofia', 'Reyes', '2025-02-05', 1, '1999-10-18', '5550000004', 'sofia.reyes@demo.com', 2, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(8, 'Carlos', 'Morales', '2025-02-12', 1, '1995-01-30', '5550000005', 'carlos.morales@demo.com', 2, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(9, 'Ana', 'Lopez', '2025-03-01', 1, '1997-09-25', '5550000006', 'ana.lopez@demo.com', 2, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(10, 'Diego', 'Castillo', '2025-03-10', 1, '1996-11-08', '5550000007', 'diego.castillo@demo.com', 3, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(11, 'Fernanda', 'Ruiz', '2025-03-20', 1, '1998-06-14', '5550000008', 'fernanda.ruiz@demo.com', 3, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(12, 'Rodrigo', 'Mendez', '2025-04-02', 1, '1995-12-02', '5550000009', 'rodrigo.mendez@demo.com', 3, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(13, 'Paula', 'Herrera', '2025-04-15', 1, '1997-02-19', '5550000010', 'paula.herrera@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(14, 'Mauricio', 'Soto', '2025-05-01', 1, '1994-08-07', '5550000011', 'mauricio.soto@demo.com', 2, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(15, 'Gabriela', 'Diaz', '2025-05-12', 1, '1999-01-05', '5550000012', 'gabriela.diaz@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(16, 'Kevin', 'Ortiz', '2025-06-03', 1, '1996-04-28', '5550000013', 'kevin.ortiz@demo.com', 3, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(17, 'Camila', 'Navarro', '2025-06-10', 1, '1998-09-11', '5550000014', 'camila.navarro@demo.com', 4, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(18, 'Andres', 'Pineda', '2025-06-18', 1, '1997-12-21', '5550000015', 'andres.pineda@demo.com', 4, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(19, 'Valeria', 'Romero', '2025-06-25', 1, '1998-02-03', '5550000016', 'valeria.romero@demo.com', 5, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(20, 'Jose', 'Cabrera', '2025-07-02', 1, '1995-05-27', '5550000017', 'jose.cabrera@demo.com', 5, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(21, 'Daniela', 'Fuentes', '2025-07-09', 1, '1999-03-09', '5550000018', 'daniela.fuentes@demo.com', 2, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(22, 'Miguel', 'Salazar', '2025-07-16', 1, '1996-06-16', '5550000019', 'miguel.salazar@demo.com', 3, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(23, 'Karla', 'Torres', '2025-07-23', 1, '1997-01-13', '5550000020', 'karla.torres@demo.com', 4, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(24, 'Hector', 'Rivas', '2025-07-30', 1, '1994-10-02', '5550000021', 'hector.rivas@demo.com', 5, '2025-08-22 13:07:19', '2025-08-22 13:07:19'),
	(25, 'Elena', 'Campos', '2025-08-05', 1, '1998-07-07', '5550000022', 'elena.campos@demo.com', 1, '2025-08-22 13:07:19', '2025-08-22 13:07:19');

-- Volcando estructura para tabla recursoshumanos.proyectos
CREATE TABLE IF NOT EXISTS `proyectos` (
  `idProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProyecto` varchar(250) NOT NULL,
  `descripcionProyecto` varchar(300) NOT NULL,
  `fechaInicio` date NOT NULL,
  `progreso` decimal(18,0) NOT NULL,
  `fechaFin` date DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla recursoshumanos.proyectos: ~24 rows (aproximadamente)
INSERT INTO `proyectos` (`idProyecto`, `nombreProyecto`, `descripcionProyecto`, `fechaInicio`, `progreso`, `fechaFin`, `estado`, `createdAt`, `updatedAt`) VALUES
	(1, 'Sistema de banco', 'Módulo de reservas y facturación', '2025-08-22', 100, NULL, 1, '2025-08-22 18:15:04', '2025-08-22 18:15:53'),
	(2, 'Sistema de cuentas', 'Módulo de usuarios', '2025-08-22', 1, NULL, 1, '2025-08-22 18:34:47', '2025-08-22 18:34:47'),
	(3, 'Sistema de recursos', 'recursos de la empresa', '2025-08-22', 0, NULL, 1, '2025-08-22 18:35:45', '2025-08-22 18:35:45'),
	(4, 'Sistema de Banco', 'Core bancario mínimo', '2025-01-15', 10, NULL, 1, '2025-08-22 19:04:22', '2025-08-22 19:04:22'),
	(5, 'Ecommerce Hotel', 'Ventas online de habitaciones y tienda', '2025-02-01', 25, NULL, 1, '2025-08-22 19:04:30', '2025-08-22 19:04:30'),
	(6, 'App Delivery Xela', 'Reparto local', '2025-02-10', 35, NULL, 1, '2025-08-22 19:04:35', '2025-08-22 19:04:35'),
	(7, 'Plataforma Cursos', 'Aulas virtuales', '2025-02-20', 40, NULL, 1, '2025-08-22 19:04:40', '2025-08-22 19:04:40'),
	(8, 'CRM Ventas', 'Embudo y clientes', '2025-03-01', 100, '2025-05-30', 0, '2025-08-22 19:04:48', '2025-08-22 19:04:48'),
	(9, 'Inventario General', 'Inventarios multi-ubicación', '2025-03-05', 55, NULL, 1, '2025-08-22 19:04:58', '2025-08-22 19:04:58'),
	(10, 'Dashboard Finanzas', 'KPIs y reportes', '2025-03-18', 65, NULL, 1, '2025-08-22 19:05:02', '2025-08-22 19:05:02'),
	(11, 'Chat Soporte', 'Atención al cliente', '2025-03-25', 15, NULL, 1, '2025-08-22 19:05:07', '2025-08-22 19:05:07'),
	(12, 'API Pagos', 'Integración con POS', '2025-04-01', 30, NULL, 1, '2025-08-22 19:05:13', '2025-08-22 19:05:13'),
	(13, 'Kiosko Self-Service', 'Autogestión en lobby', '2025-04-07', 100, '2025-06-15', 0, '2025-08-22 19:05:21', '2025-08-22 19:05:21'),
	(14, 'Gestión Nómina', 'Cálculo de sueldos', '2025-04-12', 45, NULL, 1, '2025-08-22 19:05:26', '2025-08-22 19:05:26'),
	(15, 'Analytics Eventos', 'Trazabilidad y BI', '2025-04-20', 70, NULL, 1, '2025-08-22 19:05:31', '2025-08-22 19:05:31'),
	(16, 'App Reservas', 'Reservas multi-sede', '2025-04-28', 50, NULL, 1, '2025-08-22 19:05:37', '2025-08-22 19:05:37'),
	(17, 'Control Lavandería', 'Flujo de prendas y stock', '2025-05-03', 60, NULL, 1, '2025-08-22 19:05:40', '2025-08-22 19:05:40'),
	(18, 'POS Restaurante', 'Ventas y cocina', '2025-05-10', 100, '2025-07-05', 0, '2025-08-22 19:05:45', '2025-08-22 19:05:45'),
	(19, 'Portal Proveedores', 'Órdenes y facturas', '2025-05-20', 33, NULL, 1, '2025-08-22 19:05:49', '2025-08-22 19:05:49'),
	(20, 'Monitor IoT', 'Lecturas en tiempo real', '2025-05-25', 48, NULL, 1, '2025-08-22 19:05:54', '2025-08-22 19:05:54'),
	(21, 'Reportador PDF', 'Generación de reportes', '2025-06-12', 80, NULL, 1, '2025-08-22 19:06:30', '2025-08-22 19:06:30'),
	(22, 'Gestor Tickets', 'Soporte y SLA', '2025-06-05', 58, NULL, 1, '2025-08-22 19:06:36', '2025-08-22 19:06:36'),
	(23, 'Firma Digital', 'Documentos firmados', '2025-06-01', 12, NULL, 1, '2025-08-22 19:06:41', '2025-08-22 19:06:41'),
	(24, 'Monitor IoT', 'Lecturas en tiempo real', '2025-05-25', 48, NULL, 1, '2025-08-22 19:06:51', '2025-08-22 19:06:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
