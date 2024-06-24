i# Write your MySQL query statement below
#584. Find Customer Referee
# Be careful with null values
select name from customer
where referee_id!=2 or referee_id is null

SELECT
    name
FROM
    Customer
	
# SOLUTION 1  - MOST EFFICIENT 
WHERE 
    IFNULL(referee_id,0) <> 2;
    
#SOLUTOIN 2    
WHERE
    referee_id != 2 OR referee_id is NULL

#SOLUTION 3   
WHERE
    COALESCE(referee_id, 0) <> 2

#===========================================
    
#SOLUTION 4  nested query 
SELECT  
    name
FROM 
    Customer
WHERE 
    id NOT IN
        (
        SELECT id
        FROM Customer
        WHERE referee_id = 2
        )
