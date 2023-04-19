-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog_demo
-- SELECT QUERIES

-- Select all rows
--
SELECT *
FROM `wf3_blog_demo`.`user`;


-- Select all columns specified
--
SELECT `id
`, `firstname`, `lastname`, `email`, `password` FROM `wf3_blog_demo`.`user`;


-- Select all columns specified with alias
--
SELECT `id` AS `identifiant`,
       `firstname` AS `prenom`,
       `lastname` AS `nom`,
       `email` AS `adresse mail`
FROM `wf3_blog_demo`.`user`;



-- Select row where id = 8
--
SELECT * FROM `wf3_blog_demo`.`user` WHERE `id` = 8;


-- Select screename and profile_description where id = 8
--
SELECT `screename`, `profile_description` FROM `wf3_blog_demo`.`user` WHERE `id` = 8;


-- Select screename and email where firstname = "john"
--
SELECT `screename`, `email` FROM `wf3_blog_demo`.`user` WHERE `firstname` = "john";


-- Select all John by ID DESC
--
SELECT `id`, `screename`, `email` FROM `wf3_blog_demo`.`user` WHERE firstname = "john" ORDER BY `id` DESC;

-- Select all rows, all colums ordered by firstname
--
SELECT * FROM `wf3_blog_demo`.`user` ORDER BY `firstname`; 
SELECT * FROM `wf3_blog_demo`.`user` ORDER BY `firstname` ASC; 
SELECT * FROM `wf3_blog_demo`.`user` ORDER BY `firstname` DESC;



-- Select all rows, all colums ordered by firstname  
--
SELECT * FROM `wf3_blog_demo`.`user` ORDER BY `firstname` LIMIT 2,3; 



-- Select all rows with "o" in firstname  
--
SELECT * FROM `wf3_blog_demo`.`user` WHERE `firstname` LIKE '%o%';


-- Select all rows  ordered by firstname asc and lastname desc  
--
SELECT * FROM `wf3_blog_demo`.`user` ORDER BY `firstname` ASC, `lastname` DESC;

-- Select the LENGTH of the longuest email
--
SELECT MAX(LENGTH(email)) FROM `wf3_blog_demo`.`user`;

-- select only one row with the longuest email
--
SELECT * FROM `wf3_blog_demo`.`user` WHERE LENGTH(email) = (
    SELECT MAX(LENGTH(email)) FROM `wf3_blog_demo`.`user`
) LIMIT 0,1;

--