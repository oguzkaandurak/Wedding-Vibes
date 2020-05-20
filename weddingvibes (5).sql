-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 May 2020, 06:49:41
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `weddingvibes`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activateuser`
--

CREATE TABLE `activateuser` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `secretkey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adminusers`
--

INSERT INTO `adminusers` (`id`, `email`, `pass`) VALUES
(1, 'admin@weddingvibes.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Mekanlar'),
(2, 'Organizasyon'),
(3, 'Fotoğrafçı'),
(4, 'Kuaför'),
(5, 'Çiçekçi'),
(6, 'Matbaa'),
(7, 'Giyim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `comment` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `serviceProviderId`, `userId`, `comment`) VALUES
(5, 10, 13, 'Güzel hizmet helal'),
(6, 10, 13, 'Fena hizmet'),
(7, 10, 13, 'Ben böyle iyi hizmet görmedim'),
(8, 9, 13, 'Süper kuaför helal'),
(9, 9, 13, 'Çok iyi kuaför');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `passreset`
--

CREATE TABLE `passreset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `secretpasskey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `servicefav`
--

CREATE TABLE `servicefav` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `serviceproviders`
--

CREATE TABLE `serviceproviders` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `vendor_name` text NOT NULL,
  `user_id` int(255) NOT NULL,
  `is_activated` int(255) NOT NULL COMMENT '1= true, 0= false',
  `latlng` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `serviceproviders`
--

INSERT INTO `serviceproviders` (`id`, `category_id`, `description`, `vendor_name`, `user_id`, `is_activated`, `latlng`) VALUES
(7, 2, '123123', 'Liza Davetiye', 11, 1, '39.93822949985262,32.85955155166594'),
(8, 4, 'Boğaz Bahçe', 'Mehtap Modaevi', 14, 1, '39.93822949985262,32.85955155166594'),
(9, 4, 'HM Kuaför', 'HM Kuaför', 14, 1, '39.97176124286044,32.71573198552141');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `spdates`
--

CREATE TABLE `spdates` (
  `id` int(11) NOT NULL,
  `sp_id` int(255) NOT NULL,
  `dateData` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `spdates`
--

INSERT INTO `spdates` (`id`, `sp_id`, `dateData`) VALUES
(14, 8, '19-05-2020'),
(15, 8, ' 21-05-2020'),
(16, 8, ' 24-05-2020'),
(18, 8, '20-05-2020'),
(27, 10, ''),
(28, 9, '20-05-2020'),
(29, 9, ' 21-05-2020'),
(30, 9, ' 22-05-2020'),
(31, 9, ' 23-05-2020'),
(32, 9, ' 24-05-2020'),
(33, 9, ' 25-05-2020'),
(34, 9, ' 28-05-2020'),
(35, 9, ' 30-05-2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `spimages`
--

CREATE TABLE `spimages` (
  `id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `photoUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `spimages`
--

INSERT INTO `spimages` (`id`, `sp_id`, `photoUrl`) VALUES
(7, 7, 'img_data/202004171457222043178240.jpg'),
(13, 8, 'img_data/20200515030634384509714.jpg'),
(14, 8, 'img_data/2020051503063465725529.jpg'),
(16, 0, 'img_data/20200519010106625337819.jpg'),
(17, 4, 'img_data/20200519030500963957669.jpg'),
(18, 6, 'img_data/202005190327131871179629.jpg'),
(20, 11, 'img_data/20200519032732837501302.jpg'),
(22, 9, 'img_data/202005192350521187982499.jpg'),
(23, 10, 'img_data/202005200254281036177736.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userappointments`
--

CREATE TABLE `userappointments` (
  `id` int(11) NOT NULL,
  `dateData` varchar(255) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0=inactive,\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `userappointments`
--

INSERT INTO `userappointments` (`id`, `dateData`, `sp_id`, `user_id`, `is_active`) VALUES
(1, '20-05-2020', 8, 13, 1),
(2, '30-05-2020', 9, 13, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name_surname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL COMMENT '0 = admin, 1=user, 2=vendor',
  `firebaseUID` varchar(255) NOT NULL,
  `photoUrl` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '1 = yes, 0 = no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name_surname`, `address`, `email`, `password`, `phone`, `user_type`, `firebaseUID`, `photoUrl`, `is_active`) VALUES
(2, 'Kaan Durak', '', 'okd@okd.com', '827ccb0eea8a706c4c34a16891f84e7b', '05051231232', '1', '', '', 1),
(5, 'Oğuz Kaan Durak', '12345', 'okd3@okd3.com', '827ccb0eea8a706c4c34a16891f84e7b', '05123123232', '2', '', '', 1),
(11, 'Oğuz Kaan Durak', 'Güzel Adres', 'okd5@okd5.com', 'b1ef741bee14a29acbe5686f59b62569', '05123123232', '2', 'xeZfwq02OTdEpdArdTuEdRVCNBJ2', '', 1),
(12, 'Oğuz Kaan Durak', '', 'okd12@okd12.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '1', 'XfgBEAfqfjSHSR5QZId6JFS6Sjj2', '', 1),
(13, 'Zekeriya Kosova', '', 'zekksv26@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123245', '1', 'uF4jdmEcyyMeu4BUlfm7K7gb7SV2', 'img_data/5tnF1zPjpEpro1.jpg', 1),
(14, 'Merk', '1231123123', 'okd134@okd134.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '2', 'aQSK6tHcKWRX52LlnY9t9OnmxMr1', '', 1),
(15, 'Oğuz Kaan Durak', '', 'oguzkaandurak2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '1', '9d5qzCSRZYXNCYVcBrzVwtLHDFz2', '', 0),
(16, 'Oğuz Kaan Durak', '', 'durakkaan92@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '1', 'DaiamqdNQQRgnrtk26nn4nTd49h1', '', 0),
(17, 'Oğuz Kaan Durak', '', 'kaandurak92@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '1', 'NTMeD47X4XTIoRsYwtgybT01lxC3', '', 0),
(18, 'Oğuz Kaan Durak', '', 'beyefendi420@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '05123123232', '1', 'IxNinqR48oZBiBnlAnldw6ZtMKv2', '', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `activateuser`
--
ALTER TABLE `activateuser`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `passreset`
--
ALTER TABLE `passreset`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `servicefav`
--
ALTER TABLE `servicefav`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `serviceproviders`
--
ALTER TABLE `serviceproviders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `spdates`
--
ALTER TABLE `spdates`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `spimages`
--
ALTER TABLE `spimages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `userappointments`
--
ALTER TABLE `userappointments`
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
-- Tablo için AUTO_INCREMENT değeri `activateuser`
--
ALTER TABLE `activateuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `passreset`
--
ALTER TABLE `passreset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `servicefav`
--
ALTER TABLE `servicefav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Tablo için AUTO_INCREMENT değeri `serviceproviders`
--
ALTER TABLE `serviceproviders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `spdates`
--
ALTER TABLE `spdates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `spimages`
--
ALTER TABLE `spimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `userappointments`
--
ALTER TABLE `userappointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
