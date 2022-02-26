SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hr_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hr_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hr_database` DEFAULT CHARACTER SET utf8 ;
USE `hr_database` ;

-- -----------------------------------------------------
-- Table `hr_database`.`MANAGERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`MANAGERS` (
  `manager_id` INT(6) NOT NULL,
  PRIMARY KEY (`manager_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hr_database`.`JOBS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`JOBS` (
  `job_id` VARCHAR(10) NOT NULL,
  `job_title` VARCHAR(35) NOT NULL,
  `min_salary` INT(6) NULL,
  `max_salary` INT(6) NULL,
  PRIMARY KEY (`job_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`REGIONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`REGIONS` (
  `region_id` INT NOT NULL,
  `region_name` VARCHAR(25) NULL,
  PRIMARY KEY (`region_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`COUNTRIES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`COUNTRIES` (
  `country_id` CHAR(2) NOT NULL,
  `country_name` VARCHAR(40) NULL,
  `REGIONS_region_id` INT NULL,
  PRIMARY KEY (`country_id`, `REGIONS_region_id`),
  INDEX `fk_COUNTRIES_REGIONS1_idx` (`REGIONS_region_id` ASC) ,
  CONSTRAINT `fk_COUNTRIES_REGIONS1`
    FOREIGN KEY (`REGIONS_region_id`)
    REFERENCES `hr_database`.`REGIONS` (`region_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`LOCATIONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`LOCATIONS` (
  `location_id` INT(4) NOT NULL,
  `street_address` VARCHAR(40) NULL,
  `postal_code` VARCHAR(12) NULL,
  `city` VARCHAR(30) NOT NULL,
  `state_province` VARCHAR(25) NULL,
  `COUNTRIES_country_id` CHAR(2) NULL,
  `COUNTRIES_REGIONS_region_id` INT NULL,
  PRIMARY KEY (`location_id`, `COUNTRIES_country_id`, `COUNTRIES_REGIONS_region_id`),
  INDEX `fk_LOCATIONS_COUNTRIES1_idx` (`COUNTRIES_country_id` ASC, `COUNTRIES_REGIONS_region_id` ASC) ,
  CONSTRAINT `fk_LOCATIONS_COUNTRIES1`
    FOREIGN KEY (`COUNTRIES_country_id` , `COUNTRIES_REGIONS_region_id`)
    REFERENCES `hr_database`.`COUNTRIES` (`country_id` , `REGIONS_region_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`DEPARTEMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`DEPARTEMENTS` (
  `departement_id` INT(4) NOT NULL,
  `departement_name` VARCHAR(30) NULL,
  `LOCATIONS_location_id` INT(4) NULL,
  `LOCATIONS_COUNTRIES_country_id` CHAR(2) NULL,
  `LOCATIONS_COUNTRIES_REGIONS_region_id` INT NULL,
  `MANAGERS_manager_id` INT(6) NOT NULL,
  PRIMARY KEY (`departement_id`, `LOCATIONS_location_id`, `LOCATIONS_COUNTRIES_country_id`, `LOCATIONS_COUNTRIES_REGIONS_region_id`, `MANAGERS_manager_id`),
  INDEX `fk_DEPARTEMENTS_LOCATIONS1_idx` (`LOCATIONS_location_id` ASC, `LOCATIONS_COUNTRIES_country_id` ASC, `LOCATIONS_COUNTRIES_REGIONS_region_id` ASC) ,
  INDEX `fk_DEPARTEMENTS_MANAGERS1_idx` (`MANAGERS_manager_id` ASC) ,
  CONSTRAINT `fk_DEPARTEMENTS_LOCATIONS1`
    FOREIGN KEY (`LOCATIONS_location_id` , `LOCATIONS_COUNTRIES_country_id` , `LOCATIONS_COUNTRIES_REGIONS_region_id`)
    REFERENCES `hr_database`.`LOCATIONS` (`location_id` , `COUNTRIES_country_id` , `COUNTRIES_REGIONS_region_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DEPARTEMENTS_MANAGERS1`
    FOREIGN KEY (`MANAGERS_manager_id`)
    REFERENCES `hr_database`.`MANAGERS` (`manager_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`EMPLOYEES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`EMPLOYEES` (
  `employee_id` INT(6) NOT NULL,
  `first_name` VARCHAR(20) NULL,
  `last_name` VARCHAR(25) NULL,
  `email` VARCHAR(25) NULL,
  `phone_number` VARCHAR(20) NULL,
  `hire_date` DATE NULL,
  `salary` INT NULL,
  `commission_pct` INT NULL,
  `MANAGERS_manager_id` INT(6) NULL,
  `JOBS_job_id` VARCHAR(10) NOT NULL,
  `DEPARTEMENTS_departement_id` INT(4) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_location_id` INT(4) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id` CHAR(2) NOT NULL,
  `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id` INT NOT NULL,
  `DEPARTEMENTS_MANAGERS_manager_id` INT(6) NOT NULL,
  PRIMARY KEY (`employee_id`, `MANAGERS_manager_id`, `JOBS_job_id`, `DEPARTEMENTS_departement_id`, `DEPARTEMENTS_LOCATIONS_location_id`, `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id`, `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id`, `DEPARTEMENTS_MANAGERS_manager_id`),
  INDEX `fk_EMPLOYEES_MANAGERS_idx` (`MANAGERS_manager_id` ASC) ,
  INDEX `fk_EMPLOYEES_JOBS1_idx` (`JOBS_job_id` ASC) ,
  INDEX `fk_EMPLOYEES_DEPARTEMENTS1_idx` (`DEPARTEMENTS_departement_id` ASC, `DEPARTEMENTS_LOCATIONS_location_id` ASC, `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id` ASC, `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id` ASC, `DEPARTEMENTS_MANAGERS_manager_id` ASC) ,
  CONSTRAINT `fk_EMPLOYEES_MANAGERS`
    FOREIGN KEY (`MANAGERS_manager_id`)
    REFERENCES `hr_database`.`MANAGERS` (`manager_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EMPLOYEES_JOBS1`
    FOREIGN KEY (`JOBS_job_id`)
    REFERENCES `hr_database`.`JOBS` (`job_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EMPLOYEES_DEPARTEMENTS1`
    FOREIGN KEY (`DEPARTEMENTS_departement_id` , `DEPARTEMENTS_LOCATIONS_location_id` , `DEPARTEMENTS_LOCATIONS_COUNTRIES_country_id` , `DEPARTEMENTS_LOCATIONS_COUNTRIES_REGIONS_region_id` , `DEPARTEMENTS_MANAGERS_manager_id`)
    REFERENCES `hr_database`.`DEPARTEMENTS` (`departement_id` , `LOCATIONS_location_id` , `LOCATIONS_COUNTRIES_country_id` , `LOCATIONS_COUNTRIES_REGIONS_region_id` , `MANAGERS_manager_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hr_database`.`JOB_HISTORY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hr_database`.`JOB_HISTORY` (
  `employee_id` VARCHAR(45) NOT NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `JOBS_job_id` VARCHAR(10) NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `fk_JOB_HISTORY_JOBS1_idx` (`JOBS_job_id` ASC) ,
  CONSTRAINT `fk_JOB_HISTORY_JOBS1`
    FOREIGN KEY (`JOBS_job_id`)
    REFERENCES `hr_database`.`JOBS` (`job_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

