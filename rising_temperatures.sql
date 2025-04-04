# Write your MySQL query statement below

SELECT w.id
FROM Weather w
JOIN Weather w2 ON DATEDIFF(w.recordDate, w2.recordDate) = 1    # self join with DATEDIFF function
WHERE w.temperature > w2.temperature;