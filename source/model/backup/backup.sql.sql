-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Abr-2022 às 02:29
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `definitivo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idADM` int(13) NOT NULL,
  `cpfADM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeADM` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneADM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senhaADM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoADM` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`idADM`, `cpfADM`, `nomeADM`, `telefoneADM`, `senhaADM`, `tipoADM`) VALUES
(1, '123', 'viviane raquel', '123654', '552448', 'adm'),
(3, 'viviane', '1132364', '123654', '258963', 'Administrativo'),
(4, 'Gean', '255479', '123654', '552687', 'Administrativo'),
(6, 'Gean2', '411', '2259595959', '4484', 'Administrativo'),
(8, '888888888888', 'Geanderson Ferreira dos Santos', '9999999999999', '65425', 'Administrativo'),
(9, '125425', 'viviane', '123654', '552448', 'adm'),
(12, 'vfeffrr', '5254588', '123654', '552448', 'adm');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenador`
--

CREATE TABLE `coordenador` (
  `idCDN` int(13) NOT NULL,
  `cpfCDN` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeCDN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneCDN` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senhaCDN` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoCDN` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `coordenador`
--

INSERT INTO `coordenador` (`idCDN`, `cpfCDN`, `nomeCDN`, `telefoneCDN`, `senhaCDN`, `tipoCDN`) VALUES
(2, '88888888888', 'Genaderson ', '155452554', '25541', 'coordenador'),
(3, '123654', 'Viviane Raquel', '123644582145', '123654', 'coordenador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitas`
--

CREATE TABLE `visitas` (
  `usuarioVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setorVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escolaVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alunosVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conteudoVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professorVST` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataVST` datetime NOT NULL,
  `id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `visitas`
--

INSERT INTO `visitas` (`usuarioVST`, `setorVST`, `escolaVST`, `alunosVST`, `conteudoVST`, `professorVST`, `dataVST`, `id`) VALUES
('viviane 22', 'setor1', 'uninassau', '147258', 'ingrey', 'marcones', '0000-00-00 00:00:00', 1),
('vivi', 'setor1', 'uninassau', '147258', 'ingrey', 'marcones', '0000-00-00 00:00:00', 2),
('viviane', 'setor1', 'uninassau', '147258', 'ingrey', 'marcones', '0000-00-00 00:00:00', 3),
('Geanderson Ferreira', 'setor2', 'uninassau', '50', 'matematica', 'Danilo ', '0000-00-00 00:00:00', 5),
('Viviane Raquel Silva', 'setor2', 'uninassau', '147258', 'matematica', 'marcones', '0000-00-00 00:00:00', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idADM`),
  ADD UNIQUE KEY `cpfADM` (`cpfADM`);

--
-- Índices para tabela `coordenador`
--
ALTER TABLE `coordenador`
  ADD PRIMARY KEY (`idCDN`),
  ADD UNIQUE KEY `cpfCDN` (`cpfCDN`);

--
-- Índices para tabela `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idADM` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `coordenador`
--
ALTER TABLE `coordenador`
  MODIFY `idCDN` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
