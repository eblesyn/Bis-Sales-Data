Alter table `sales data` add
column `Total Amount` Numeric (10,2);


SET SQL_SAFE_UPDATES = 0;

UPDATE `sales data` 
SET 
    `Total Amount` = (`Price_per_Unit` * `Quantity_Purchased`) - `Discount_Applied`;


Alter table `sales data` add
column `Profit` Numeric (10,2);

SET SQL_SAFE_UPDATES = 0;

UPDATE `sales data` 
SET 
    `Profit` = `Total Amount` - (`Cost_Price` * `Quantity_Purchased`);