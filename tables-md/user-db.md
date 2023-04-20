# TABLE USER
## TABLE USER BRAINSTORMING
<hr  />
<p>
id-----------------------| mediumint(11) UNSIGNED<br>
lastname (John)----------| varchar(60)<br>
firstname (Doe)----------| varchar(60)<br>
fullname (John Doe)------| varchar(121)<br>
screenname (John D.)-----| varchar(63)<br>
nickname-----------------| varchar(40)<br>
email--------------------| varchar(255)<br>
password-----------------| varchar(255) (hashage)<br>
roles--------------------| enum('user', 'contributor' ,'moderator','admin')<br>
birth_place--------------| varchar(60)<br>
birth_date---------------| Date<br>
gender-------------------| enum('M', 'N', 'F')<br>
phone_number-------------| varchar(20)<br>
Profile_Picture----------| varchar(40) (md5 + exetention)<br>
Profile_Banner-----------| varchar()<br>
Profile_Description------| text()<br>
register_date------------| DateTime<br>
last_connection_date-----| DateTime<br>
last_action_date---------| timestamp<br>
country------------------| char(2)<br>
isDeleted----------------| tinyint(1)<br>
</p>

## USER TABLE QUERY
<hr  />

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
<hr   />