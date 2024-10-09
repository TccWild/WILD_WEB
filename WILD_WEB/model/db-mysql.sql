-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para crudmobile
CREATE DATABASE IF NOT EXISTS `crudmobile` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `crudmobile`;

-- Copiando estrutura para tabela crudmobile.cadastroanimal
CREATE TABLE IF NOT EXISTS `cadastroanimal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `descricao` varchar(50) NOT NULL DEFAULT '0',
  `img` varchar(50) NOT NULL DEFAULT '0',
  `text` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela crudmobile.cadastroanimal: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cadastroanimal` DISABLE KEYS */;
INSERT INTO `cadastroanimal` (`id`, `nome`, `descricao`, `img`, `text`) VALUES
	(2, 'capivara', 'Branco', '0', '0');
/*!40000 ALTER TABLE `cadastroanimal` ENABLE KEYS */;

-- Copiando estrutura para tabela crudmobile.denuncia
CREATE TABLE IF NOT EXISTS `denuncia` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `latitude` int(11) DEFAULT NULL,
  `longitude` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela crudmobile.denuncia: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `denuncia` DISABLE KEYS */;
INSERT INTO `denuncia` (`cod`, `nome`, `tipo`, `latitude`, `longitude`) VALUES
	(9, 'Cachorro', 'Ferido', -24, -24),
	(10, 'asdasdasd', 'asdasd', 0, 0);
/*!40000 ALTER TABLE `denuncia` ENABLE KEYS */;

-- Copiando estrutura para tabela crudmobile.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `Cod_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Email_Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Senha_Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Nome_Usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela crudmobile.usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`Cod_Usuario`, `Email_Usuario`, `Senha_Usuario`, `Nome_Usuario`) VALUES
	(1, '@isaaac', '1234', 'isaaac');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para tabela crudmobile.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela crudmobile.usuarios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cidade`) VALUES
	(20, 'Ramon Trigo', '@ramon', '2411', 'Miracatu'),
	(21, 'isaac', 'asa', '213', 'ca'),
	(22, 'luizinho', '@luiz', '9876', 'Iguape'),
	(23, 'beatriz', '@bia', '123', 'cananeia - sp');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
