-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.11.5-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla ecommerce.categories: ~8 rows (aproximadamente)
INSERT INTO `categories` (`id`, `name`, `description`, `productCount`, `imgSrc`) VALUES
	(101, 'Autos', 'Los mejores precios en autos 0 kilómetro, de alta y media gama.', 5, 'img/cat101_1.jpg'),
	(102, 'Juguetes', 'Encuentra aquí los mejores precios para niños/as de cualquier edad.', 4, 'img/cat102_1.jpg'),
	(103, 'Muebles', 'Muebles antiguos, nuevos y para ser armados por uno mismo.', 4, 'img/cat103_1.jpg'),
	(104, 'Herramientas', 'Herramientas para cualquier tipo de trabajo.', 0, 'img/cat104_1.jpg'),
	(105, 'Computadoras', 'Todo en cuanto a computadoras, para uso de oficina y/o juegos.', 1, 'img/cat105_1.jpg'),
	(106, 'Vestimenta', 'Gran variedad de ropa, nueva y de segunda mano.', 0, 'img/cat106_1.jpg'),
	(107, 'Electrodomésticos', 'Todos los electrodomésticos modernos y de bajo consumo.', 0, 'img/cat107_1.jpg'),
	(108, 'Deporte', 'Toda la variedad de indumentaria para todo tipo de deporte.', 0, 'img/cat108_1.jpg'),
	(109, 'Celulares', 'Celulares de todo tipo para cubrir todas las necesidades.', 0, 'img/cat109_1.jpg');

-- Volcando datos para la tabla ecommerce.products: ~13 rows (aproximadamente)
INSERT INTO `products` (`id`, `name`, `description`, `cost`, `currency`, `soldCount`, `image`, `catID`) VALUES
	(40281, 'Computadora de escritorio', 'Computadora de escritorio. Potencia y rendimiento, para juegos o trabajo', 2599.00, 'USD', 11, 'img/prod40281_1.jpg', 105),
	(50741, 'Oso de peluche', 'Oso de peluche gigante, con el bebé. Resistente y lavable. Tus hijos los amarán', 2400.00, 'UYU', 97, 'img/prod50741_1.jpg', 102),
	(50742, 'Pelota de básquetbol', 'Balón de baloncesto profesional, para interiores, tamaño 5, 27.5 pulgadas. Oficial de la NBA', 2999.00, 'UYU', 11, 'img/prod50742_1.jpg', 102),
	(50743, 'PlayStation 5', 'Maravíllate con increíbles gráficos y disfruta de nuevas funciones de PS5. Con E/S integrada.', 59999.00, 'UYU', 16, 'img/prod50743_1.jpg', 102),
	(50744, 'Bicicleta', '¡La mejor BMX pequeña del mercado! Frenos traseros y cuadro duradero de acero Hi-Ten.', 10999.00, 'UYU', 8, 'img/prod50744_1.jpg', 102),
	(50921, 'Chevrolet Onix Joy', 'Generación 2019, variedad de colores. Motor 1.0, ideal para ciudad.', 13500.00, 'USD', 14, 'img/prod50921_1.jpg', 101),
	(50922, 'Fiat Way', 'La versión de Fiat que brinda confort y a un precio accesible.', 14500.00, 'USD', 52, 'img/prod50922_1.jpg', 101),
	(50923, 'Suzuki Celerio', 'Un auto que se ha ganado la buena fama por su economía con el combustible.', 12500.00, 'USD', 25, 'img/prod50923_1.jpg', 101),
	(50924, 'Peugeot 208', 'El modelo de auto que se sigue renovando y manteniendo su prestigio en comodidad.', 15200.00, 'USD', 17, 'img/prod50924_1.jpg', 101),
	(50925, 'Bugatti Chiron', 'El mejor hiperdeportivo de mundo. Producción limitada a 500 unidades.', 3500000.00, 'USD', 0, 'img/prod50925_1.jpg', 101),
	(60801, 'Juego de comedor', 'Un conjunto sencillo y sólido, ideal para zonas de comedor pequeñas, hecho en madera maciza de pino', 4000.00, 'UYU', 88, 'img/prod60801_1.jpg', 103),
	(60802, 'Sofá', 'Cómodo sofá de tres cuerpos, con chaiselongue intercambiable. Ideal para las siestas', 24000.00, 'UYU', 12, 'img/prod60802_1.jpg', 103),
	(60803, 'Armario', 'Diseño clásico con puertas con forma de panel. Espejo de cuerpo entero para ver cómo te queda la ropa', 8000.00, 'UYU', 24, 'img/prod60803_1.jpg', 103),
	(60804, 'Mesa de centro', 'Añade más funciones a tu sala de estar, ya que te permite cambiar fácilmente de actividad.', 10000.00, 'UYU', 37, 'img/prod60804_1.jpg', 103);

