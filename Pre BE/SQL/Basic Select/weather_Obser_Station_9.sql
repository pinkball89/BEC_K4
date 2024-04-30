
/*
https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
   Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

        STATION
Field           Type
ID              NUMBER
CITY            VARCHAR2(21)
STATE           VARCHAR2(2)
LAT_N          NUMBER
LONG_w          NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT DISTINCT CITY
FROM STATION 
WHERE LOWER(LEFT(CITY, 1)) NOT IN ('u', 'e', 'o', 'a', 'i');

/*
Another way

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');

Another way

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%' OR CITY NOT LIKE 'E%' OR CITY NOT LIKE 'I%' OR CITY NOT LIKE 'O%' OR CITY NOT LIKE 'U%'
   

Another way

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');


*/


