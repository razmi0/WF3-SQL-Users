# DATA TYPES SQL


### STRING DATA TYPES

|*TYPE* |*+/-*| *RANGE*  |
|---|---|---|
|**VARYING** | (VARCHAR)| - 1 to 255 *characters*|
> ex : VARCHAR(20) - 20 characters maximum

|   |   |   |
|---|---|---|
|**FIXED**  |  (CHAR) | - 0 to 255 *characters*|
> ex : CHAR(20)     - 20 characters always

|   |   |   |
|---|---|---|
|**STRING** |  (TEXT) | - 1 to 255 *characters*|
> ex : TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT

|   |   |   |
|---|---|---|
| | | |
|**BLOB**   |  (BINARY LARGE OBJECT) | - 1 to 255 *bytes*|
> ex : TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB

|   |   |   |
|---|---|---|
|**ENUM**   |  (ENUMERATED) | - 1 to 65535 *values*|
> ex : ENUM('value1', 'value2', 'value3')



### NUMERIC DATA TYPES


####  INTEGER DATA TYPES

  
|*TYPE* |*+/-*| *RANGE*  |
|---|---|---|
|**TINYINT**| *SIGNED* : | -128 to 127 |
||*UNSIGNED*:| 0 to 255 |
>ex : TINYINT(255) - 255 bytes max

| | | |
|---|---|---|
|**SMALLINT** |*SIGNED* :| -32768 to 32767|
| |*UNSIGNED*:| 0 to 65535|
>ex : SMALLINT(255) - 255 bytes max

| | | |
|---|---|---|
|**MEDIUMINT** | *SIGNED* |: -8388608 to 8388607|
||*UNSIGNED*:| 0 to 16777215|
>ex : MEDIUMINT(255) - 255 bytes max


| | | |
|---|---|---|
|INT |SIGNED | : -2147483648 to 2147483647
||UNSIGNED:| 0 to 4294967295
>ex      : INT(255) - 255 bytes max


| | | |
|---|---|---|
|**BIGINT** | *SIGNED*  : | -9223372036854775808 to 9223372036854775807
       ||*UNSIGNED*: | 0 to 18446744073709551615
       >ex      : BIGINT(255) - 255 bytes max


FLOAT store as string deprecated

| | | |
|---|---|---|
|**DECIMAL**(size, decimal)| - 65 max for size(total number digit) | and 30 max for decimal
>ex : DECIMAL(10,2) - 10 digits max and 2 decimals max 



####  DATE AND TIME DATA TYPES

|*TYPE* | *RANGE*  |
|---|---|
|**DATE** | YYYY-MM-DD|
|**DATETIME** | YYYY-MM-DD HH:MM:SS
|**TIMESTAMP** | YYYY-MM-DD-HH-MM-SS since 1970