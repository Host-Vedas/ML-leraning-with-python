SELECT * FROM campusx.membership t1
LEFT JOIN campusx.users1 t2
ON t1.user_id = t2.user_id
UNION
SELECT * FROM campusx.membership t1
RIGHT JOIN campusx.users1 t2
ON t1.user_id = t2.user_id




-- OPERQATIONS
-- 
-- UNION
-- UNION  ALL
-- INTERSECT
-- EXCEPT