-- Volcando datos para la tabla ecommerce.product_info: ~14 rows (aproximadamente)
INSERT INTO `product_info` (`id`, `images`, `related_Products`, `id_Product`) VALUES
	(40281, '["img/prod40281_1.jpg", "img/prod40281_2.jpg", "img/prod40281_3.jpg", "img/prod40281_4.jpg"]', '[{"id": 50743, "name": "PlayStation 5", "image": "img/prod50743_1.jpg"}, {"id": 50744, "name": "Bicicleta", "image": "img/prod50744_1.jpg"}]', 40281),
	(50741, '["img/prod50741_1.jpg", "img/prod50741_2.jpg", "img/prod50741_3.jpg", "img/prod50741_4.jpg"]', '[{"id": 50742, "name": "Pelota de básquetbol", "image": "img/prod50742_1.jpg"}, {"id": 50744, "name": "Bicicleta", "image": "img/prod50744_1.jpg"}]', 50741),
	(50742, '["img/prod50742_1.jpg", "img/prod50742_2.jpg", "img/prod50742_3.jpg", "img/prod50742_4.jpg"]', '[{"id": 50741, "name": "Oso de peluche", "image": "img/prod50741_1.jpg"}, {"id": 50743, "name": "PlayStation 5", "image": "img/prod50743_1.jpg"}]', 50742),
	(50743, '["img/prod50743_1.jpg", "img/prod50743_2.jpg", "img/prod50743_3.jpg", "img/prod50743_4.jpg"]', '[{"id": 50742, "name": "Pelota de básquetbol", "image": "img/prod50742_1.jpg"}, {"id": 50744, "name": "Bicicleta", "image": "img/prod50744_1.jpg"}]', 50743),
	(50744, '["img/prod50744_1.jpg", "img/prod50744_2.jpg", "img/prod50744_3.jpg", "img/prod50744_4.jpg"]', '[{"id": 50741, "name": "Oso de peluche", "image": "img/prod50741_1.jpg"}, {"id": 50743, "name": "PlayStation 5", "image": "img/prod50743_1.jpg"}]', 50744),
	(50921, '["img/prod50921_1.jpg", "img/prod50921_2.jpg", "img/prod50921_3.jpg", "img/prod50921_4.jpg"]', '[{"id": 50924, "name": "Peugeot 208", "image": "img/prod50924_1.jpg"}, {"id": 50922, "name": "Fiat Way", "image": "img/prod50922_1.jpg"}]', 50921),
	(50922, '["img/prod50922_1.jpg", "img/prod50922_2.jpg", "img/prod50922_3.jpg", "img/prod50922_4.jpg"]', '[{"id": 50921, "name": "Chevrolet Onix Joy", "image": "img/prod50921_1.jpg"}, {"id": 50923, "name": "Suzuki Celerio", "image": "img/prod50923_1.jpg"}]', 50922),
	(50923, '["img/prod50923_1.jpg", "img/prod50923_2.jpg", "img/prod50923_3.jpg", "img/prod50923_4.jpg"]', '[{"id": 50924, "name": "Peugeot 208", "image": "img/prod50924_1.jpg"}, {"id": 50922, "name": "Fiat Way", "image": "img/prod50922_1.jpg"}]', 50923),
	(50924, '["img/prod50924_1.jpg", "img/prod50924_2.jpg", "img/prod50924_3.jpg", "img/prod50924_4.jpg"]', '[{"id": 50921, "name": "Chevrolet Onix Joy", "image": "img/prod50921_1.jpg"}, {"id": 50923, "name": "Suzuki Celerio", "image": "img/prod50923_1.jpg"}]', 50924),
	(50925, '["img/prod50925_1.jpg", "img/prod50925_2.jpg", "img/prod50925_3.jpg", "img/prod50925_4.jpg"]', '[{"id": 50924, "name": "Peugeot 208", "image": "img/prod50924_1.jpg"}, {"id": 50921, "name": "Chevrolet Onix Joy", "image": "img/prod50921_1.jpg"}]', 50925),
	(60801, '["img/prod60801_1.jpg", "img/prod60801_2.jpg", "img/prod60801_3.jpg", "img/prod60801_4.jpg"]', '[{"id": 60802, "name": "Sofá", "image": "img/prod60802_1.jpg"}, {"id": 60804, "name": "Mesa de centro", "image": "img/prod60804_1.jpg"}]', 60801),
	(60802, '["img/prod60802_1.jpg", "img/prod60802_2.jpg", "img/prod60802_3.jpg", "img/prod60802_4.jpg"]', '[{"id": 60801, "name": "Juego de comedor", "image": "img/prod60801_1.jpg"}, {"id": 60803, "name": "Armario", "image": "img/prod60803_1.jpg"}]', 60802),
	(60803, '["img/prod60803_1.jpg", "img/prod60803_2.jpg", "img/prod60803_3.jpg", "img/prod60803_4.jpg"]', '[{"id": 60802, "name": "Sofá", "image": "img/prod60802_1.jpg"}, {"id": 60804, "name": "Mesa de centro", "image": "img/prod60804_1.jpg"}]', 60803),
	(60804, '["img/prod60804_1.jpg", "img/prod60804_2.jpg", "img/prod60804_3.jpg", "img/prod60804_4.jpg"]', '[{"id": 60801, "name": "Juego de comedor", "image": "img/prod60801_1.jpg"}, {"id": 60803, "name": "Armario", "image": "img/prod60803_1.jpg"}]', 60804);

