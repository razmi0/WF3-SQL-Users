-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog_demo

SELECT * FROM wf3_blog_demo.user;

--
INSERT INTO `wf3_blog_demo`.`user`
        (`firstname`, `lastname`, `screename`, `password`,   `email`,           `birth_place`,      `birth_date`,            `gender`,     `profile_description`   ,   `country` )
VALUES  ("Bob",        "COW",     "Bob C."  ,   "123456", "bob@cow.com",         "Oslo",             "2000-08-27",              "N"    ,       "Miam, les oignons",       "SU"  ),
        ("Boby",      "DOGGO",   "Bob D."  ,   "12dsfdsf56", "bobby@doggo.com",  "Paris",            "1992-09-12",              "M"    ,       "Miam, les patate",        "FR"  ),
        ("globby",   "GLOBBOS", "Globby G."  ,  "sddsqdqd", "globby@GLOBBOS.com", "Paris",          "1995-04-23",               "N"    ,       "Miam, les patate",         "FR"  );

--
DELETE FROM `wf3_blog_demo`.`user`
WHERE id = 6;

--Suprimme les données et réinitialise les indexs
TRUNCATE `wf3_blog_demo`.`user`;

