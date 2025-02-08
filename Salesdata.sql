SET SQL_SAFE_UPDATES = 0;
UPDATE salesdata
SET CustomerID = 'GUEST'
WHERE CustomerID = '' OR CustomerID = ' ';
UPDATE salesdata
SET WarehouseLocation = 'MAIN' 
WHERE WarehouseLocation = '' OR WarehouseLocation = ' ';
SELECT * FROM salesdata WHERE Quantity = '' OR Quantity = ' ';
SELECT * FROM salesdata WHERE Discount = '' OR Discount = ' ';
SELECT * FROM salesdata WHERE InvoiceNo = '' OR InvoiceNo = ' ';
SELECT * FROM salesdata WHERE ShippingCost = '' OR ShippingCost = ' ';
DELETE FROM salesdata WHERE Quantity < 0;
ALTER TABLE salesdata 
MODIFY Total FLOAT;
ALTER TABLE salesdata 
ADD NetTotal FLOAT;
UPDATE salesdata
SET Total = Quantity * (UnitPrice - Discount);
UPDATE salesdata
SET NetTotal = Total - ShippingCost;
CREATE TABLE electronics_sales AS
SELECT *
FROM salesdata
WHERE Category = 'Electronics';
CREATE TABLE apparel_sales AS
SELECT *
FROM salesdata
WHERE Category = 'Apparel';
CREATE TABLE Accessories_sales AS
SELECT *
FROM salesdata
WHERE Category = 'Accessories';
CREATE TABLE Stationery_sales AS
SELECT *
FROM salesdata
WHERE Category = 'Stationery';
CREATE TABLE Furniture_sales AS
SELECT *
FROM salesdata
WHERE Category = 'Furniture';




-- SELECT * FROM salesdata;

