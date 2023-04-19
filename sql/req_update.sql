-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog_demo

SELECT * FROM wf3_blog_demo.user;

--
-- ATTENTION TOUJOURS FILTRER AVEC WHERE SINON ON CHANGE TOUTES LES ENTREES
-- TOUJOURS FILTRER LES UPDATE
--

--Update john to James
--
UPDATE `wf3_blog_demo`.`user`
SET `firstname` = "James"
WHERE `id` = 1;


--Update doe to bond--
--
UPDATE `wf3_blog_demo`.`user`
SET `lastname` = "Bond"
WHERE `id` = 1;

UPDATE `wf3_blog_demo`.`user`
SET `password` = "123456789azerty"
WHERE `id` = 3 || `id` = 5;

UPDATE `wf3_blog_demo`.`user`
SET `screename` = "James B."
WHERE `firstname` = "james";