-- Volcando datos para la tabla ecommerce.user: ~1 rows (aproximadamente)
INSERT INTO `user` (`id`, `name`, `middleName`, `lastName`, `lastName2`, `accessEmail`, `contactEmail`, `phone`) VALUES
	(3, 'Maximiliano', 'Agustin', 'Sena', 'Troisi', 'minuevocorreo@gmail.com', 'cambiodecorreo@gmail.com', 22222);

-- Volcando datos para la tabla ecommerce.usermail: ~4 rows (aproximadamente)
INSERT INTO `usermail` (`accessEmail`, `password`) VALUES
	('correonuevo@correo.com', 'ultimatum'),
	('maxi@correo.com', 'senasena'),
	('minuevocorreo@gmail.com', 'estaeslacontraseña'),
	('proyecto4@correo.com', 'asdasdas');

-- Volcando datos para la tabla ecommerce.user_cart: ~5 rows (aproximadamente)
INSERT INTO `user_cart` (`user`, `articles`, `id`) VALUES
	('25801', '[{"id": 50924, "name": "Peugeot 208", "count": 1, "unitCost": 15200, "currency": "USD", "image": "img/prod50924_1.jpg"}]', ''),
	('maxi@correo.com', '{"id":50744,"name":"Bicicleta","count":1,"unitCost":"10999.00","currency":"UYU","image":"img/prod50744_1.jpg"}', '50744'),
	('maxi@correo.com', '{"id":40281,"name":"Computadora de escritorio","count":1,"unitCost":"2599.00","currency":"USD","image":"img/prod40281_1.jpg"}', '40281'),
	('maxi@correo.com', '{"id":50924,"name":"Peugeot 208","count":1,"unitCost":"15200.00","currency":"USD","image":"img/prod50924_1.jpg"}', '50924'),
	('grupojap@gmail.com', '{"id":50922,"name":"Fiat Way","count":1,"unitCost":"14500.00","currency":"USD","image":"img/prod50922_1.jpg"}', '50922');

