-- sort data basis on ppi in decreasing oreder
SELECT model,ROUND(SQRT( (resolution_width * resolution_width + resolution_height * resolution_height)/screen_size))  AS 'PPI' FROM campusx.smartphones_cleaned_v6
ORDER BY PPI DESC
 