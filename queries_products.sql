-- inserting char into products table--
INSERT INTO products (name, price, can_be_returned)
 VALUES ('chair', 44.00, false);

--inserting stool into products table--
INSERT INTO products (name, price, can_be_returned)
 VALUES ('stool', 25.99, true); 

--inserting table into products--
INSERT INTO products (name, price, can_be_returned)
 VALUES('table', 124.00, false);

--Selecting all data in products--
SELECT *
 FROM products;

--Showing just the name from products--
SELECT name
 FROM products; 

--showing name and price from products--
SELECT name, price
 FROM products;

--inserting computer, $3,000, and true--
INSERT INTO products(name, price, can_be_returned)
 VALUES ('computer', 3000, true); 

--showing only products that can be returned--
SELECT *
 FROM products
WHERE can_be_returned = true;
 
--showing all products witht he price less than 44.00--
SELECT * 
 FROM products
WHERE price < 44.00;

--showing all products where the price is between 22.50 and 99.99--
SELECT *
 FROM products
WHERE price BETWEEN 22.50 and 99.99;

--upding all prices to be reduces by 20--
UPDATE products SET price = price-20;

--REMOVE products priced below 25;
DELETE FROM products WHERE price < 25;

--increasing products price by 20--
UPDATE products SET price = price +20;

--setting all return policies to true--
UPDATE products SET can_be_returned = true;