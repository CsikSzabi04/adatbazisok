-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2011. nov. 10. 04:43
-- Szerver verzió: 5.5.8
-- PHP verzió: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `db1`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `osztalyok`
--

CREATE TABLE IF NOT EXISTS `osztalyok` (
  `osztalyid` int(11) NOT NULL,
  `osztalyjel` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`osztalyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztalyok`
--

INSERT INTO `osztalyok` (`osztalyid`, `osztalyjel`) VALUES
(1, '1.a'),
(2, '1.b'),
(3, '1.c');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `tagozatok`
--

CREATE TABLE IF NOT EXISTS `tagozatok` (
  `tagozat_id` int(11) NOT NULL,
  `tagozat_nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`tagozat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tagozatok`
--

INSERT INTO `tagozatok` (`tagozat_id`, `tagozat_nev`) VALUES
(1, 'angol'),
(2, 'francia'),
(3, 'német');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `tanulok`
--

CREATE TABLE IF NOT EXISTS `tanulok` (
  `gyerekid` int(11) NOT NULL AUTO_INCREMENT,
  `gyereknev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `fk_osztalyid` int(11) NOT NULL,
  `fk_tagozatid` int(11) NOT NULL,
  `dsk` tinyint(1) NOT NULL DEFAULT '0',
  `atlag` decimal(4,1) NOT NULL,
  PRIMARY KEY (`gyerekid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=13 ;

--
-- A tábla adatainak kiíratása `tanulok`
--

INSERT INTO `tanulok` (`gyerekid`, `gyereknev`, `fk_osztalyid`, `fk_tagozatid`, `dsk`, `atlag`) VALUES
(1, 'Nagy Kata', 1, 1, 1, '4.6'),
(2, 'Kiss Ilona', 1, 3, 0, '3.2'),
(3, 'Tóth Péter', 2, 1, 1, '5.0'),
(4, 'Kiss Renáta', 2, 2, 1, '4.7'),
(5, 'Alföldy Petra', 3, 1, 1, '4.0'),
(6, 'Kisjuhász Tamara', 3, 2, 1, '3.6'),
(12, 'Újabb Gábor', 1, 3, 0, '4.2'),
(11, 'Mai János', 3, 2, 0, '3.9');
