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
|id| |
|article_id| |
|user_id| |
|title| |
|created_at| |
|edit_at| |
|publish_at| |
|delete_at| |
|delete_reason| |
|counter_like| |


### TABLE CATEGORY

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|value| |
|color| |
|illustration| |


### TABLE CATEGORY_ARTICLE

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|category_id| |
|article_id| |



### TABLE ARTICLE_KEYWORDS

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|article_id| |
|values| |



### TABLE ARTICLE_AUTHOR

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|article_id| |
|user_id| |



### TABLE SOURCING

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|user_id| |
|article_id| |
|url| |

