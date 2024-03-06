-- Unique smartphone brand
SELECT distinct(brand_name) As 'All Brands' FROM campusx.smartphones_cleaned_v6;

-- Unique Processor Brand
SELECT distinct(processor_brand) As 'All Processor' FROM campusx.smartphones_cleaned_v6;

-- Distinct Combination
SELECT distinct brand_name,processor_brand FROM campusx.smartphones_cleaned_v6;

