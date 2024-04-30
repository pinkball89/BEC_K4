
/*
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane.
where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

https://en.wikipedia.org/wiki/Euclidean_distance

Input Format

The STATION table is described as follows:
The STATION table is described as follows:

        STATION
Field           Type
ID              NUMBER
CITY            VARCHAR2(21)
STATE           VARCHAR2(2)
LAT_N           NUMBER
LONG_w          NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
/*
MYSQL
*/
SELECT ROUND(SQRT(POW(MAX(LAT_N) - MIN(LAT_N), 2) + POW(MAX(LONG_W) - MIN(LONG_W), 2)), 4) AS Euclidean_Distance
FROM STATION;

