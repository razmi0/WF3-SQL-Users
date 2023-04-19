-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog_demo
INSERT INTO `wf3_blog_demo`.`user` VALUES (
    "John",
    "DOE",
);

INSERT INTO `wf3_blog_demo`.`user`
        (`firstname`, `lastname`, `screename`, `password`,   `email`,     `birth_place`,      `birth_date`,            `gender`,     `profile_description`   ,   `country` )
VALUES  ("John",        "DOE",     "John D."  ,  "123456", "john@doe.com",    "Oslo",          "2000-08-26",              "M"    ,       "Miam, les frites",        "FR"  ),
        ("Jane",        "CAT",     "Jane C."  ,  "123456", "jane@cat.com",    "Oslo",          "2000-08-27",              "F"    ,       "Miam, les burger",        "BE"  ),
        ("Bob",         "COW",     "Bob C."  ,   "123456", "bob@cow.com",     "Oslo",          "2000-08-27",              "N"    ,       "Miam, les oignons",       "SU"  );