-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Mar 2021, 16:11:33
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`) VALUES
(1, 'Anasayfa', '/index.php'),
(2, 'Blog', '/blog-posts.php'),
(3, 'Hakkımızda', '/about-us.php'),
(4, 'Ekibimiz', '/team.php'),
(5, 'İletişime Geç', '/contact.php');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`) VALUES
(1, 'Blog');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `button_url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `image_url`, `title`, `description`, `button_text`, `button_url`) VALUES
(1, '/images/slider-image-1-1920x700.jpg', 'Lorem ipsum dolor sit amet.', 'Voluptas dignissimos esse, explicabo cum fugit eaque, perspiciatis quia ab nisi sapiente delectus eiet.', 'Read Blog', '/blog-posts.php'),
(2, '/images/slider-image-2-1920x700.jpg', 'Distinctio explicabo vero animi culpa facere voluptatem.', 'merhaba', 'Read Blog', '/blog-posts.php'),
(3, '/images/slider-image-2-1920x700.jpg', 'Efficient Learning Methods', 'Nam eget sapien vel nibh euismod vulputate in vel nibh. Quisque eu ex eu urna venenatis sollicitudin ut at libero.', 'Read Blog', '/blog-posts.php'),
(4, '/images/slider/product-3-720x480.jpg', 'deneme1', 'deneme1', 'deneme1', 'deneme1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`) VALUES
(4, 'kerim.kilic.1751@gmail.com', '4297f44b13955235245b2497399d7a93', 'Kerim Kılıç'),
(5, 'wqeqweqwe@gmail.com', '4297f44b13955235245b2497399d7a93', 'Kerim Kılıç');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
