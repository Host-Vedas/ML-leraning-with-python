-- 1)   By grand and get the count ,average price,max rating,avg screen size,avg battery capacity -->By Animation

-- Count
SELECT brand_name,count(*) AS 'num_phones' FROM campusx.smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY num_phones desc
-- Agerage price
SELECT brand_name,count(*) AS 'num_phones',AVG(price) AS 'Average_Price'
FROM campusx.smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY num_phones desc
-- We are getting value in decimal so round it
SELECT brand_name,count(*) AS 'num_phones',ROUND(AVG(price)) AS 'Average_Price'
FROM campusx.smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY num_phones desc
-- final
SELECT brand_name,count(*) AS 'num_phones',ROUND(AVG(price)) AS 'Average_Price',MAX(rating) AS 'MAX RATING',ROUND(AVG(screen_size),2) AS 'average screen Size',ROUND(AVG(battery_capacity)) AS 'Average battery capacity'
FROM campusx.smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY num_phones desc

-- 2)   By having NFC and get the average price and rating 
SELECT has_nfc,ROUND(AVG(price)) AS 'Average Price',
ROUND(AVG(rating),2) AS 'rating'
FROM campusx.smartphones_cleaned_v6
GROUP BY has_nfc

-- 3)   By extended memory avilable and get average price
SELECT extended_memory_available AS "RAM_PLUS",ROUND(AVG(price)) AS 'Average Price'
FROM campusx.smartphones_cleaned_v6
GROUP BY RAM_PLUS
-- 4)   By the brand and processor brand and get the count of models and the average priamry camera resolution(rear)
SELECT brand_name,processor_brand,
COUNT(model) AS 'No. Of Models',ROUND(AVG(num_rear_cameras)) AS 'No Of Primary Rear Camera'
FROM campusx.smartphones_cleaned_v6
GROUP BY  brand_name,processor_brand
ORDER BY brand_name ASC
-- 5)   top 5 most costly smartphione brand
SELECT brand_name,AVG(price) AS 'price'
FROM campusx.smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY price DESC LIMIT 5
-- 6)   which brand makes smallest screen phone 

-- 7)   avg price of 5g phones and Avg prive of non 5g phones
SELECT has_5g ,AVG(price) AS 'Avg_Price'
FROM campusx.smartphones_cleaned_v6
GROUP BY has_5g


-- 8)   By brand and find the brand with highest numeber of models that have NFC and an IR balaster
SELECT brand_name,
count(*) AS "count"
FROM campusx.smartphones_cleaned_v6
WHERE has_nfc='TRUE' AND has_ir_blaster='TRUE'
GROUP BY brand_name
ORDER BY count DESC


-- 9)   Find all samsung 5g enabled smartphone and find out the avg price for NFC and Non-NFC phones
SELECT has_nfc,has_5g ,AVG(price) AS 'Avg_Price'
FROM campusx.smartphones_cleaned_v6
WHERE brand_name='samsung'
GROUP BY has_nfc,has_5g
