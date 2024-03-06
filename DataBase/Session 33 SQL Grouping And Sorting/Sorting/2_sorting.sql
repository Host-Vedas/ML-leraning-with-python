-- sort by no of cameras in phones
SELECT model,num_front_cameras,num_rear_cameras, num_front_cameras + num_rear_cameras AS 'TOTAL_CAMERA' FROM campusx.smartphones_cleaned_v6
ORDER BY TOTAL_CAMERA DESC