
/*
https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

Input Format

The following tables contain data on the wands in Ollivander's inventory:

Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, 
and power denotes the quality of the wand (the higher the power, the better the wand is). 

Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes whether the wand is good for the dark arts. 
If the value of is_evil is 0, it means that the wand is not evil. The mapping between code and age is one-one, meaning that if there are two pairs, 
(code1, age 1) and (code2, age2), then code1 # code2 and age1 $ age2.

    Wands Table:  
Column          Type
id              Integer
code            Integer
coins_needed    Integer
power           Integer

    Wands_Property Table: 
Column  Type
code    Integer
age     Integer
is_evil Integer

Sample Output

9 45 1647 10
12 17 9897 10
1 20 3688 8
15 40 6018 7
19 20 7651 6
11 40 7587 5
10 20 504 5
18 40 3312 3
20 17 5689 3
5 45 6020 2
14 40 5408 1
Explanation

The data for wands of age 45 (code 1): 
Id  age coins_needed power
5   45  6020            2
9   45  1647            10

The minimum number of galleons needed for wand(age = 45, power = 2) = 6020
The minimum number of galleons needed for wand(age = 45, power = 10) = 1647
*/
/*
MYSQL
*/

SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
INNER JOIN wands_property wp ON w.code = wp.code
WHERE is_evil = 0
    AND w.coins_needed = (
        SELECT MIN(coins_needed)
        FROM wands w1
        JOIN wands_property wp1 ON w1.code = wp1.code
        WHERE w1.power = w.power 
        AND wp1.age = wp.age)
ORDER BY w.power DESC, wp.age DESC;


