-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema theofficedb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema theofficedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `theofficedb` DEFAULT CHARACTER SET utf8 ;
USE `theofficedb` ;

-- -----------------------------------------------------
-- Table `theofficedb`.`info_episodes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `theofficedb`.`info_episodes` (
  `episode_id` INT NOT NULL,
  `season` INT NOT NULL,
  `episode_title` VARCHAR(100) NOT NULL,
  `about` VARCHAR(500) NULL,
  `ratings` FLOAT NOT NULL,
  `votes` INT NOT NULL,
  `viewership` FLOAT NOT NULL,
  `duration` INT NOT NULL,
  `date` DATE NOT NULL,
  `guest_stars` VARCHAR(45) NULL,
  `director` VARCHAR(45) NOT NULL,
  `writers` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`episode_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `theofficedb`.`lines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `theofficedb`.`lines` (
  `line_id` INT NOT NULL,
  `season` INT NOT NULL,
  `scene` INT NOT NULL,
  `line_text` VARCHAR(1000) NOT NULL,
  `first_name` VARCHAR(200) NOT NULL,
  `action` VARCHAR(200) NULL,
  `info_episodes_episode_id` INT NOT NULL,
  PRIMARY KEY (`line_id`),
  INDEX `fk_lines_info_episodes_idx` (`info_episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_lines_info_episodes`
    FOREIGN KEY (`info_episodes_episode_id`)
    REFERENCES `theofficedb`.`info_episodes` (`episode_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `theofficedb`.`character_episode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `theofficedb`.`character_episode` (
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `complete_name` VARCHAR(80) NOT NULL,
  `info_episodes_episode_id` INT NOT NULL,
  INDEX `fk_character_episode_info_episodes1_idx` (`info_episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_character_episode_info_episodes1`
    FOREIGN KEY (`info_episodes_episode_id`)
    REFERENCES `theofficedb`.`info_episodes` (`episode_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
