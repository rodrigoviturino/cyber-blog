-- MySQL Script generated by MySQL Workbench
-- Fri Dec 16 17:17:08 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cyber-blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cyber-blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cyber-blog` DEFAULT CHARACTER SET utf8 ;
USE `cyber-blog` ;

-- -----------------------------------------------------
-- Table `cyber-blog`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cyber-blog`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `status` INT NOT NULL DEFAULT 2 COMMENT '1 - ativo\n2 - bloqueado',
  `senha` VARCHAR(255) NOT NULL,
  `thumbmail` VARCHAR(200) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cyber-blog`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cyber-blog`.`categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NULL,
  `slug` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cyber-blog`.`postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cyber-blog`.`postagem` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(250) NOT NULL,
  `subtitulo` VARCHAR(250) NOT NULL,
  `slug` VARCHAR(250) NOT NULL,
  `status` TINYINT NOT NULL DEFAULT 2 COMMENT '1 - Ativo\n2 - Desativado',
  `data_publicacao` DATETIME NOT NULL,
  `thumb` VARCHAR(200) NOT NULL,
  `data_atualizacao` DATETIME NOT NULL,
  `palavra_chave` VARCHAR(200) NULL,
  `conteudo` TEXT NOT NULL,
  `categoria_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_postagem_categoria1_idx` (`categoria_id` ASC) VISIBLE,
  INDEX `fk_postagem_usuario1_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_postagem_categoria1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `cyber-blog`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_postagem_usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `cyber-blog`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
