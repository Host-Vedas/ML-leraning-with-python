-- Concating same table
-- FOR CONMPARISION IN THE SAME TABLE

SELECT * FROM campusx.users1 t1
JOIN campusx.users1 t2
ON t1.emergency_contact = t2.user_id
