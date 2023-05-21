-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_autoescola
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_autoescola
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_autoescola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_autoescola` ;

-- -----------------------------------------------------
-- Table `db_autoescola`.`autoescola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_autoescola`.`autoescola` (
  `codigoatendimento` INT NOT NULL,
  `datainicio` DATE NULL DEFAULT NULL,
  `datafinalmaxima` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`codigoatendimento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_autoescola`.`dados_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_autoescola`.`dados_cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `cpf` INT NULL DEFAULT NULL,
  `rg` INT NULL DEFAULT NULL,
  `numero_telefone` INT NULL DEFAULT NULL,
  `numero_celular` INT NULL DEFAULT NULL,
  `rua` VARCHAR(45) NULL DEFAULT NULL,
  `numero` INT NULL DEFAULT NULL,
  `complemento` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_autoescola`.`dados_formulario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_autoescola`.`dados_formulario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_funcionario` VARCHAR(100) NULL DEFAULT NULL,
  `cpf_cliente` VARCHAR(14) NULL DEFAULT NULL,
  `observacoes` TEXT NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_autoescola`.`tb_agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_autoescola`.`tb_agendamento` (
  `nome_funcionario` VARCHAR(45) NOT NULL,
  `cpf_cliente` INT NULL DEFAULT NULL,
  `observacoes` VARCHAR(45) NULL DEFAULT NULL,
  `data_agendamento` VARCHAR(45) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
