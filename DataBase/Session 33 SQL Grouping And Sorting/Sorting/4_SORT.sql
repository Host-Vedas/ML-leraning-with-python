-- find the phone with 2nd largest battery capacity
SELECT model,battery_capacity FROM campusx.smartphones_cleaned_v6
ORDER BY battery_capacity LIMIT 1,1 --(x,y)
 
--  indexing start from 0, so x give top x
-- y gives from y to all
-- x= 1 mean top 2, y=1 mean from 2nd of x all