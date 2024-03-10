# DB-ASSIGNMENT

1) The "Product" entity is related to the "Product_Category" entity though a one-to -many relationship. This is indicated by the line connecting the two entities, with the "Product" entity having a single line(indicating 'one') and the "Product_Category" entity having a crow's foot (indicating 'many'). This means that one product category can have many products associated with it, but each product can only belong to one product category.

The foreign key in the "Product" entity is "category_id" which references the primary key "id" in the "Product_Category" entity. This foreign key is used to link each product to its respective category.



2) - Foreign Key:

This is done by altering the "Product" table to add a foreign key constraints. The SQL command might look like this: 'ALTER TABLE Product ADD CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES Product_ Category(id);


- Primary key:

The primary key is usually defined during the creation of the "Product_Category" table. The SQL command might look like this: CREATE Product_Category (id INT PRIMARY KEY,..);


- NOT NULL Constraints on FK:

This is done by altering the "Product" table to add a NOT NULL constraint. 
The SQL command might look like : 'ALTER TABLE Product MODIFY category_id INT NOT NULL;

- CASCADING DELETE OR UPDATE:

This is done by specifying the cascading rules in the foreign key constraint. The SQL command might look like this: 'ALTER TABLE Product ADD CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES Product_Category(id) ON DELETE CASCADE ON UPDATE CASCADE;
