SELECT MAX(price) FROM campusx.smartphones_cleaned_v6

-- 
SELECT MIN(ram_capacity) FROM campusx.smartphones_cleaned_v6

-- 
SELECT MAX(price) FROM campusx.smartphones_cleaned_v6
where brand_name = 'samsung'
-- count
SELECT COUNT(*) FROM campusx.smartphones_cleaned_v6
where brand_name = 'apple'

-- 
SELECT COUNT(distinct(processor_brand)) FROM campusx.smartphones_cleaned_v6

-- Standard Deviation
