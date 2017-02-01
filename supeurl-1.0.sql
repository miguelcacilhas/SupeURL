-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Fev-2017 às 15:27
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supeurl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `criador` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliques` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `urls`
--

INSERT INTO `urls` (`id`, `url`, `short`, `criador`, `cliques`) VALUES
(17, 'http://www.hollywoodreporter.com/review/van-helsing-review-932038', '5c3a95b5', NULL, 0),
(18, 'http://likefotos.com/2740/imponente-fotografia-de-uma-manada-de-elefantes-africa/', 'abssdfas', NULL, 4),
(19, 'https://blog.hubspot.com/blog/tabid/6307/bid/30311/10-Amazing-Blogs-About-Blogging-to-Start-Reading-NOW.aspx', '6fb5db90', 'miguel', 1),
(20, 'https://sites.google.com/', '5b63b89b', 'joao', 0),
(21, 'exame.abril.com.br/noticias-sobre/sites/', '934fb59c', 'joao', 4),
(22, 'https://en.wikipedia.org/wiki/Google_Sites', '4ec67f31', 'joao', 0),
(23, 'https://books.google.com/', '5ac7fec6', 'joao', 0),
(24, 'https://www.amazon.com/books-used-books-textbooks/b?ie=UTF8&node=283155', '3fe2ad92', 'joao', 0),
(25, 'onlinebooks.library.upenn.edu/', '7cdee0e4', 'joao', 0),
(26, 'https://www.theguardian.com/books', '0bf56d9a', 'joao', 1),
(27, 'https://www.whsmith.co.uk/books', 'f1d7b4e0', 'joao', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hash_unica` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `hash_unica`) VALUES
(1, 'miguel', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '00f46c2beee4f3d25a07cf3293f6ae913aa99eaca27449c8f38d8cd2ae74092c'),
(2, 'chris', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'd818197bca933bb01ea27ebcb36a7a0993941e377d058a534a3c22cea5fd9a73'),
(3, 'joao', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '155460251e4a92a08a0d1c9b01fa3870b912ea26ebe469c3cbeb6976d579315a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
