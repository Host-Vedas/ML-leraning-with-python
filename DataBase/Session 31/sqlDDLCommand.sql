CREATE DATABASE database_name
CREATE DATABASE IF NOT EXISTS database_name
DROP DATABASE database-name
DROP DATABASE IF NOT EXISTS database-name



	k
-- TRANCUTE TABLE: to delete all data

TRUNCATE TABLE users
DROP TABALE IF EXISTS users

CREATE TABLE users1(
-- column_name data_Type CONSTRAIN
    id integer,
    name varchar(255),
    email varchar(255),
    CONSTRAINT users_id_unique UNIQUE(email)
    )

-- Data integrety:
-- Transactions : A sequence of database operatiions that are treated as a single unit of work

-- Constraions:
-- 	1. Unique
-- 	2. Not Null
-- 	3. Primary key
-- 	4. Auto Increment
-- 	5. Check
-- 	6. Default
-- 	7. Foreign key
-- Refrential Actions:
-- 	1. RESTRICT
-- 	2. CASCADE
-- 	3. SET NULL
-- SET DEFAULT
