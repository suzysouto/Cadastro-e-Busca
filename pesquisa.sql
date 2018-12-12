-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Dez-2018 às 01:10
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesquisa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profissao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`codigo`, `nome`, `email`, `profissao`) VALUES
(1, 'Suzane Souto', 'suzysoutosilva@gmail.com', 'Desenvolvedora'),
(2, 'PÃ©ricles Narbal', 'periclesnarbal@gmail.com', 'MÃºsico'),
(3, 'TÃ©rcia Souto', 'terciasouto@gmail.com', 'Ambientalista'),
(4, 'Tamires Souto', 'tamiressouto@outlook.com', 'Administradora de hotel'),
(5, 'Adriana', 'adriana@gmail.com', 'Designer'),
(6, 'LÃ­via', 'liv@gmail.com', 'VeterinÃ¡ria'),
(7, 'Gabriel', 'jg@gmail.com', 'Desenvolvedor'),
(8, 'Gabriela', 'gabi@gmail.com', 'Desenvolvedora'),
(10, 'Suzy Souto Silva', 'suzydarkness@hotmail.com', 'Estudante');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
