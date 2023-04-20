-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog


SELECT * FROM `wf3_blog`.`article`;

SELECT * FROM `wf3_blog`.`user`;

SELECT * FROM `wf3_blog`.`article_author`;

--Art 1 , Auteur 3 et 2 
--Art 2 , Auteur 3 
--Art 3 , Auteur 1 et 4 
--Art 4 , Auteur 4 et 2

INSERT INTO `wf3_blog`.`article_author`
                (`article_id`,                  `user_id`)
VALUES          (     1,                            3    ),
                (     1,                            2    ),
                (     2,                            3    ),
                (     3,                            1    ),
                (     3,                            4    ),
                (     4,                            4    ),
                (     4,                            2    );


-- table article alias t1
-- table article_author alias t2
SELECT 
    t1.id, 
    t1.title,
    t1.created_at
FROM 
    article AS t1
INNER JOIN 
    article_author AS t2
ON 
   t2.article_id = t1.id
WHERE 
   t2.user_id = 3;


--Recup les noms et prenoms des auteurs et titre de l'article , de l'article ID1

SELECT 
    t1.id
    t1.t1
FROM
    article AS t1
    INNER JOIN article_author AS t2 ON t2.article_id = t1.id
    INNER JOIN `user` AS t3 ON t3.id = t2.user_id
WHERE
    t1.id = 3;