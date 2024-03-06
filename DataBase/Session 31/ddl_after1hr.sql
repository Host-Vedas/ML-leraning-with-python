CREATE TABLE students(
    student_id integer Primary key auto_increment,
    name VARCHAR(50) NOT NULL,
    age integer --check (age > 6 AND age <25)
    CONSTRAINT students_age_check CHECK (age > 6 AND age <25)
)


CREATE TABLE ticket(
    ticket_id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    travel_date DATE DEFAULT CURRENT_DATE --currdate()
)


-- Foreign key
CREATE TABLE customer(
    cid INTEGER PRIMARY KEY auto_increment,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
)
CREATE TABLE order(
    order_id INTEGER PRIMARY KEY auto_increment,
    cid INTEGER NOT NULL,
    ORDER_DATE DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT orders_fk FOREIGN KEY (cid) REFRENCES customer(cid) 
)

-- we cannot delete or update customer table, as order is dependent on customer table
-- we ahve to delete data 1st from order and then from customer
-- It is also type of refrential action

-- In the given conditio there is by default RESTRICT refrential action, which stoip me to update and delete customer
--Insted of RESTRICT if we use CASCADE then when we delete from customer hen automatically it will be deleted from the order too


-- cascade OPERATION
CREATE TABLE order(
    order_id INTEGER PRIMARY KEY auto_increment,
    cid INTEGER NOT NULL,
    ORDER_DATE DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT orders_fk FOREIGN KEY (cid) REFRENCES customer(cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE 
)
CREATE TABLE order(
    order_id INTEGER PRIMARY KEY auto_increment,
    cid INTEGER NOT NULL,
    ORDER_DATE DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT orders_fk FOREIGN KEY (cid) REFRENCES customer(cid)
    ON DELETE SET NULL
    ON UPDATE SET NULL 
)