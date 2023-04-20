# TABLE USER
## TABLE USER BRAINSTORMING


|*COLUMN NAME*|*VALUE TYPE*|
|---|---|
|id| mediumint(11) UNSIGNED|
|lastname (John)| varchar(60)|
|firstname (Doe)| varchar(60)|
|fullname (John Doe)| varchar(121)|
|screenname (John D.)| varchar(63)|
|nickname| varchar(40)|
|email| varchar(255)|
|password| varchar(255) (hashage)|
|roles| enum('u', 'c' ,'m','a')|
|birth_place| varchar(60)|
|birth_date| Date|
|gender| enum('M', 'N', 'F')|
|phone_number-| varchar(20)|
|Profile_Picture| varchar(40)(md5 + extension)|
|Profile_Banner| varchar(40)(md5 + extension)|
|Profile_Description| text()|
|register_date| DateTime|
|last_connection_date| DateTime|
|last_action_date| timestamp|
|country| char(2)|
|isDeleted| tinyint(1)|



## USER TABLE QUERY


```sql
CREATE TABLE `wf3_blog_demo`.`user` (
  `id` MEDIUMINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(60) NOT NULL,
  `lastname` VARCHAR(60) NOT NULL,
  `fullname` VARCHAR(121) GENERATED ALWAYS AS (CONCAT(firstname," ",lastname)) VIRTUAL,
  `screename` VARCHAR(63) NOT NULL,
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
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
```
