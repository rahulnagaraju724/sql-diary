# Write your MySQL query statement below
#1148. Article Views I

select distinct author_id as id from views
where author_id=viewer_id
order by author_id

# order by id - we can use this as well