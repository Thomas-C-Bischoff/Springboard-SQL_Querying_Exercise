-- Comments in SQL Start with dash-dash --

products_db=# INSERT INTO products
products_db-# (name, price, can_be_returned)
products_db-# VALUES
products_db-# ('chair', 44.00, 'f');
INSERT 0 1
products_db=# INSERT INTO products
products_db-# (name, price, can_be_returned)
products_db-# VALUES
products_db-# ('stool', 25.99, 't');
INSERT 0 1
products_db=# INSERT INTO products
products_db-# (name, price, can_be_returned)
products_db-# VALUES
products_db-# ('table', 124.00, 'f');
INSERT 0 1
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)

products_db=# SELECT name FROM products;
 name
-------
 chair
 stool
 table
(3 rows)

products_db=# SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124
(3 rows)

products_db=# INSERT INTO products
products_db-# (name, price, can_be_returned)
products_db-# VALUES
products_db-# ('hammock', 99.00, 't');
INSERT 0 1
products_db=# SELECT * FROM products WHERE can_be_returned;
 id |  name   | price | can_be_returned
----+---------+-------+-----------------
  2 | stool   | 25.99 | t
  4 | hammock |    99 | t
(2 rows)

products_db=# SELECT * FROM products WHERE price < 44.00;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  2 | stool | 25.99 | t
(1 row)

products_db=# SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;
 id |  name   | price | can_be_returned
----+---------+-------+-----------------
  1 | chair   |    44 | f
  2 | stool   | 25.99 | t
  4 | hammock |    99 | t
(3 rows)

products_db=# UPDATE products SET price = price - 20;
UPDATE 4
products_db=# DELETE FROM products WHERE price < 25;
DELETE 2
products_db=# UPDATE products SET price = price + 20;
UPDATE 2
products_db=# UPDATE products SET can_be_returned = 't';
UPDATE 2