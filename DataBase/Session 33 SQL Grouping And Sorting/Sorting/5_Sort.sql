-- find the worst rated apple phone
SELECT model,rating FROM campusx.smartphones_cleaned_v6 where brand_name='apple'
ORDER BY rating ASC LIMIT 1

-- Q^6 Sort phones alpabetacally and then on the basis of rating in descending order
SELECT * FROM campusx.smartphones_cleaned_v6
ORDER BY brand_name ASC, rating DESC

-- Q^7 Sort phones alpabetacally and then on the basis of price in ascending order
SELECT * FROM campusx.smartphones_cleaned_v6
ORDER BY brand_name ASC, price ASC
    -- give only model_name,price,rating

