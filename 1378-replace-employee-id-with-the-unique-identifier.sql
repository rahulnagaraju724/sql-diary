# Write your MySQL query statement below

#1378. Replace Employee ID With The Unique Identifier

select  e.name, euni.unique_id from employees e
left join employeeuni as euni
on e.id=euni.id

#USING(id)