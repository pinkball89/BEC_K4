
/*
https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true
You are given a table, Functions, containing two columns: X and Y.
Column  Type
X       Integer
Y       Integer

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

Sample Input

Sample Output

20 20
20 21
22 23
*/
/*
MYSQL
*/

SELECT f1.X, f1.Y
FROM Functions f1, Functions f2
WHERE f1.X = f2.Y AND f2.X = f1.Y
GROUP BY f1.X, f1.Y
HAVING COUNT(f1.X)>1 OR f1.X<f1.Y
ORDER BY f1.X;


