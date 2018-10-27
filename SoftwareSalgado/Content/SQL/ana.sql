-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ana
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ana
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ana` DEFAULT CHARACTER SET latin1 ;
USE `ana` ;

-- -----------------------------------------------------
-- Table `ana`.`tbl_pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_pessoa` (
  `pes_codigo` INT(5) NOT NULL,
  `pes_nome` VARCHAR(45) NOT NULL,
  `pes_telefone` VARCHAR(45) NOT NULL,
  `pes_email` VARCHAR(45) NULL,
  `pes_cpf` VARCHAR(45) NULL,
  `pes_nomeusuario` VARCHAR(45) NULL,
  `pes_senha` VARCHAR(45) NULL,
  `pes_cnpj` VARCHAR(45) NULL,
  PRIMARY KEY (`pes_codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_endereco` (
  `end_codigo` INT(5) NOT NULL AUTO_INCREMENT,
  `end_logradouro` VARCHAR(45) NOT NULL,
  `end_numero` INT(10) NULL,
  `end_complemento` VARCHAR(45) NULL,
  `end_cidade` VARCHAR(45) NOT NULL,
  `tbl_pessoa_pes_codigo` INT(5) NOT NULL,
  PRIMARY KEY (`end_codigo`, `tbl_pessoa_pes_codigo`),
  INDEX `fk_tbl_endereco_tbl_pessoa1_idx` (`tbl_pessoa_pes_codigo` ASC),
  CONSTRAINT `fk_tbl_endereco_tbl_pessoa1`
    FOREIGN KEY (`tbl_pessoa_pes_codigo`)
    REFERENCES `ana`.`tbl_pessoa` (`pes_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_saida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_saida` (
  `sai_codigo` INT(5) NOT NULL,
  `sai_data` DATETIME NOT NULL,
  `sai_tipo` VARCHAR(45) NOT NULL,
  `sai_valor` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`sai_codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_tipoproduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_tipoproduto` (
  `tpr_codigo` INT(5) NOT NULL AUTO_INCREMENT,
  `tpr_tipo` ENUM('Salgado', 'Doce', 'Buffet') NOT NULL,
  `tpr_salgado` ENUM('Frito', 'Assado') NULL,
  PRIMARY KEY (`tpr_codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_produto` (
  `pro_codigo` INT(5) NOT NULL AUTO_INCREMENT,
  `pro_nome` VARCHAR(45) NOT NULL,
  `pro_valor` DECIMAL(3,2) NOT NULL,
  `tbl_tipoproduto_tpr_codigo` INT(5) NOT NULL,
  PRIMARY KEY (`pro_codigo`, `tbl_tipoproduto_tpr_codigo`),
  INDEX `fk_tbl_produto_tbl_tipoproduto1_idx` (`tbl_tipoproduto_tpr_codigo` ASC),
  CONSTRAINT `fk_tbl_produto_tbl_tipoproduto1`
    FOREIGN KEY (`tbl_tipoproduto_tpr_codigo`)
    REFERENCES `ana`.`tbl_tipoproduto` (`tpr_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_pedido` (
  `ped_codigo` INT(5) NOT NULL AUTO_INCREMENT,
  `ped_data` DATETIME NOT NULL,
  `ped_quantidade` INT NOT NULL,
  `ped_valortotal` DECIMAL NOT NULL,
  `tbl_pessoa_pes_codigo` INT(5) NOT NULL,
  `tbl_endereco_end_codigo` INT(5) NOT NULL,
  PRIMARY KEY (`ped_codigo`, `tbl_pessoa_pes_codigo`, `tbl_endereco_end_codigo`),
  INDEX `fk_tbl_pedido_tbl_pessoa1_idx` (`tbl_pessoa_pes_codigo` ASC),
  INDEX `fk_tbl_pedido_tbl_endereco1_idx` (`tbl_endereco_end_codigo` ASC),
  CONSTRAINT `fk_tbl_pedido_tbl_pessoa1`
    FOREIGN KEY (`tbl_pessoa_pes_codigo`)
    REFERENCES `ana`.`tbl_pessoa` (`pes_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_pedido_tbl_endereco1`
    FOREIGN KEY (`tbl_endereco_end_codigo`)
    REFERENCES `ana`.`tbl_endereco` (`end_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ana`.`tbl_pedido_has_tbl_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ana`.`tbl_pedido_has_tbl_produto` (
  `tbl_pedido_ped_codigo` INT(5) NOT NULL,
  `tbl_produto_pro_codigo` INT(5) NOT NULL,
  PRIMARY KEY (`tbl_pedido_ped_codigo`, `tbl_produto_pro_codigo`),
  INDEX `fk_tbl_pedido_has_tbl_produto_tbl_produto1_idx` (`tbl_produto_pro_codigo` ASC),
  INDEX `fk_tbl_pedido_has_tbl_produto_tbl_pedido1_idx` (`tbl_pedido_ped_codigo` ASC),
  CONSTRAINT `fk_tbl_pedido_has_tbl_produto_tbl_pedido1`
    FOREIGN KEY (`tbl_pedido_ped_codigo`)
    REFERENCES `ana`.`tbl_pedido` (`ped_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_pedido_has_tbl_produto_tbl_produto1`
    FOREIGN KEY (`tbl_produto_pro_codigo`)
    REFERENCES `ana`.`tbl_produto` (`pro_codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