-- Volcando datos para la tabla ecommerce.user_comments: ~29 rows (aproximadamente)
INSERT INTO `user_comments` (`id`, `product`, `score`, `description`, `user`, `dateTime`) VALUES
	(1, 50741, 5, 'Precioso, a mi nena le encantó', 'silvia_fagundez', '2021-02-20 14:00:42'),
	(2, 50741, 4, 'Esperaba que fuera más grande, pero es muy lindo.', 'majo_sanchez', '2021-01-11 16:26:10'),
	(3, 50741, 5, 'Hermoso el oso. Quedamos encantados, lo recomiendo.', 'raul_añez', '2020-12-16 19:55:19'),
	(4, 50741, 1, 'Se lo regalé a mi novia para que me perdone, pero no funcionó', 'flynn_rider', '2020-02-14 23:19:09'),
	(5, 50742, 5, 'Perfecta. La que me recomendó el entrenador', 'karen_gonzalez', '2022-05-21 23:10:41'),
	(6, 50742, 4, 'Es lo que esperaba. Ahora a entrenar mucho!', 'luis_salgueiro', '2021-10-30 06:33:53'),
	(7, 50742, 5, 'Muy buena calidad.', 'carlos_diaz', '2020-11-02 09:28:45'),
	(8, 50742, 5, 'Excelente. Para rememorar viejos tiempos y volver a sentirse un campeón.', 'scottie_pippen', '2019-11-09 21:15:29'),
	(9, 50743, 5, 'Un lujo. Se la compré a mis hijos, pero creo que me la quedo yo.', 'saul_dominguez', '2022-04-18 13:20:56'),
	(10, 50743, 5, 'Increibles los gráficos que tiene.', 'lucia_ralek', '2022-04-05 11:20:09'),
	(11, 50743, 5, 'IM PRE SIO NAN TE.', 'mateo_diestre', '2022-03-21 22:38:39'),
	(12, 50743, 5, 'Me cuesta creer lo que han avanzado las consolas', 'ralph_baer', '2022-01-04 11:16:48'),
	(13, 50744, 5, 'Compra de último momento para la navidad. A mi nieto le gustó.', 'ignacio_paremon', '2021-12-24 23:59:59'),
	(14, 50744, 2, 'Les pedí azul y me mandaron verde. La bicicleta es buena', 'mia_barboza', '2021-09-15 01:27:19'),
	(15, 50744, 3, 'Es buena, pero le faltaron las rueditas.', 'julian_surech', '2021-03-24 20:11:19'),
	(16, 50744, 4, 'Perfecta para que mis hijos vayan empezando a practicar.', 'mariana_pajon', '2021-01-18 05:22:50'),
	(17, 50921, 3, 'Ya llevo un año con este auto y la verdad que tiene sus ventajas y desventajas', 'juan_pedro', '2020-02-25 18:03:52'),
	(18, 50921, 5, 'Es un auto muy cómodo y en relación precio/calidad vale la pena!', 'maria_sanchez', '2020-01-17 13:42:18'),
	(19, 50921, 4, 'Casi todo bien!, excepto por algún detalle de gusto personal', 'paola_perez', '2020-03-14 09:05:13'),
	(20, 50921, 5, 'Un espectáculo el auto!', 'gustavo_trelles', '2020-02-21 15:05:22'),
	(21, 50922, 3, 'Es un buen auto, pero el precio me pareció algo elevado', 'ema_perez', '2022-04-05 15:29:40'),
	(22, 50922, 5, 'Muy buen auto, vale cada centavo', 'javier_santoalla', '2021-11-15 19:32:10'),
	(23, 50922, 5, 'Me gusta como se comporta en tierra y pista', 'gonza_rodriguez', '2020-02-21 15:05:22'),
	(24, 50923, 5, 'Gran opción. Bueno, bonito y barato', 'alfredo_bioy', '2022-02-15 20:19:20'),
	(25, 50923, 4, 'No había el color que yo quería, pero lo demás está perfecto.', 'pablo_cibeles', '2021-05-24 19:25:43'),
	(26, 50923, 5, 'Lo que busco cuando no compito', 'santiago_urrutia', '2020-12-03 14:15:33'),
	(27, 50924, 5, 'Espectacular. Sport con potencia y confort.', 'maite_caceres', '2022-06-24 20:19:20'),
	(28, 60801, 3, 'Es algo chico, pero está bien para una familia pequeña.', 'jaime_gil', '2021-12-02 11:23:32'),
	(29, 60802, 4, 'Muy cómodo. Ideal para las siestas', 'ximena_fagundez', '2022-03-29 09:15:01'),
	(30, 60802, 5, 'Lo compré para ver los partidos con mis amigos. Valió la pena.', 'marcelo_sosa', '2021-08-09 22:05:12'),
	(31, 60803, 5, 'Es grande. Entra más de lo que parece', 'bruno_diaz', '2022-11-21 03:33:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
