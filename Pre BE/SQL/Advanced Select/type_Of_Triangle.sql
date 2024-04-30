
/*
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:



Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input



Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle
Explanation

Values in the tuple (20, 20, 23) form an Isosceles triangle, because A = B.
Values in the tuple (20, 20, 20) form an Equilateral triangle, because A = B = C . Values in the tuple (20, 21, 22) form a Scalene triangle, because A # B # C.
Values in the tuple  cannot form a triangle because the combined value of sides  and  is not larger than that of side .
*/

/*
Another way
    SELECT 
CASE
  WHEN A + B <= C or A + C <= B or B + C <= A then "Not A Triangle"
  WHEN A = B and B = C then "Equilateral"
  WHEN A = B or A = C or B = C then "Isosceles"
  else "Scalene"
END AS triangle_sides
FROM TRIANGLES
*/

SELECT 
    CASE WHEN A+B>C THEN
        CASE WHEN A=B AND B=C THEN 'Equilateral'
             WHEN A=B OR A=C OR B=C THEN 'Isosceles' 
        ELSE 'Scalene' END
    ELSE 'Not A Triangle' END
FROM TRIANGLES;
