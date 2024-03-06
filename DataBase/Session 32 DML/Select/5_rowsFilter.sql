-- get phone named samsung
select * from campusx.smartphones_cleaned_v6
where brand_name = 'samsung'

-- get onlty pone 50k>
select * from campusx.smartphones_cleaned_v6
where price > 50000

-- Between

-- method 1
select * from campusx.smartphones_cleaned_v6
where price > 10000 AND price <20000

-- method 2
select * from campusx.smartphones_cleaned_v6
where price between 10000 AND 20000

-- phone with rathing >80 and price < 25000
select * from campusx.smartphones_cleaned_v6
where price < 15000 AND rating > 80 and processor_brand = 'snapdragon'

-- Order of execution
-- From ,Join, Where, GroupBy, Having select, Distinct, Order_By

-- find brands who sell phones above 5000


select distinct(brand_name) from campusx.smartphones_cleaned_v6
where processor_brand ='snapdragon' or processor_brand = 'exynos' or processor_brand ='bionic'

-- Also can be written as
select * from campusx.smartphones_cleaned_v6
where processor_brand  in ('snapdragon','exynos','bionic')
























