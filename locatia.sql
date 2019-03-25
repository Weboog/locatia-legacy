-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 19 fév. 2019 à 09:26
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `locatia`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `names` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `level` enum('admin','moderator') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `names`, `email`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'abdellah chaygani', 'killsyre@yahoo.com', '281185', 'admin', '2019-01-03 15:11:11', '2019-01-03 15:11:11');

-- --------------------------------------------------------

--
-- Structure de la table `appartments`
--

CREATE TABLE `appartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `serial` int(10) UNSIGNED DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `type` enum('1','2') DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `borough` int(11) DEFAULT NULL,
  `address` mediumtext,
  `pieces` tinyint(3) DEFAULT NULL,
  `rooms` tinyint(3) DEFAULT NULL,
  `surface` tinyint(3) DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `gallery` tinyint(4) DEFAULT '0',
  `description` text,
  `external` text,
  `internal` text,
  `conditions` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartments`
--

INSERT INTO `appartments` (`id`, `serial`, `owner`, `type`, `city`, `zone`, `borough`, `address`, `pieces`, `rooms`, `surface`, `price`, `views`, `gallery`, `description`, `external`, `internal`, `conditions`, `created_at`, `updated_at`) VALUES
(1, 281, NULL, '2', 2, 8, 1, 'hsqdjqsbd', 4, 3, 80, 500, 96, 3, 'kjqsjqs', 'jnsqjbnqsj', 'jbqsjbqs', 'jnbqsjbqjsb', '2019-01-09 15:45:04', '2019-02-14 09:23:12'),
(2, 281, NULL, '2', 2, 8, 1, 'hsqdjqsbd', 4, 3, 80, 500, 20, 4, 'kjqsjqs', 'jnsqjbnqsj', 'jbqsjbqs', 'jnbqsjbqjsb', '2019-01-09 15:46:22', '2019-02-13 19:28:07'),
(3, 143, NULL, '1', 1, 4, 3, 'aehndkjezah', 3, 2, 67, 350, 75, 6, 'kjsdfjdsgf', 'jqdsjdsq', 'jhqsjhsq', 'jhqsjhsqj', '2019-01-09 16:31:25', '2019-02-14 09:43:59'),
(4, 372, NULL, '1', 3, 7, 2, 'jadjbsqd', 2, 1, 65, 250, 6, 0, '', NULL, NULL, NULL, '2019-01-15 11:48:35', '2019-02-06 13:18:35'),
(5, 361, NULL, '1', 3, 6, 1, 'qnbsdkjnbsqdjsq', 3, 2, 75, 300, 5, 0, NULL, NULL, NULL, NULL, '2019-01-15 11:48:35', '2019-02-08 09:19:42'),
(6, 112, NULL, '1', 1, 1, 2, 'jnhjqhdsjnsqd', 2, 1, 56, 270, 2, 0, 'kjnknakjzndnsqjqs', 'zajdbjzadb,dzjabzd,okojzadojzad', 'habdhb,bdbqsd,jbqsdjbsq', 'hvazdh,unhsqb', '2019-02-06 11:05:53', '2019-02-07 09:35:06'),
(7, 325, 1, '1', 3, 7, 5, 'Hay anbbadi Temara', 3, 2, 78, 450, 0, 4, 'Belle appartement', 'Jardin publique', 'Cuisine', 'CNIE', '2019-02-13 15:32:31', '2019-02-13 15:55:34'),
(8, 324, 1, '1', 3, 6, 4, 'Lot Annasr', 3, 2, 78, 450, 0, 4, 'Belle appartement', 'Jardin publique', 'Cuisine Ã©quipÃ©e', 'CNIE', '2019-02-13 15:45:26', '2019-02-13 15:55:34'),
(9, 324, 1, '1', 3, 7, 4, 'Lot Annasr', 3, 2, 78, 450, 0, 4, 'Belle appartement', 'Jardin publique,Parking,Station de bus', 'Cuisine Ã©quipÃ©e,Salon meublÃ©', 'CNIE,Acte de mariage', '2019-02-13 15:46:13', '2019-02-13 15:55:34'),
(10, 324, 1, '1', 3, 2, 4, 'Lot Annasr', 3, 2, 78, 450, 0, 4, 'Belle appartement', 'Jardin publique,Parking,Station de bus', 'Cuisine Ã©quipÃ©e,Salon meublÃ©', 'CNIE,Acte de mariage', '2019-02-13 16:00:23', '2019-02-13 16:00:23'),
(11, 223, 1, '1', 2, 2, 3, 'ksajdkqk', 2, 1, 50, 200, 1, 5, 'Compact appartment', 'jnsqdjnbsqd,jqsbdjbsqd,qksnhnhdsq', 'pkhbdsq,hvqshvdzavza,hbchbvsqdh', 'CNIE,couples', '2019-02-14 10:51:26', '2019-02-14 10:52:32'),
(12, 223, 1, '1', 2, 2, 3, 'ksajdkqk', 2, 1, 50, 200, 0, 5, 'Compact appartment', 'jnsqdjnbsqd,jqsbdjbsqd,qksnhnhdsq', 'pkhbdsq,hvqshvdzavza,hbchbvsqdh', 'CNIE,couples', '2019-02-14 10:55:00', '2019-02-14 10:55:00'),
(13, 214, 2, '1', 2, 1, 4, 'knqscknq', 3, 2, 76, 300, 0, 5, 'jqdjbqsd jqsndjd jnsqdjnqdjhqshd qjsjqj', 'qsdg,gsqdgqsd,qjsdhsqd,dsqhsqd', 'jbsdbqsd,ihjsqdhqs,jsqhdjhsqd,', 'CNIE', '2019-02-14 11:26:54', '2019-02-14 11:26:54'),
(14, 132, 2, '1', 1, 3, 2, 'Teste', 2, 1, 60, 250, 0, 5, 'Belle', 'Jardin', 'Interphone', 'CNIE', '2019-02-14 11:28:41', '2019-02-14 11:28:41'),
(15, 143, 1, '1', 1, 4, 3, 'lkjqjq', 3, 2, 67, 400, 0, 4, 'jqsjqsdjqshjsqdjgdsq', 'qksnhkd,qjshjqd,qskdhsqhd', 'jqsgdgsqd,qsjdhqjsd,qjshd', 'CNIE', '2019-02-14 11:48:40', '2019-02-14 11:48:40'),
(16, 315, 1, '2', 3, 1, 5, 'nhdfjjkjkjknkn', 2, 1, 67, 300, 1, 5, 'nknhkazdnkeznkezn', 'knknd,akjzkj,azknhkzahj,kjnhazhaze', 'kjaznhkj,azkhjzakhe,kjhkhhk', 'CNIE,jadzhj', '2019-02-14 11:53:36', '2019-02-14 11:54:18'),
(17, 315, 1, '2', 3, 1, 5, 'nhdfjjkjkjknkn', 2, 1, 67, 300, 0, 5, 'nknhkazdnkeznkezn', 'knknd,akjzkj,azknhkzahj,kjnhazhaze', 'kjaznhkj,azkhjzakhe,kjhkhhk', 'CNIE,jadzhj', '2019-02-14 11:56:57', '2019-02-14 11:56:57'),
(18, 132, 1, '2', 1, 3, 2, 'kkfdkjdskjf', 2, 1, 67, 400, 0, 5, 'kdkjdknknjakdz', 'knsqkn,qskjdksqdj,qskdjqksdj', 'ksdkqs,kjqskjkj,', 'CNIE', '2019-02-14 12:01:41', '2019-02-14 12:01:41'),
(19, 132, 1, '2', 1, 3, 2, 'kkfdkjdskjf', 2, 1, 67, 400, 0, 5, 'kdkjdknknjakdz', 'knsqkn,qskjdksqdj,qskdjqksdj', 'ksdkqs,kjqskjkj,', 'CNIE', '2019-02-14 12:02:30', '2019-02-14 12:02:30'),
(20, 112, 1, '1', 1, 1, 2, 'lsqdlksqjd', 3, 2, 56, 400, 0, 2, 'kjsqdkjsqdkqdk kjdkd khkhqsd', 'lksqdlk,vygzavyg,uazdub', 'hjuzadg,ihaihjzadihza jazd,hzadhzah', 'CNIE', '2019-02-14 12:59:14', '2019-02-14 12:59:14'),
(21, 112, 1, '1', 1, 1, 2, 'lsqdlksqjd', 3, 2, 56, 400, 0, 2, 'kjsqdkjsqdkqdk kjdkd khkhqsd', 'lksqdlk,vygzavyg,uazdub', 'hjuzadg,ihaihjzadihza jazd,hzadhzah', 'CNIE', '2019-02-14 13:01:11', '2019-02-14 13:01:11'),
(22, 112, 1, '1', 1, 1, 2, 'lsqdlksqjd', 3, 2, 56, 400, 0, 2, 'kjsqdkjsqdkqdk kjdkd khkhqsd', 'lksqdlk,vygzavyg,uazdub', 'hjuzadg,ihaihjzadihza jazd,hzadhzah', 'CNIE', '2019-02-14 13:02:10', '2019-02-14 13:02:10'),
(23, 112, 1, '1', 1, 1, 2, 'lsqdlksqjd', 3, 2, 56, 400, 0, 2, 'kjsqdkjsqdkqdk kjdkd khkhqsd', 'lksqdlk,vygzavyg,uazdub', 'hjuzadg,ihaihjzadihza jazd,hzadhzah', 'CNIE', '2019-02-14 13:02:21', '2019-02-14 13:02:21'),
(24, 112, 1, '1', 1, 1, 2, 'lsqdlksqjd', 3, 2, 56, 400, 0, 2, 'kjsqdkjsqdkqdk kjdkd khkhqsd', 'lksqdlk,vygzavyg,uazdub', 'hjuzadg,ihaihjzadihza jazd,hzadhzah', 'CNIE', '2019-02-14 13:02:46', '2019-02-14 13:02:46'),
(25, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:04:54', '2019-02-14 13:04:54'),
(26, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:06:38', '2019-02-14 13:06:38'),
(27, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:32:35', '2019-02-14 13:32:35'),
(28, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:33:04', '2019-02-14 13:33:04'),
(29, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:33:29', '2019-02-14 13:33:29'),
(30, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:34:15', '2019-02-14 13:34:15'),
(31, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:34:42', '2019-02-14 13:34:42'),
(32, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:34:58', '2019-02-14 13:34:58'),
(33, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:39:55', '2019-02-14 13:39:55'),
(34, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:41:46', '2019-02-14 13:41:46'),
(35, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:46:37', '2019-02-14 13:46:37'),
(36, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:47:02', '2019-02-14 13:47:02'),
(37, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:47:41', '2019-02-14 13:47:41'),
(38, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:52:21', '2019-02-14 13:52:21'),
(39, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:53:26', '2019-02-14 13:53:26'),
(40, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:53:35', '2019-02-14 13:53:35'),
(41, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:53:45', '2019-02-14 13:53:45'),
(42, 133, 1, '1', 1, 3, 3, 'kdkdsqkj', 8, 7, 50, 300, 0, 2, 'knjdzk', 'knsqdkndsq', 'knqskqns', 'knqsknqs', '2019-02-14 13:57:02', '2019-02-14 13:57:02'),
(43, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:44:03', '2019-02-15 09:44:03'),
(44, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:44:35', '2019-02-15 09:44:35'),
(45, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:46:10', '2019-02-15 09:46:10'),
(46, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:47:06', '2019-02-15 09:47:06'),
(47, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:47:50', '2019-02-15 09:47:50'),
(48, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:48:02', '2019-02-15 09:48:02'),
(49, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:48:24', '2019-02-15 09:48:24'),
(50, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:48:47', '2019-02-15 09:48:47'),
(51, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:53:09', '2019-02-15 09:53:09'),
(52, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:56:40', '2019-02-15 09:56:40'),
(53, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:57:21', '2019-02-15 09:57:21'),
(54, 124, 1, '1', 1, 2, 4, 'jsdnbjjnbdsjn', 3, 2, 67, 300, 0, 4, 'jdjbdjbadj', 'jbqsjbqsjbsqjb', 'jbjbqsjbqsjb', 'CNIE', '2019-02-15 09:58:17', '2019-02-15 09:58:17'),
(55, 122, 1, '1', 1, 2, 2, 'Hay nahda 2', 3, 3, 67, 350, 0, 4, 'kqsnhdknqdkqd', 'qnsknsq,jndjnbqs,szdjnbsqd,jbqsjbsq', 'qjsbjsq,qsjbjsqbsq,jnbsjb', 'CNIE', '2019-02-18 12:33:12', '2019-02-18 12:33:12'),
(56, 332, 1, '1', 3, 3, 2, 'Lot annasr', 3, 2, 67, 300, 1, 5, 'Belle appartement ', 'Jardin,parking', 'salon meublÃ©,salle debain', 'CNIE', '2019-02-18 13:45:07', '2019-02-18 15:55:36'),
(57, 132, 1, '2', 1, 3, 2, 'kqfknsdfkn', 4, 3, 50, 300, 0, 4, 'kqsndknqdsn', 'knqsknsq', 'knqsknqs', 'knqsknqskcn', '2019-02-18 15:54:28', '2019-02-18 15:54:28');

-- --------------------------------------------------------

--
-- Structure de la table `apt`
--

CREATE TABLE `apt` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `pieces` tinyint(2) NOT NULL,
  `rooms` tinyint(2) NOT NULL,
  `surface` tinyint(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `borough` int(11) DEFAULT NULL,
  `address` tinytext,
  `price` smallint(6) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apt`
--

INSERT INTO `apt` (`id`, `type`, `pieces`, `rooms`, `surface`, `city`, `position`, `borough`, `address`, `price`, `views`, `owner`, `created_at`, `updated_at`) VALUES
(154687, 2, 4, 3, 80, '1', 4, NULL, NULL, 400, 122, NULL, '2019-01-02 11:33:32', '2019-01-03 14:17:01'),
(241585, 1, 3, 2, 75, '3', 6, NULL, NULL, 350, 59, NULL, '2019-01-04 11:33:32', '2019-01-05 14:37:57');

-- --------------------------------------------------------

--
-- Structure de la table `boroughs`
--

CREATE TABLE `boroughs` (
  `id` tinyint(4) NOT NULL,
  `district` tinyint(4) NOT NULL,
  `borough` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `boroughs`
--

INSERT INTO `boroughs` (`id`, `district`, `borough`) VALUES
(1, 1, 'agdal'),
(2, 1, 'hay ryad'),
(3, 1, 'al irfane'),
(4, 2, 'hay al fateh'),
(5, 2, 'yacoub el mansour'),
(6, 2, 'massira'),
(7, 2, 'akkari'),
(8, 3, 'hassan'),
(9, 3, 'médina'),
(10, 3, 'océan'),
(11, 3, 'kasbah des oudayas'),
(12, 4, 'souissi'),
(13, 4, 'bir kacem'),
(14, 4, 'embassadeur'),
(15, 4, 'akreuch'),
(16, 5, 'youssoufia'),
(17, 5, 'takadoum'),
(18, 5, 'olm'),
(19, 5, 'hay annahda'),
(20, 5, 'mabela'),
(21, 5, 'aviation'),
(22, 5, 'sidi khalifa');

-- --------------------------------------------------------

--
-- Structure de la table `callbacks`
--

CREATE TABLE `callbacks` (
  `id` int(11) NOT NULL,
  `appart` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `callbacks`
--

INSERT INTO `callbacks` (`id`, `appart`, `email`, `name`, `phone`, `created_at`) VALUES
(3, 3615, 'alory@gmail.com', 'Abell', '0626629459', '2019-01-15 14:05:31'),
(4, 3724, 'jo_bro@gmail.com', 'Joseph', '0699456892', '2019-01-15 14:07:16'),
(5, 1, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-01 17:18:37'),
(6, 2811, 'killsyre@yahoo.com', 'alikhoua', '0626629199', '2019-02-01 17:19:25'),
(7, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-01 18:50:57'),
(8, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-01 18:53:24'),
(9, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-01 18:53:33'),
(10, 0, 'kaprime8@gmail.com', 'gtfruiiol', '0621059803', '2019-02-01 22:19:54'),
(11, 0, 'ramop@mail.com', 'gridol', '0623145230', '2019-02-01 22:22:07'),
(12, 0, 'kaprime8@gmail.com', 'edfrtgyhuj', '0652418596', '2019-02-01 22:24:03'),
(13, 0, 'kaprime8@gmail.com', 'qdsqsdqsdq', '0625369874', '2019-02-01 22:27:37'),
(14, 0, 'kaprime8@gmail.com', 'qscqsqsd', '0663258140', '2019-02-01 22:28:55'),
(15, 0, 'kaprime8@gmail.com', 'sdfsdfsdfsdf', '0652418502', '2019-02-01 22:30:12'),
(16, 0, 'kaprime8@gmail.com', 'sdfsdfsdfsdf', '0652418410', '2019-02-01 22:31:41'),
(17, 0, 'kaprime8@gmail.com', 'sdcsdfsdfsdf', '0652418593', '2019-02-01 22:32:38'),
(18, 2811, 'kaprime8@gmail.com', 'sdfsdfsdf', '0658214430', '2019-02-01 22:33:48'),
(19, 2811, 'kaprime8@gmail.com', 'qsdqsqsd', '0652148520', '2019-02-01 22:51:09'),
(20, 2811, 'kaprime8@gmail.com', 'qsdqsdqsd', '0625148590', '2019-02-01 22:55:54'),
(21, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 09:43:00'),
(22, 2811, 'canaria27@gmail.com', 'locatia', '0626629199', '2019-02-02 09:46:10'),
(23, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 09:46:48'),
(24, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 09:48:06'),
(25, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 09:48:50'),
(26, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 09:53:06'),
(27, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 09:53:13'),
(28, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 09:54:31'),
(29, 2811, 'ramonsich@yandex.com', 'alikhoua', '0626629199', '2019-02-02 10:13:57'),
(30, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 10:15:25'),
(31, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 10:26:19'),
(32, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:27:30'),
(33, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:28:40'),
(34, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 10:29:37'),
(35, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:31:34'),
(36, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:32:41'),
(37, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 10:33:47'),
(38, 2811, 'canaria27@gmail.com', 'killsyre', '0626629199', '2019-02-02 10:34:20'),
(39, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:41:00'),
(40, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 10:42:53'),
(41, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 12:34:19'),
(42, 0, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 12:35:23'),
(43, 2811, 'canaria27@gmail.com', 'locatia', '0626629199', '2019-02-02 12:37:31'),
(44, 2811, 'canaria27@gmail.com', 'alikhoua', '0626629199', '2019-02-02 12:38:09'),
(45, 2811, 'canaria27@gmail.com', 'locatia', '0626629199', '2019-02-02 12:39:14'),
(46, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 12:40:46'),
(47, 2811, 'ramonsich@yandex.com', 'killsyre', '0626629199', '2019-02-02 12:42:28'),
(48, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-02 12:43:52'),
(49, 2811, 'killsyre@yahoo.com', 'killsyre', '0626629199', '2019-02-02 12:44:41'),
(50, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 12:52:23'),
(51, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 12:53:28'),
(52, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-02 12:56:39'),
(53, 2811, 'killsyre@yahoo.com', 'locatia', '0626629199', '2019-02-02 13:04:16'),
(54, 0, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:04:55'),
(55, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:07:17'),
(56, 2811, 'killsyre@yahoo.com', 'killsyre', '0626629199', '2019-02-02 13:08:21'),
(57, 2811, 'killsyre@yahoo.com', 'killsyre', '0626629199', '2019-02-02 13:08:38'),
(58, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:10:27'),
(59, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:10:50'),
(60, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:11:39'),
(61, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:12:33'),
(62, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:12:35'),
(63, 2811, 'ramonsich@yandex.com', 'locatia', '0626629199', '2019-02-02 13:12:37'),
(64, 2811, 'canaria27@gmail.com', 'alikhoua', '0626629199', '2019-02-02 13:13:00'),
(65, 2811, 'contact@locatia.ma', 'killsyre', '0626629199', '2019-02-02 13:14:24'),
(66, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 13:15:24'),
(67, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:09:08'),
(68, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:14:10'),
(69, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:15:08'),
(70, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:16:01'),
(71, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:16:35'),
(72, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:21:17'),
(73, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:22:24'),
(74, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-02 16:23:07'),
(75, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-02 16:26:17'),
(76, 2811, 'gtdqsdqsd@mail.com', 'jdgjqsgd', '0626629199', '2019-02-03 10:09:03'),
(77, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-03 10:18:23'),
(78, 2811, 'contact@locatia.ma', 'locatia', '0626629199', '2019-02-03 10:18:37'),
(79, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:19:01'),
(80, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:23:01'),
(81, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:24:29'),
(82, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:25:43'),
(83, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:26:12'),
(84, 2811, 'contact@locatia.ma', 'alikhoua', '0626629199', '2019-02-03 10:56:48'),
(85, 2811, 'killsyre@yahoo.com', 'killsyre', '0626629199', '2019-02-03 10:57:30'),
(86, 2811, 'romero@yahoo.com', 'Abell', '0626629199', '2019-02-06 10:36:55'),
(87, 2811, 'ramon@yahoo.com', 'Ramsy', '0663209594', '2019-02-06 10:40:46'),
(88, 2811, 'ramon@yahoo.com', 'Ramsy', '0663209594', '2019-02-06 10:40:56'),
(89, 2812, 'romero@mail.com', 'Ramon', '0626940396', '2019-02-06 11:09:33'),
(90, 2811, 'romero@mail.com', 'Ramon', '0626940396', '2019-02-06 11:09:43'),
(91, 3615, 'brother@yahoo.com', 'jobro', '0655345608', '2019-02-07 09:40:38'),
(92, 2812, 'aslan@yahoo.com', 'aslan', '0657849323', '2019-02-07 09:46:28'),
(93, 2812, 'aslan@yahoo.com', 'aslan', '0657849323', '2019-02-07 09:48:03'),
(94, 2812, 'Colidor@gmail.com', 'Azerty', '0784569045', '2019-02-07 09:51:23'),
(95, 2812, 'armor@gmail.com', 'Syterli', '0784938745', '2019-02-07 09:52:26'),
(96, 2812, 'Forlack@mail.com', 'Fordis', '0745689023', '2019-02-07 09:54:33'),
(97, 2812, 'Donet@mail.com', 'Amirselck', '0678950430', '2019-02-07 09:55:25'),
(98, 2812, 'Sylegss@gmail.com', 'Symera', '0768958430', '2019-02-07 09:57:50'),
(99, 2812, 'JNQJSSQ@holo.com', 'jbQDJ', '0678549039', '2019-02-07 09:59:02'),
(100, 2812, 'Salim@mail.com', 'Salim', '0758960420', '2019-02-07 10:00:54'),
(101, 2812, 'junto@ngmail.com', 'Aretmos', '0767459320', '2019-02-07 10:03:08'),
(102, 0, 'rettrocynl@mail.com', 'dertyps', '0678943027', '2019-02-07 10:05:07'),
(103, 0, 'jndcjdsc@yahoo.com', 'jqnbsjnbsqjb', '0678954023', '2019-02-07 10:05:59'),
(104, 2811, 'Salazar@gmail.com', 'Armin', '0768954023', '2019-02-07 13:04:26');

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` tinyint(4) NOT NULL,
  `city` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `city`) VALUES
(1, 'Rabat'),
(2, 'Salé'),
(3, 'Témara');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `general` mediumtext NOT NULL,
  `internal` mediumtext NOT NULL,
  `conditions` mediumtext NOT NULL,
  `gallery` varchar(15) NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `description`, `general`, `internal`, `conditions`, `gallery`, `updated_at`) VALUES
(241585, 'Appertement ensoleillé situé au deuxième étage avec gardien et parking gratuit', 'Connexion Wifi gratuite,interphone,gardien de résidence, parking gratuit.', 'Chaffe-eau,cuisine équipée,salon européen', 'Avoir un carte CNIE, pour les couples présenter ue copie d\'acte de mariage', '', '2019-01-02 11:32:18');

-- --------------------------------------------------------

--
-- Structure de la table `districts`
--

CREATE TABLE `districts` (
  `id` tinyint(4) NOT NULL,
  `city` tinyint(4) DEFAULT NULL,
  `district` varchar(15) NOT NULL,
  `borough` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `districts`
--

INSERT INTO `districts` (`id`, `city`, `district`, `borough`) VALUES
(1, 1, 'Agdal-Ryad', 'Agdal,Hay Ryad,Al Irfane'),
(2, 1, 'CYM', 'Hay EL Fath,Yacoub El Mansour,Massira,Akkari'),
(3, 1, 'Hassan', 'Hassan,Médina,Océan,Kasbah des Oudayas'),
(4, 1, 'Souissi', 'Souissi,Bir Kacem,Ambassadeurs,Akreuch'),
(5, 1, 'Youssoufia', 'Youssoufia,Takadoum,OLM,Hay Nahda,Mabela,Aviation,Sidi Khalifa'),
(6, 3, 'Annasr', 'Hay Annasr,Terminus'),
(7, 3, 'Hay Abbadi', 'Hay abbdi,Akhawayn'),
(8, 2, 'Centre', 'Bettana,Hay Karima'),
(9, 2, 'ville', 'Bab Mrissa,Marina');

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `title` tinytext,
  `content` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'First VIP service', 'Hey, we\'re so excited to announce that the new service LOCATIA VIP was lunched for all', '2019-01-03 12:01:04');

-- --------------------------------------------------------

--
-- Structure de la table `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `owners`
--

INSERT INTO `owners` (`id`, `name`, `phone`) VALUES
(1, 'Abell', '062662919'),
(2, 'Joe', '0621435602');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` tinyint(4) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `type`) VALUES
(1, 'appartement'),
(2, 'maison');

-- --------------------------------------------------------

--
-- Structure de la table `subscribers`
--

CREATE TABLE `subscribers` (
  `email` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `subscribers`
--

INSERT INTO `subscribers` (`email`, `created_at`) VALUES
('abdel@gamil.com', '2019-02-14 12:42:36'),
('alory@gmail.com', '2019-01-15 10:56:08'),
('alory@gmail.uk', '2019-01-15 10:56:19'),
('boogstell@outlook.com', '2018-12-04 17:10:38'),
('boogstell@yahoo.fr', '2018-12-04 16:41:52'),
('canaria27@gmail.com', '2018-12-04 17:10:24'),
('canaria@gmail.com', '2018-12-04 16:39:36'),
('jo_bro@gmail.com', '2019-01-19 15:19:44'),
('killmpon@gmail.com', '2019-01-03 09:09:15'),
('killsyre@yahoo.com', '2019-01-19 15:21:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_uindex` (`email`);

--
-- Index pour la table `appartments`
--
ALTER TABLE `appartments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `apt`
--
ALTER TABLE `apt`
  ADD UNIQUE KEY `appartments_id_uindex` (`id`),
  ADD KEY `appartments_products_id_fk` (`type`),
  ADD KEY `appartments_districts_id_fk` (`position`),
  ADD KEY `appartments_owner_id_fk` (`owner`);

--
-- Index pour la table `boroughs`
--
ALTER TABLE `boroughs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district` (`district`);

--
-- Index pour la table `callbacks`
--
ALTER TABLE `callbacks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city` (`city`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD KEY `details_appartments_id_fk` (`id`);

--
-- Index pour la table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_district_uindex` (`district`),
  ADD KEY `districts_cities_id_fk` (`city`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_name_index` (`name`),
  ADD KEY `owner_phone_index` (`phone`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `products_type_uindex` (`type`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Index pour la table `subscribers`
--
ALTER TABLE `subscribers`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `appartments`
--
ALTER TABLE `appartments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `boroughs`
--
ALTER TABLE `boroughs`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `callbacks`
--
ALTER TABLE `callbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apt`
--
ALTER TABLE `apt`
  ADD CONSTRAINT `appartments_districts_id_fk` FOREIGN KEY (`position`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `appartments_owner_id_fk` FOREIGN KEY (`owner`) REFERENCES `owners` (`id`),
  ADD CONSTRAINT `appartments_products_id_fk` FOREIGN KEY (`type`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `boroughs`
--
ALTER TABLE `boroughs`
  ADD CONSTRAINT `boroughs_ibfk_1` FOREIGN KEY (`district`) REFERENCES `districts` (`id`);

--
-- Contraintes pour la table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_appartments_id_fk` FOREIGN KEY (`id`) REFERENCES `apt` (`id`);

--
-- Contraintes pour la table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_cities_id_fk` FOREIGN KEY (`city`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
