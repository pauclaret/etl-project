-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema the_office_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema the_office_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `the_office_db` DEFAULT CHARACTER SET utf8mb3 ;
USE `the_office_db` ;

-- -----------------------------------------------------
-- Table `the_office_db`.`info_episodes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `the_office_db`.`info_episodes` (
  `episode_id` INT NOT NULL,
  `season` INT NOT NULL,
  `episode_title` VARCHAR(150) NOT NULL,
  `about` VARCHAR(500) NULL DEFAULT NULL,
  `ratings` FLOAT NOT NULL,
  `votes` INT NOT NULL,
  `viewership` FLOAT NOT NULL,
  `duration` INT NOT NULL,
  `date` DATE NOT NULL,
  `guest_stars` VARCHAR(500) NULL DEFAULT NULL,
  `director` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`episode_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `the_office_db`.`character_episode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `the_office_db`.`character_episode` (
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `complete_name` VARCHAR(200) NOT NULL,
  `info_episodes_episode_id` INT NOT NULL,
  INDEX `fk_character_episode_info_episodes1_idx` (`info_episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_character_episode_info_episodes1`
    FOREIGN KEY (`info_episodes_episode_id`)
    REFERENCES `the_office_db`.`info_episodes` (`episode_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `the_office_db`.`lines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `the_office_db`.`lines` (
  `line_id` INT NOT NULL,
  `season` INT NOT NULL,
  `scene` INT NOT NULL,
  `line_text` VARCHAR(3000) NOT NULL,
  `first_name` VARCHAR(1000) NOT NULL,
  `action` VARCHAR(1000) NULL DEFAULT NULL,
  `info_episodes_episode_id` INT NOT NULL,
  PRIMARY KEY (`line_id`),
  INDEX `fk_lines_info_episodes_idx` (`info_episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_lines_info_episodes`
    FOREIGN KEY (`info_episodes_episode_id`)
    REFERENCES `the_office_db`.`info_episodes` (`episode_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `the_office_db`.`writers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `the_office_db`.`writers` (
  `writer` VARCHAR(100) NOT NULL,
  `info_episodes_episode_id` INT NOT NULL,
  INDEX `fk_writers_info_episodes1_idx` (`info_episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_writers_info_episodes1`
    FOREIGN KEY (`info_episodes_episode_id`)
    REFERENCES `the_office_db`.`info_episodes` (`episode_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
