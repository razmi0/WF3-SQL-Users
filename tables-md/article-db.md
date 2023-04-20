# TABLE ARTICLE BRAINSTORMING
## TABLE ARTICLE

| *COLUMN NAME* | *VALUES*|
|---|---|
|id| |
|slug| |
|summary| |
|excerpt_html| |
|excerpt_text| |
|illustration| |
|illustration_excerpt| |
|content_html| |
|content_text| |
|created_at| |
|review_at | Date et heure de relecture|
|publish_at | Date et heure de publication|
|edit_at | Date et heure de dernière modification|
|counter_view| |
|counter_read| |
|counter_applause| |
|read_time | Temps moyen estimé de lecture du article|
|reading_time | Temps passé à lire le article|
|isShareable | Booléan |
|isCommentable | Booléan |
|isCommentActive | Booléan |


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

