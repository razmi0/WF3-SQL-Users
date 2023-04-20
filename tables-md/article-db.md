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

