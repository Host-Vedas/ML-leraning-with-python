ALTER TABLE customer ADD COLUMN password VARCHAR(255) NOT NULL


ALTER TABLE customer ADD COLUMN lastname VARCHAR(255) NOT NULL AFTER name --ASSIGNING POSITION

-- ADDING MULTIPLE COLUMN

ALTER TABLE customers
ADD COLUMN pan_number VARCHAR(255) AFTER lastname
ADD COLUMN joining_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP


-- dELETE COLUMN
ALTER TABLE customers DROP COLUMN pan_number

-- DELETE MULTIPLE COLUMN AT ONCE

ALTER TABLE customers
DROP COLUMN password
DROP COLUMN joining_date


ALTER TABLE customers
MODIFY COLUMN surname INTEGER auto_increment

ALTER TABLE customers MODIFY COLUMN surname INTEGER auto_increment