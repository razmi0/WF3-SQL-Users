-- Active: 1681909758259@@127.0.0.1@3306@wf3_blog

SELECT * FROM `wf3_blog`.`article`;


INSERT INTO `wf3_blog`.`article`
                    (`title`,                   `slug`,                   `content_html`,                `content_text`  )
VALUES         ("Mon premier titre",     "mon-premier-article",       "Mon premier article",         "Mon premier article" ),
               ("Mon deuxième titre",    "mon-deuxieme-article",    "Mon deuxième article",          "Mon deuxième article" ),
             ("Mon troisième titre",    "mon-troisieme-article",     "Mon troisième article",         "Mon troisième article" ),
               ("Mon quatrième titre",   "mon-quatrième-article"  ,      "mon-quatrième-article"  ,        "mon-quatrième-article");




