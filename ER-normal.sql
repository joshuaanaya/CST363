-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gc` DEFAULT CHARACTER SET utf8 ;
USE `gc` ;

-- -----------------------------------------------------
-- Table `gc`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gc`.`customer` (
  `CustomerID` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerLastName` CHAR(25) NOT NULL,
  `CustomerFirstName` CHAR(25) NOT NULL,
  `Phone` CHAR(12) NOT NULL,
  `Email` CHAR(25) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gc`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gc`.`inventory` (
  `ProductNumber` INT(11) NOT NULL AUTO_INCREMENT,
  `Product` CHAR(50) NOT NULL,
  `Price` DECIMAL(8,0) NOT NULL,
  `Quantity` INT(11) NOT NULL,
  `ProductType` CHAR(25) NOT NULL,
  PRIMARY KEY (`ProductNumber`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gc`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gc`.`invoice` (
  `CustomerID` INT(11) NOT NULL,
  `ProductNumber` INT(11) NOT NULL,
  `Quantity` INT(11) NOT NULL,
  `AmountPaid` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`, `ProductNumber`),
  CONSTRAINT `INVOICE_CUSTOMER_FK`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `gc`.`customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `INVOICE_INVENTORY_FK`
    FOREIGN KEY (`ProductNumber`)
    REFERENCES `gc`.`inventory` (`ProductNumber`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `INVOICE_INVENTORY_FK` ON `gc`.`invoice` (`ProductNumber` ASC);

USE `gc` ;

-- -----------------------------------------------------
-- Placeholder table for view `gc`.`customerorder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gc`.`customerorder` (`CustomerID` INT, `CustomerFirstName` INT, `CustomerLastName` INT, `Product` INT, `Quantity` INT, `ProductPrice` INT, `AmountPaid` INT);

-- -----------------------------------------------------
-- View `gc`.`customerorder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gc`.`customerorder`;
USE `gc`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gc`.`customerorder` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerFirstName` AS `CustomerFirstName`,`c`.`CustomerLastName` AS `CustomerLastName`,`invn`.`Product` AS `Product`,`invo`.`Quantity` AS `Quantity`,`invn`.`Price` AS `ProductPrice`,`invo`.`AmountPaid` AS `AmountPaid` from ((`gc`.`invoice` `invo` join `gc`.`customer` `c`) join `gc`.`inventory` `invn`) where ((`invo`.`CustomerID` = `c`.`CustomerID`) and (`invn`.`ProductNumber` = `invo`.`ProductNumber`));

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
