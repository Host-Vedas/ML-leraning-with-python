-- By default join is inner join

-- Uded tables  -->>mambership & users
SELECT * FROM campusx.membership t1
INNER JOIN campusx.users1 t2
ON t1.user_id = t2.user_id