# Write your MySQL query statement below
#595. Big Countries
select name, population, area from world
where area >= 3000000 or population >= 25000000
