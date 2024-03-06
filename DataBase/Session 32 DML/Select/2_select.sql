-- 1
SELECT * FROM campusx.users WHERE 1
-- 2
SELECT * FROM campusx.smartphone WHERE 1
-- 3
SELECT model,price,rating FROM campusx.smartphones_cleaned_v6 WHERE 1
-- 4 we can make random column too
SELECT model,battery_capacity,os FROM campusx.smartphones_cleaned_v6;
-- 5 change name of column --Alias
SELECT battery_capacity As 'battery[mAh]',os AS 'Opearting System',model FROM campusx.smartphones_cleaned_v6;
-- 6 formula
SELECT model,
SQRT(resolution_width *resolution_width + resolution_height *resolution_width )/screen_size As PPI
 FROM campusx.smartphones_cleaned_v6; 