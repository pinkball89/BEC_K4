
/*
https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

        CITY

FieLd           Type
ID              NUMBER
NAME            VARCHAR2(17)
COUNTRYCODE     VARCHAR2(3)
DISTRICT        VARCHAR2(20)
POPULATION      NUMBER

        COUNTRY
Field           Type
CODE            VARCHAR2(3)
NAME            VARCHAR2(44)
CONTINENT       VARCHAR2(13)
REGION          VARCHAR2(25)
SURACEAREA      NUMBER
INDEPYEAR       VARCHAR2(5)
POPULATION      NUMBER
LIFEEXPECTANCY  VARCHAR2(4)
GNP             NUMBER
GNPOLD          VARCHAR2(9)
LOCALNAME       VARCHAR2(44)
GOVERNMENTFORM  VARCHAR2(44)
HEADOFSTATE     VARCHAR2(32)
CAPITAL         VARCHAR2(4)
CODE2           VARCHAR2(2)
*/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT SUM(CITY.Population) AS Total_Population
FROM CITY
INNER JOIN COUNTRY 
        ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Asia';
