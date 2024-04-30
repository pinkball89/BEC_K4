
/*
https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
Manhattan distance
(definition)

Definition: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.

Generalization (I am a kind of ...)
Lm distance.

See also Euclidean distance, Hamming distance.

Note: This is easily generalized to higher dimensions. Manhattan distance is often used in integrated circuits where wires only run parallel to the X or Y axis. See links at Lm distance for more detail.

Also known as rectilinear distance, Minkowski's L1 distance, taxi cab metric, or city block distance.

Hamming distance can be seen as Manhattan distance between bit vectors.

Author: PEB https://xlinux.nist.gov/dads/HTML/manhattanDistance.html

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
SELECT ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)), 4) AS Manhattan_Distance
FROM STATION;
