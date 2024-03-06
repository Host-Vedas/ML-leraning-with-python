-- 1
CREATE DATABASE campusx
-- 2
create table users(
user_id INTEGER primary KEY auto_increment,
name varchar(255) not null,
email varchar(255) not null,
password varchar(255) not null
)
-- 3
INSERT INTO campusx.users(user_id,name,email,password)
VALUES (null,'nitish','naitish@sir.com','1234')
-- 4
INSERT INTO campusx.users
VALUES (null,'nitish','naitish@sir.com','1234')