# Write your MySQL query statement below
#1683. Invalid Tweets
select tweet_id from tweets
where char_length(content)>15
#LENGTH(): returns the length of a string (in bytes). So dont use length
#CHAR_LENGTH(): return the length of a string (in characters).
