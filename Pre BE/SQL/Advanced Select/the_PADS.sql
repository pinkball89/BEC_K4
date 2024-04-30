
/*
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

Input Format

The OCCUPATIONS table is described as follows: 
       OCCUPATIONS
Column           Type
Name            String
Ocuppation      String

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input

An OCCUPATIONS table that contains the following records:

Sample Output

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.
Explanation

The results of the first query are formatted to the problem description's specifications.
The results of the second query are ascendingly ordered first by number of names corresponding to each profession (2<=2<=3<=3), 
and then alphabetically by profession (doctor <= singer, and actor <= professor).
*/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
--The 1st query
SELECT NAME || '(' || SUBSTR(OCCUPATION, 1, 1) || ')' AS Name_With_First_Letter
FROM OCCUPATIONS
ORDER BY NAME;

--The 2nd query
SELECT 'There are a total of ' || COUNT(*) || ' ' || LOWER(OCCUPATION) || 's.' AS Occupation_Count
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), LOWER(OCCUPATION);


/*
Another way: MYSQL

SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')') AS Name_With_First_Letter
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(OCCUPATION), 's.') AS Occupation_Count
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), LOWER(OCCUPATION);
/*






