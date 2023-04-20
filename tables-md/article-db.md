# TABLE ARTICLE BRAINSTORMING
## TABLE ARTICLE

| *COLUMN NAME* | *VALUES* |
|---|---|
|id| int(11) PK NN UQ AI |
|title| varchar(120) |
|slug| varchar(120) |
|summary| TINYTEXT |
|excerpt_html| TINYTEXT |
|excerpt_text| TINYTEXT|
|illustration| varchar(40) |
|illustration_excerpt| varchar(40) |
|content_html| TEXT |
|content_text| TEXT |
|created_at| DATETIME |
|review_at | DATETIME (Date et heure de relecture)|
|publish_at | DATETIME (Date et heure de publication)|
|edit_at | DATETIME (Date et heure de dernière modification)|
|counter_view| SMALLINT(5) |
|counter_read| SMALLINT(5) |
|counter_applause| SMALLINT(5) |
|read_time | SMALLINT(4) (Temps moyen estimé de lecture du article)|
|reading_time | SMALLINT(4) (Temps passé à lire le article)|
|isShareable | TINYINT(1) |
|isCommentable | TINYINT(1) |
|isCommentActive | TINYINT(1) |


### TABLE COMMENT

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|article_id| INT(11) UN |
|user_id| MEDIUMINT() |
|title| INT(11) UN |
|created_at| varchar(120) |
|edit_at| DATETIME |
|publish_at| DATETIME |
|delete_at| DATETIME |
|delete_reason| ENUM('haine','harcelement','nudidité') |
|counter_like| SMALLINT(5) |


### TABLE CATEGORY

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|value| varchar(20) |
|color| char(6) |
|illustration| varchar(40) |


### TABLE CATEGORY_ARTICLE

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|category_id| INT(11)  UN |
|article_id| INT(11)  UN |



### TABLE ARTICLE_KEYWORDS

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|article_id| INT(11) UN |
|values| varchar(60)|



### TABLE ARTICLE_AUTHOR

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|article_id| INT(11)  UN |
|user_id| INT(11)  UN |



### TABLE SOURCING

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| INT(11) PK NN UQ UN AI |
|user_id| INT(11)  UN |
|label| varchar(80) |
|url| varchar(80) |



## SQL QUERIES

```sql

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema WF3_blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema WF3_blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `WF3_blog` DEFAULT CHARACTER SET utf8 ;
USE `WF3_blog` ;

-- -----------------------------------------------------
-- Table `WF3_blog`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`user` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(60) NOT NULL,
  `lastname` VARCHAR(60) NOT NULL,
  `fullname` VARCHAR(121) GENERATED ALWAYS AS (CONCAT(`firstname`," ",`lastname`)) VIRTUAL,
  `sreenname` VARCHAR(63) NOT NULL,
  `nickname` VARCHAR(40) NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `role` ENUM('user', 'contributor', 'moderator', 'administrator') NOT NULL DEFAULT 'user',
  `birth_place` VARCHAR(60) NOT NULL,
  `birth_date` DATE NULL,
  `gender` ENUM('M', 'N', 'F') NOT NULL DEFAULT 'N',
  `phone_number` VARCHAR(20) NULL,
  `profile_picture` VARCHAR(40) NOT NULL DEFAULT 'no-picture.jpg',
  `profile_banner` VARCHAR(40) NOT NULL DEFAULT 'no-banner.jpg',
  `profile_description` TEXT NULL,
  `register_date` DATETIME NOT NULL DEFAULT NOW(),
  `last_connection_date` DATETIME NULL,
  `last_action_date` TIMESTAMP NULL,
  `country` CHAR(2) NULL,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`article` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(120) NOT NULL,
  `slug` VARCHAR(120) NOT NULL,
  `summary` TINYTEXT NULL,
  `excerpt_html` TINYTEXT NULL,
  `excerpt_text` TINYTEXT NULL,
  `illustration` VARCHAR(40) NULL,
  `illustration_excerpt` VARCHAR(40) NULL,
  `content_html` TEXT NOT NULL,
  `content_text` TEXT NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `review_at` DATETIME NULL,
  `publish_at` DATETIME NULL,
  `edit_at` DATETIME NULL,
  `counter_view` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `counter_read` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `counter_applause` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `read_time` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `reading_time` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `is_shareable` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  `is_commentable` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  `is_comment_active` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) );


-- -----------------------------------------------------
-- Table `WF3_blog`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`comment` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` INT(11) UNSIGNED NULL,
  `user_id` INT(11) UNSIGNED NULL,
  `title` VARCHAR(120) NULL,
  `parent_id` INT(11) UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `edit_at` DATETIME NULL,
  `publish_at` DATETIME NULL,
  `delete_at` DATETIME NULL,
  `delete_reason` ENUM('haine', 'harcelement', 'nuditide') NULL,
  `counter_like` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `article_comment__article_id_idx` (`article_id` ASC) ,
  INDEX `user__comment__usr_id_idx` (`user_id` ASC) ,
  INDEX `comment__comment_parent_id_idx` (`parent_id` ASC) ,
  CONSTRAINT `article_comment__article_id`
    FOREIGN KEY (`article_id`)
    REFERENCES `WF3_blog`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user__comment__usr_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `WF3_blog`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `comment__comment_parent_id`
    FOREIGN KEY (`parent_id`)
    REFERENCES `WF3_blog`.`comment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`category` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(20) NULL,
  `color` CHAR(6) NULL,
  `illustration` VARCHAR(40) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`category_article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`category_article` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` INT(11) UNSIGNED NOT NULL,
  `article_id` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `category__category_article__category_id_idx` (`category_id` ASC) ,
  CONSTRAINT `category__category_article__category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `WF3_blog`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `article__category_artigle__article_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `WF3_blog`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`keywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`keywords` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` INT(11) UNSIGNED NOT NULL,
  `values` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `article__keywords__article_id_idx` (`article_id` ASC) ,
  CONSTRAINT `article__keywords__article_id`
    FOREIGN KEY (`article_id`)
    REFERENCES `WF3_blog`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`article_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`article_author` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` INT(11) UNSIGNED NULL,
  `user_id` INT(11) UNSIGNED NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `article__article_author__article_id_idx` (`article_id` ASC) ,
  INDEX `author__article_author__user_id_idx` (`user_id` ASC) ,
  CONSTRAINT `article__article_author__article_id`
    FOREIGN KEY (`article_id`)
    REFERENCES `WF3_blog`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `author__article_author__user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `WF3_blog`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WF3_blog`.`sourcing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WF3_blog`.`sourcing` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` INT(11) UNSIGNED NOT NULL,
  `label` VARCHAR(80) NOT NULL,
  `url` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `article_sourcing__article_id_idx` (`article_id` ASC) ,
  CONSTRAINT `article_sourcing__article_id`
    FOREIGN KEY (`article_id`)
    REFERENCES `WF3_blog`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

```
