-- 1번 2번 테이블 생성 과제

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gdsc_assignment02
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gdsc_assignment02` ;

-- -----------------------------------------------------
-- Schema gdsc_assignment02
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gdsc_assignment02` DEFAULT CHARACTER SET utf8 ;
USE `gdsc_assignment02` ;

-- -----------------------------------------------------
-- Table `gdsc_assignment02`.`theater`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdsc_assignment02`.`theater` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gdsc_assignment02`.`audience`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdsc_assignment02`.`audience` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gdsc_assignment02`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdsc_assignment02`.`reservation` (
  `id` INT NOT NULL,
  `theaterId` INT NOT NULL,
  `audienceId` INT NOT NULL,
  `time` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_reservation_theater_idx` (`theaterId` ASC) VISIBLE,
  INDEX `fk_reservation_audience1_idx` (`audienceId` ASC) VISIBLE,
  CONSTRAINT `fk_reservation_theater`
    FOREIGN KEY (`theaterId`)
    REFERENCES `gdsc_assignment02`.`theater` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reservation_audience1`
    FOREIGN KEY (`audienceId`)
    REFERENCES `gdsc_assignment02`.`audience` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- 3번 데이터 삽입 과제

INSERT INTO theater (id, name, location)
VALUES
    (1, 'CGV', 'Seoul'),
    (2, 'MegaBox', 'Tokyo'),
    (3, 'Lotte Cinema', 'London');

-- audience 테이블에 무작위 데이터 삽입
INSERT INTO audience (id, name, email)
VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Bob Johnson', 'bob@example.com');

-- reservation 테이블에 무작위 데이터 삽입
INSERT INTO reservation (id, theaterId, audienceId, time)
VALUES
    (1, 1, 1, '2023-09-22 14:00:00'),
    (2, 2, 2, '2023-09-23 15:30:00'),
    (3, 3, 3, '2023-09-24 17:00:00');
    
-- 4번 데이터 join 과제
select r.*, t.name theaterName, t.location location, a.name audienceName, a.email audienceEmail
from reservation r
	left join theater t on r.theaterId = t.id
    left join audience a on r.audienceId = a.id;
    