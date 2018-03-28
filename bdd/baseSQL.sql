-- MySQL Script generated by MySQL Workbench
-- Wed Mar 28 10:43:33 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema platformeCom
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema platformeCom
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `platformeCom` DEFAULT CHARACTER SET utf8 ;
USE `platformeCom` ;

-- -----------------------------------------------------
-- Table `platformeCom`.`magasins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`magasins` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `denomination` VARCHAR(55) NULL,
  `adresse` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platformeCom`.`produits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`produits` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `denomination` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platformeCom`.`commerciaux`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`commerciaux` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platformeCom`.`visites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`visites` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NULL,
  `magasins_id` INT NOT NULL,
  `commerciaux_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_visite_magasins1_idx` (`magasins_id` ASC),
  INDEX `fk_visite_commerciaux1_idx` (`commerciaux_id` ASC),
  CONSTRAINT `fk_visite_magasins1`
    FOREIGN KEY (`magasins_id`)
    REFERENCES `platformeCom`.`magasins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_visite_commerciaux1`
    FOREIGN KEY (`commerciaux_id`)
    REFERENCES `platformeCom`.`commerciaux` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platformeCom`.`produitsMagasins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`produitsMagasins` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `facet` INT NULL,
  `etagere` INT NULL,
  `presence` TINYINT(1) NULL,
  `magasin_id` INT NOT NULL,
  `produit_id` INT NOT NULL,
  `visite_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produitInMagasin_Magasins_idx` (`magasin_id` ASC),
  INDEX `fk_produitInMagasin_produits1_idx` (`produit_id` ASC),
  INDEX `fk_produitMagasin_visite1_idx` (`visite_id` ASC),
  CONSTRAINT `fk_produitInMagasin_Magasins`
    FOREIGN KEY (`magasin_id`)
    REFERENCES `platformeCom`.`magasins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produitInMagasin_produits1`
    FOREIGN KEY (`produit_id`)
    REFERENCES `platformeCom`.`produits` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produitMagasin_visite1`
    FOREIGN KEY (`visite_id`)
    REFERENCES `platformeCom`.`visites` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platformeCom`.`produitsVisites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platformeCom`.`produitsVisites` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `visite_id` INT NOT NULL,
  `produit_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produitAChecker_visite1_idx` (`visite_id` ASC),
  INDEX `fk_produitAChecker_produits1_idx` (`produit_id` ASC),
  CONSTRAINT `fk_produitAChecker_visite1`
    FOREIGN KEY (`visite_id`)
    REFERENCES `platformeCom`.`visites` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produitAChecker_produits1`
    FOREIGN KEY (`produit_id`)
    REFERENCES `platformeCom`.`produits` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `platformeCom`.`magasins`
-- -----------------------------------------------------
START TRANSACTION;
USE `platformeCom`;
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (1, 'Leclerc Saint Berthevin', '62 Boulevard Louis Armand CS 54239, 53942 Saint Berthevin Les Laval');
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (2, 'Leclerc Laval', '60 Avenue de la Communauté Européenne, 53000 Laval');
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (3, 'Hyper U Mayenne', '550 Boulevard Jean Monnet, 53100 Mayenne');
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (4, 'U Express', ' Zone Artisanale de l\'Aubepin, 53970 L\'Huisserie');
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (5, 'Super U Évron', 'Route de Laval, 53600 Évron');
INSERT INTO `platformeCom`.`magasins` (`id`, `denomination`, `adresse`) VALUES (6, 'Liddle Laval', '24 Rue Saint-Mélaine, 53000 Laval');

COMMIT;


-- -----------------------------------------------------
-- Data for table `platformeCom`.`produits`
-- -----------------------------------------------------
START TRANSACTION;
USE `platformeCom`;
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (1, 'Spaghetti lustucru');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (2, 'Conserve Bonduel Haricots Vert');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (3, 'Steak Haché Marque Repert');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (4, 'Mayonnaise Amora');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (5, 'Eau ');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (6, 'Lait');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (7, 'Clé usb 32GO');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (8, 'Javel 1L');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (9, 'Jambon');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (10, 'Lardon');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (11, 'Saumon');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (12, 'Fromage de Chevre');
INSERT INTO `platformeCom`.`produits` (`id`, `denomination`) VALUES (13, 'Brie Bon Mayennais');

COMMIT;


-- -----------------------------------------------------
-- Data for table `platformeCom`.`commerciaux`
-- -----------------------------------------------------
START TRANSACTION;
USE `platformeCom`;
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (1, 'TRAVERSA', 'Thomas');
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (2, 'MORIN', 'Thymoté');
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (3, 'RIDE', 'Arnaud');
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (4, 'DUGOUARD', 'Jean-Michel');
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (5, 'PERRIN', 'Coralie');
INSERT INTO `platformeCom`.`commerciaux` (`id`, `nom`, `prenom`) VALUES (6, 'GOUGEON', 'Pierre');

COMMIT;


-- -----------------------------------------------------
-- Data for table `platformeCom`.`visites`
-- -----------------------------------------------------
START TRANSACTION;
USE `platformeCom`;
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (1, '28-03-2018 09:00:00', 1, 2);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (2, '28-03-2018 10:00:00', 3, 4);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (3, '28-03-2018 09:00:00', 2, 1);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (4, '28-03-2018 14:00:00', 6, 1);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (5, '28-03-2018 09:00:00', 5, 3);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (6, '28-03-2018 11:00:00', 2, 2);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (7, '28-03-2018 13:30:00', 4, 3);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (8, '28-03-2018 16:00:00', 6, 4);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (9, '28-03-2018 09:00:00', 4, 6);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (10, '28-03-2018 09:00:00', 1, 5);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (11, '28-03-2018 13:00:00', 3, 6);
INSERT INTO `platformeCom`.`visites` (`id`, `date`, `magasins_id`, `commerciaux_id`) VALUES (12, '28-03-2018 14:00:00', 5, 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `platformeCom`.`produitsVisites`
-- -----------------------------------------------------
START TRANSACTION;
USE `platformeCom`;
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (1, 1, 1);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (2, 1, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (3, 1, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (4, 1, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (5, 1, 5);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (6, 1, 6);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (7, 1, 7);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (8, 1, 8);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (9, 1, 9);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (10, 2, 1);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (11, 2, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (12, 2, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (13, 2, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (14, 2, 8);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (15, 2, 12);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (16, 2, 6);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (17, 2, 9);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (18, 3, 1);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (19, 3, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (20, 3, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (21, 3, 6);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (22, 3, 9);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (23, 3, 10);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (24, 3, 11);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (25, 3, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (26, 4, 1);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (27, 4, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (28, 4, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (29, 4, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (30, 4, 7);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (31, 4, 8);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (32, 5, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (33, 5, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (34, 5, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (35, 5, 7);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (36, 5, 6);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (37, 5, 9);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (38, 6, 11);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (39, 6, 2);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (40, 6, 3);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (41, 6, 4);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (42, 6, 13);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (43, 6, 12);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (44, 6, 8);
INSERT INTO `platformeCom`.`produitsVisites` (`id`, `visite_id`, `produit_id`) VALUES (45, 6, 9);

COMMIT;
