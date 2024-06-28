# Write your MySQL query statement below
#197. Rising Temperature
select w1.id as Id from weather w1
join weather w2
on w1.temperature>w2.temperature
where w1.recordDate=DATE_ADD(w2.recordDate,INTERVAL 1 DAY)

SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature;

SELECT w2.id
FROM Weather w1
join Weather w2
ON DATEDIFF (w1.recordDate ,w2.recordDate ) = -1
AND w2.temperature>w1.temperature   

# 1.
SELECT w2.id from Weather w1,Weather w2
WHERE datediff(w2.recordDate, w1.recordDate) = 1 AND w2.temperature > w1.temperature;
// where datediff -> date difference b/w two dates
# 2.
SELECT w2.id from Weather w1, Weather w2
WHERE w2.temperature > w1.temperature AND
subdate(w2.recordDate, 1) = w1.recordDate;
// where subdate -> subtract date 

#3.
SELECT w2.id from Weather w1 JOIN Weather w2
ON w2.temperature > w1.temperature AND
datediff(w2.recordDate,w1.recordDate) = 1;