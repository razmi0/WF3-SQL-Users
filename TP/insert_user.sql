-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog

SELECT * FROM `wf3_blog`.`user`;

INSERT INTO `wf3_blog`.`user`
        (`firstname`,   `lastname`,  `sreenname`,   `password`,   `email`,        `birth_place`,      `birth_date`,           `role`   ,     `gender`,       `profile_description`   ,   `country` )
VALUES  ("Brandy",        "Dop",     "Brandy D."  ,  "123456", "Brandy@Dop.com",    "Oslo",           "2000-08-26",        "contributor" ,      "M"    ,       "Miam, les frites",        "FR"  ),
        ("Blooby",        "Goat",     "Blooby G."  ,  "123456", "Blooby@Goat.com",    "Oslo",          "2000-08-27",     "constributor"    ,     "F"    ,        "Miam, les burger",        "BE"  ),
        ("youps",         "mcGo",     "youps mcGo."  ,   "123456", "youps@mcGo.com",     "Oslo",          "2000-08-27",    "constributor"   ,       "N"    ,       "Miam, les oignons",       "SU"  );



