
/*
https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Column      Type
N           Integer
P           Integer

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
Sample Input
N       P
1       2   
3       2
6       8
9       8
2       5
8       5
5       null

Sample Output

1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
*/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/

SELECT N,
       CASE
           WHEN P IS NULL THEN 'Root'  -- If the parent is NULL, it's a root node.
           WHEN NOT EXISTS (SELECT 1 FROM BST AS B WHERE B.P = A.N) THEN 'Leaf' -- If there are no rows in BST where the current node is a parent, it's a leaf node.
           ELSE 'Inner' -- Otherwise, it's an inner node.
       END AS NodeType
FROM BST AS A
ORDER BY N;

