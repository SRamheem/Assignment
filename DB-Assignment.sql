CREATE TABLE product (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    [DESC] TEXT,
    SKU VARCHAR(255),
    CATEGORY_ID INT,
    INVENTORY_ID INT,
    PRICE DECIMAL(10, 2),
    DISCOUNT_ID INT,
    CREATED_AT TIMESTAMP,
    MODIFIED_AT DATETIME,
    DELETED_AT DATETIME 
);

SELECT*FROM product

--Creating a table for product_category
CREATE TABLE product_category (ID INT PRIMARY KEY, NAME VARCHAR(50), [DESC] TEXT, CREATED_AT TIMESTAMP, MODIFIED_AT DATETIME, DELETED_AT DATETIME);
SELECT*FROM product_category


--creating a table for inventory
CREATE TABLE inventory(id INT PRIMARY KEY, quantity INT, create_at TIMESTAMP, modified_at DATETIME, deleted_at DATETIME);

SELECT*FROM inventory

--Creating table for discount
CREATE TABLE discount (
    id INT PRIMARY KEY,
    [percent] DECIMAL(5,2),
    [DESC] TEXT,
    ACTIV_AT DATETIME,
    CREATED_AT TIMESTAMP,
    MODIFIED_AT DATETIME,
    DELETED_AT DATETIME
);
SELECT*FROM discount

--Creating alter table for product and linking foreign key

ALTER TABLE PRODUCT 
ADD CONSTRAINT fk_product_category 
FOREIGN KEY (category_id)
REFERENCES product_category(id);

ALTER TABLE PRODUCT 
ADD CONSTRAINT fk_inventory 
FOREIGN KEY (inventory_id) REFERENCES inventory(id);  

ALTER TABLE PRODUCT
ADD CONSTRAINT fk_discount 
FOREIGN KEY (discount_id)
REFERENCES discount(id);




