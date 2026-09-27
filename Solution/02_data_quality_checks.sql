SELECT 
  SUM(CASE WHEN Quantity_Purchased IS NULL THEN 1 ELSE 0 END) AS qty_nulls,
  SUM(CASE WHEN Price_per_Unit IS NULL THEN 1 ELSE 0 END) AS price_nulls,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
      SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS category_nulls,
        SUM(CASE WHEN Cost_Price IS NULL THEN 1 ELSE 0 END) AS costprice_nulls,
  COUNT(*) AS total_rows
FROM `sales data`;


SELECT transaction_id, count(*)
FROM `sales data`
Group by transaction_id
having count(*)>1;

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
