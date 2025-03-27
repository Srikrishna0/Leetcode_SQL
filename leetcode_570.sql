# Write your MySQL query statement below

SELECT e.name
FROM employee e
WHERE (
    SELECT COUNT(*)
    FROM employee e2
    WHERE e2.managerId = e.id
) >= 5;