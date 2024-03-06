DELETE FROM campusx.smartphones_cleaned_v6
WHERE price > 200000

-- 
DELETE FROM campusx.smartphones_cleaned_v6
WHERE battery_capacity > 7000


-- 
DELETE FROM campusx.smartphones_cleaned_v6
WHERE primary_camera_rear > 150 AND brand_name != 'samsung'
