#Using cross product
SELECT DISTINCT l1.num AS ConsecutiveNums FROM Logs AS l1, Logs AS l2, Logs AS l3 WHERE l2.id=l1.id+1 AND l3.id=l2.id+1 AND l1.num=l2.num AND l2.num=l3.num;

#using self join twice
SELECT DISTINCT l1.num AS ConsecutiveNums FROM Logs AS l1 JOIN Logs AS l2 ON l2.id=l1.id+1 AND l2.num=l1.num JOIN Logs AS l3 ON l3.id=l1.id+2 AND l3.num=l1.num;
