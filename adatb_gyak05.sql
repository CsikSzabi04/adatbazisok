-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2014. Okt 05. 18:50
-- Szerver verzió: 5.5.32
-- PHP verzió: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `adatb_gyak05`
--
CREATE DATABASE IF NOT EXISTS `adatb_gyak05` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `adatb_gyak05`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aruk`
--

CREATE TABLE IF NOT EXISTS `aruk` (
  `aru_kod` int(11) NOT NULL AUTO_INCREMENT,
  `aru_nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `aru_egysegar` int(11) NOT NULL,
  `aru_kategoriakod` int(11) NOT NULL,
  PRIMARY KEY (`aru_kod`),
  KEY `aru_kategoriakod` (`aru_kategoriakod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=44 ;

--
-- A tábla adatainak kiíratása `aruk`
--

INSERT INTO `aruk` (`aru_kod`, `aru_nev`, `aru_egysegar`, `aru_kategoriakod`) VALUES
(1, 'Video magnó', 32000, 1),
(2, 'Ping-pong ütő', 4200, 2),
(3, 'Rádió', 36000, 1),
(4, 'Ping-pong labda', 400, 2),
(5, 'Televízió', 42000, 1),
(6, 'Televízió', 76000, 1),
(7, 'Hi-fi torony', 112000, 1),
(8, 'Izzó 40W', 200, 1),
(9, 'Izzó 60W', 240, 1),
(10, 'Izzó 11W', 1100, 1),
(11, 'DVD-lejátszó', 88000, 1),
(12, 'Pool asztal', 96000, 2),
(13, 'Térdvédő', 3000, 2),
(14, 'Kézisúlyzó', 4000, 2),
(15, 'Activity', 4400, 3),
(16, 'Labirintus', 3600, 3),
(17, 'Magyar kártya', 840, 3),
(18, 'LEGO 6123', 15600, 3),
(19, 'LEGO 3411', 6200, 3),
(20, 'Egér', 1200, 4),
(21, 'Opt. egér', 4800, 4),
(22, 'Billentyűzet', 2800, 4),
(23, 'HDD 80GB', 22000, 4),
(24, 'Fali konzol', 400, 5),
(25, 'Dübelkészlet', 800, 5),
(26, 'Kétoldali ragasztócsík', 2500, 5),
(27, 'Fúrógép', 8800, 5),
(28, 'Csavarhúzókészlet', 4100, 5),
(29, 'Heller, J.: A 22-es csapdája', 1200, 6),
(30, 'Asimov, A.: Alapítvány', 2900, 6),
(31, 'Bócz P., Szász P.: A világháló', 2998, 6),
(32, 'Cantú, M.: Delphi 3 mester...', 6600, 6),
(33, 'Asztali lámpa', 3100, 1),
(34, 'Scrabble', 5500, 3),
(35, 'Safari', 2880, 3),
(36, 'Szelezsán J.: Adatbázisok', 2200, 6),
(37, 'Csavarkészlet', 2000, 5),
(38, 'Teniszütő', 14000, 2),
(39, 'Sátor', 4700, 2),
(40, 'Monitor TFT', 99900, 4),
(41, 'Nyomtató HP 920C', 27000, 4),
(42, 'Edénykészlet rozsdamentes', 13000, 7),
(43, 'Konzervnyitó', 2600, 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE IF NOT EXISTS `kategoriak` (
  `kategoria_kod` int(11) NOT NULL AUTO_INCREMENT,
  `kategoria_nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`kategoria_kod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=8 ;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`kategoria_kod`, `kategoria_nev`) VALUES
(1, 'Műszaki'),
(2, 'Sportfelszerelés'),
(3, 'Játék'),
(4, 'Számítástechnika'),
(5, 'Barkács'),
(6, 'Könyv'),
(7, 'Konyhafelszerelés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szamlak`
--

CREATE TABLE IF NOT EXISTS `szamlak` (
  `szamla_szam` int(11) NOT NULL AUTO_INCREMENT,
  `szamla_vevokod` int(11) NOT NULL,
  `szamla_datum` date NOT NULL,
  PRIMARY KEY (`szamla_szam`),
  KEY `szamla_vevokod` (`szamla_vevokod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=52 ;

--
-- A tábla adatainak kiíratása `szamlak`
--

INSERT INTO `szamlak` (`szamla_szam`, `szamla_vevokod`, `szamla_datum`) VALUES
(1, 5, '2012-02-11'),
(2, 7, '2012-02-14'),
(3, 10, '2012-02-15'),
(4, 5, '2012-02-18'),
(5, 6, '2012-02-20'),
(6, 2, '2012-02-20'),
(7, 1, '2012-02-21'),
(8, 3, '2012-02-22'),
(9, 5, '2012-02-22'),
(10, 4, '2012-02-22'),
(11, 7, '2012-02-23'),
(12, 14, '2012-02-24'),
(13, 16, '2012-02-24'),
(14, 10, '2012-02-24'),
(15, 12, '2012-02-24'),
(16, 5, '2012-02-24'),
(17, 8, '2012-02-25'),
(18, 9, '2012-02-25'),
(19, 1, '2012-02-28'),
(20, 3, '2012-02-28'),
(21, 5, '2012-02-28'),
(22, 8, '2012-03-01'),
(23, 13, '2012-03-01'),
(24, 14, '2012-03-01'),
(25, 15, '2012-03-01'),
(26, 11, '2012-03-01'),
(27, 2, '2012-03-01'),
(28, 20, '2012-03-02'),
(29, 23, '2012-03-02'),
(30, 22, '2012-03-02'),
(31, 9, '2012-03-02'),
(32, 19, '2012-03-03'),
(33, 21, '2012-03-03'),
(34, 22, '2012-03-03'),
(35, 24, '2012-03-03'),
(36, 25, '2012-03-04'),
(37, 2, '2012-03-04'),
(38, 4, '2012-03-04'),
(39, 5, '2012-03-04'),
(40, 10, '2012-03-04'),
(41, 11, '2012-03-05'),
(42, 14, '2012-03-05'),
(43, 13, '2012-03-05'),
(44, 12, '2012-03-06'),
(45, 10, '2012-03-06'),
(46, 15, '2012-03-06'),
(47, 16, '2012-03-06'),
(48, 19, '2012-03-06'),
(49, 25, '2012-03-06'),
(50, 17, '2012-03-07'),
(51, 18, '2012-03-07');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szamlakreszletei`
--

CREATE TABLE IF NOT EXISTS `szamlakreszletei` (
  `szr_szamlaszam` int(11) NOT NULL,
  `szr_arukod` int(11) NOT NULL,
  `szr_vasaroltmennyiseg` int(11) NOT NULL,
  PRIMARY KEY (`szr_szamlaszam`,`szr_arukod`),
  KEY `szr_arukod` (`szr_arukod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szamlakreszletei`
--

INSERT INTO `szamlakreszletei` (`szr_szamlaszam`, `szr_arukod`, `szr_vasaroltmennyiseg`) VALUES
(1, 10, 5),
(1, 13, 1),
(2, 1, 1),
(2, 3, 1),
(3, 20, 10),
(3, 21, 4),
(3, 22, 15),
(3, 40, 1),
(3, 41, 1),
(4, 1, 1),
(4, 14, 2),
(4, 18, 1),
(4, 30, 1),
(5, 7, 1),
(6, 8, 10),
(6, 9, 12),
(6, 25, 1),
(6, 27, 1),
(6, 37, 2),
(7, 12, 1),
(7, 26, 4),
(7, 28, 1),
(8, 41, 1),
(9, 16, 1),
(9, 26, 2),
(10, 11, 1),
(10, 15, 1),
(10, 19, 2),
(11, 8, 5),
(11, 9, 5),
(11, 15, 4),
(11, 20, 1),
(11, 29, 1),
(11, 30, 1),
(12, 7, 1),
(13, 17, 1),
(14, 16, 2),
(14, 34, 3),
(14, 35, 5),
(15, 29, 1),
(15, 30, 1),
(15, 32, 1),
(16, 6, 1),
(16, 33, 3),
(17, 3, 1),
(18, 2, 2),
(18, 4, 5),
(19, 5, 1),
(20, 21, 1),
(20, 23, 1),
(20, 32, 1),
(21, 17, 1),
(22, 6, 1),
(22, 10, 3),
(23, 8, 10),
(24, 25, 2),
(24, 37, 2),
(25, 11, 1),
(26, 40, 1),
(27, 20, 2),
(27, 22, 2),
(27, 40, 1),
(28, 8, 2),
(29, 24, 10),
(29, 27, 1),
(29, 28, 1),
(29, 37, 2),
(30, 6, 1),
(31, 12, 1),
(32, 12, 1),
(33, 4, 10),
(34, 13, 1),
(34, 34, 1),
(34, 38, 1),
(34, 39, 1),
(35, 16, 1),
(35, 17, 1),
(35, 34, 1),
(36, 5, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(38, 24, 8),
(38, 28, 1),
(38, 37, 1),
(39, 10, 3),
(39, 21, 2),
(40, 27, 1),
(41, 21, 1),
(41, 23, 1),
(42, 18, 2),
(42, 19, 1),
(43, 5, 1),
(43, 14, 1),
(44, 2, 2),
(44, 4, 4),
(44, 13, 1),
(45, 17, 5),
(45, 35, 3),
(46, 20, 1),
(46, 22, 1),
(47, 32, 1),
(47, 36, 2),
(48, 2, 4),
(48, 15, 1),
(49, 33, 1),
(50, 3, 1),
(50, 5, 1),
(51, 8, 5),
(51, 9, 10),
(51, 10, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepulesek`
--

CREATE TABLE IF NOT EXISTS `telepulesek` (
  `irsz` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `helyseg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`irsz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `telepulesek`
--

INSERT INTO `telepulesek` (`irsz`, `helyseg`) VALUES
('2700', 'Cegléd'),
('2750', 'Nagykőrös'),
('3100', 'Salgótarján'),
('3200', 'Eger'),
('5000', 'Szolnok'),
('6000', 'Kecskemét'),
('6001', 'Kecskemét'),
('6100', 'Kiskunfélegyháza'),
('6400', 'Kiskunhalas');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevok`
--

CREATE TABLE IF NOT EXISTS `vevok` (
  `vevo_kod` int(11) NOT NULL AUTO_INCREMENT,
  `vevo_nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `vevo_irsz` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `vevo_cim` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`vevo_kod`),
  KEY `vevo_irsz` (`vevo_irsz`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=26 ;

--
-- A tábla adatainak kiíratása `vevok`
--

INSERT INTO `vevok` (`vevo_kod`, `vevo_nev`, `vevo_irsz`, `vevo_cim`) VALUES
(1, 'Flaxtor Bt.', '6000', 'Kis u. 2.'),
(2, 'Neptun Rt.', '6000', 'Nagy u. 5.'),
(3, 'Kovács Péter', '6001', 'Pf.: 126'),
(4, 'Horváth és Fia', '6100', 'Kerekes u. 12.'),
(5, 'Norvégminta Bt.', '6100', 'Halasi út 50.'),
(6, 'Kiss Ádám', '6000', 'Nap u. 20.'),
(7, 'GépElem Kft.', '6400', 'Kő u. 13.'),
(8, 'Németh Lajos', '3100', 'Platán u. 13.'),
(9, 'Huszáros Bt.', '3100', 'Káva u. 21.'),
(10, 'SzGTe Bt.', '6000', 'Kígyó u. 5.'),
(11, 'Laczkó János', '6100', 'Eper u. 12.'),
(12, 'MaMarJo Bt.', '6000', 'Cipó u. 45.'),
(13, 'Flaisz Péter', '6400', 'Jég u. 22.'),
(14, 'Danyi és Társa Bt.', '5000', 'Tégla u. 20.'),
(15, 'Németh Lajos', '6100', 'Szegedi út 16.'),
(16, 'Lajos Norbert', '6000', 'Fagy u. 10.'),
(17, 'Nemes József', '6400', 'Hamar u. 43.'),
(18, 'Török Basa Bt.', '3200', 'Vár u. 11.'),
(19, 'Fundella Rt.', '6000', 'Kőrösi u. 15.'),
(20, 'Kiss És Nagy Bt.', '3100', 'Üveg u. 11.'),
(21, 'Jópaál Kristóf', '5000', 'Sas u. 38.'),
(22, 'Huszár Péter', '6100', 'Ibolya u. 5.'),
(23, 'Csillag Bt.', '3200', 'Vár u. 28.'),
(24, 'Kovácsoló Rt.', '6400', 'Vadkerti út 1.'),
(25, 'Hukker Bt.', '6000', 'Kasza u. 3.');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `aruk`
--
ALTER TABLE `aruk`
  ADD CONSTRAINT `aruk_ibfk_1` FOREIGN KEY (`aru_kategoriakod`) REFERENCES `kategoriak` (`kategoria_kod`);

--
-- Megkötések a táblához `szamlak`
--
ALTER TABLE `szamlak`
  ADD CONSTRAINT `szamlak_ibfk_1` FOREIGN KEY (`szamla_vevokod`) REFERENCES `vevok` (`vevo_kod`);

--
-- Megkötések a táblához `szamlakreszletei`
--
ALTER TABLE `szamlakreszletei`
  ADD CONSTRAINT `szamlakreszletei_ibfk_1` FOREIGN KEY (`szr_szamlaszam`) REFERENCES `szamlak` (`szamla_szam`),
  ADD CONSTRAINT `szamlakreszletei_ibfk_2` FOREIGN KEY (`szr_arukod`) REFERENCES `aruk` (`aru_kod`);

--
-- Megkötések a táblához `vevok`
--
ALTER TABLE `vevok`
  ADD CONSTRAINT `vevok_ibfk_1` FOREIGN KEY (`vevo_irsz`) REFERENCES `telepulesek` (`irsz`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
