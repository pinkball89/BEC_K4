
/*
https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

Input Format

The following tables contain challenge data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 
Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge.

Sample Output 0

21283 Angela 6
88255 Patrick 5
96196 Lisa 1
*/
/*
MYSQL
*/

SELECT h.hacker_id, h.name, COUNT(*) AS c_cnt   -- c_cnt = the number of challenges completed by each student
FROM Hackers h
INNER JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING c_cnt = (        -- Students with same c_cnt, if their c_cnt = the maximum of c_cnt, include them 
  SELECT MAX(t1.cnt)
  FROM (
	  SELECT hacker_id, COUNT(*) as cnt
	  FROM Challenges
	  GROUP BY hacker_id
	) t1
      	)
OR c_cnt IN (     -- Students with same c_cnt, if their c_cnt != the maximum of c_cnt, exclude them 
  SELECT t2.cnt
  FROM (
	  SELECT hacker_id, COUNT(*) as cnt
	  FROM Challenges
	  GROUP BY hacker_id
        ) t2
  GROUP BY t2.cnt
  HAVING COUNT(t2.cnt) = 1
  )
ORDER BY c_cnt DESC, h.hacker_id;


