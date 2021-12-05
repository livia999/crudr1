CREATE SCHEMA `crudr1` ;

CREATE TABLE `crudr1`.`vendedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `usuario` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
INSERT INTO `crudr1`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('augusto', 'a1', '123');
INSERT INTO `crudr1`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('izabella', 'i1', '321');
INSERT INTO `crudr1`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('charles', 'c1', '123');
INSERT INTO `crudr1`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('danúbio', 'd1', '321');
INSERT INTO `crudr1`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('everton', 'e1', '123');

CREATE TABLE `crudr1`.`atleta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `peso` FLOAT NULL,
  `altura` FLOAT NULL,
  PRIMARY KEY (`id`));
INSERT INTO `crudr1`.`atleta` (`nome`, `peso`, `altura`) VALUES ('antônio', '50', '1.70');
INSERT INTO `crudr1`.`atleta` (`nome`, `peso`, `altura`) VALUES ('andré', '48', '1.67');
INSERT INTO `crudr1`.`atleta` (`nome`, `peso`, `altura`) VALUES ('bianca', '62', '1.59');
INSERT INTO `crudr1`.`atleta` (`nome`, `peso`, `altura`) VALUES ('ronaldo', '61', '1.70');
INSERT INTO `crudr1`.`atleta` (`nome`, `peso`, `altura`) VALUES ('maísa', '47', '1.69');

CREATE TABLE `crudr1`.`pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `horaEntrada` TIME NULL,
  `horaSaida` TIME NULL,
  `idade` INT NULL,
  PRIMARY KEY (`id`));
INSERT INTO `crudr1`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('bruna', '12:00:00', '17:00:00', '24');
INSERT INTO `crudr1`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('cirilo', '13:03:57', '17:00:00', '19');
INSERT INTO `crudr1`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('cristina', '12:57:08', '17:00:00', '23');
INSERT INTO `crudr1`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('andrei', '13:00:09', '17:00:00', '20');
INSERT INTO `crudr1`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('jonny', '12:00:00', '17:00:00', '25');

CREATE TABLE `crudr1`.`time` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `pontos` INT NULL,
  `dataFundacao` DATE NULL,
  PRIMARY KEY (`id`));
INSERT INTO `crudr1`.`time` (`nome`, `cidade`, `pontos`, `dataFundacao`) VALUES ('alemanha', 'rio do sul', '15', '2020-12-04');
INSERT INTO `crudr1`.`time` (`nome`, `cidade`, `pontos`, `dataFundacao`) VALUES ('barcelona', 'lages', '4', '2000-09-13');
INSERT INTO `crudr1`.`time` (`nome`, `cidade`, `pontos`, `dataFundacao`) VALUES ('flamengo', 'lontras', '17', '2007-10-10');
INSERT INTO `crudr1`.`time` (`nome`, `cidade`, `pontos`, `dataFundacao`) VALUES ('vasco', 'benedito novo', '9', '2009-09-09');
INSERT INTO `crudr1`.`time` (`nome`, `cidade`, `pontos`, `dataFundacao`) VALUES ('palmeiras', 'timbó', '5', '2000-03-13');

CREATE TABLE `crudr1`.`peca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  `valor` DOUBLE NULL,
  `fornecedor` VARCHAR(45) NULL,
  `garantia` DATE NULL,
  PRIMARY KEY (`id`));
INSERT INTO `crudr1`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('calça azul', '30', 'shein', '2020-12-12');
INSERT INTO `crudr1`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('calça branca', '35', 'shein', '2020-12-12');
INSERT INTO `crudr1`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('vestido rosa', '50', 'shein', '2020-12-12');
INSERT INTO `crudr1`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('blusa florida', '25', 'shein', '2020-12-12');
INSERT INTO `crudr1`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('saia jeans', '50', 'shein', '2020-12-12');
