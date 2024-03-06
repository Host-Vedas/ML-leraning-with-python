-- find top 5 samsung phone with biggest screen size
SELECT * FROM campusx.smartphones_cleaned_v6 WHERE brand_name ='samsung'
ORDER BY screen_size DESC
-- 
SELECT model,screen_size FROM campusx.smartphones_cleaned_v6 WHERE brand_name ='samsung'
ORDER BY screen_size DESC
-- 
SELECT model,screen_size FROM campusx.smartphones_cleaned_v6 WHERE brand_name ='samsung'
ORDER BY screen_size DESC LIMIT 10
-- LIMIT IS SIMILAR TO HEAD IN PANDA