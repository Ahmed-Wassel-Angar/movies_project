-- MySQL Script generated by MySQL Workbench
-- Sun Feb  4 15:14:24 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `movies` ;

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8 ;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`title_basics`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`title_basics` ;

CREATE TABLE IF NOT EXISTS `movies`.`title_basics` (
  `tconst` VARCHAR(10) NOT NULL,
  `primary_title` VARCHAR(250) NULL,
  `start_year` DATE NULL,
  `runtime` DECIMAL(6,2) NULL,
  PRIMARY KEY (`tconst`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`title_ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`title_ratings` ;

CREATE TABLE IF NOT EXISTS `movies`.`title_ratings` (
  `tconst` VARCHAR(10) NOT NULL,
  `average_rating` DECIMAL(5,3) NULL,
  `number_of_votes` INT NULL,
  PRIMARY KEY (`tconst`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`genres` ;

CREATE TABLE IF NOT EXISTS `movies`.`genres` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(50) NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`title_genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`title_genres` ;

CREATE TABLE IF NOT EXISTS `movies`.`title_genres` (
  `tconst` VARCHAR(10) NOT NULL,
  `genre_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
