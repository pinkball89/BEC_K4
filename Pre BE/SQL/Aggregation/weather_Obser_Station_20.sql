
/*
https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

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

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS num,
        COUNT(*) OVER () AS count
    FROM STATION
) t
WHERE (count % 2 = 0 AND t.num IN (count/2, count/2+1)) OR t.num = (count+1)/2;

/*
Another way

SELECT ROUND(MEDIAN(LAT_N), 4) AS Median_Latitude
FROM STATION;

Another way in mYSQL server

SELECT 
TOP 1 CAST(
  PERCENTILE_CONT(0.5) 
  WITHIN GROUP (ORDER BY LAT_N) OVER() AS DECIMAL(10,4))
FROM STATION;

*/


