#   SALES REVENUE & PROFIT BY COUNTRY
SELECT 
    `country`,
    SUM(`Total Amount`) AS `Total Revenue`,
    SUM(`Profit`) AS `Total Profit`
FROM
    `sales data`
GROUP BY `country`
order by `Total Revenue` desc;


#  TOP 3 BEST SELLING PRODUCTS
Select `Product_name`,
sum(`Quantity_Purchased`) AS `Total Units Sold`
from `sales data`
Group by Product_Name
order by `Total Units Sold` Desc
limit 3;

# BEST SALE REPRESENTATIVES

SELECT `Sales_Rep`,
sum(`Total Amount`) AS `Total Sales`
from `sales data`
Group by `Sales_Rep`
order by `Total Sales` desc
Limit 5;

# STORE LOCATION WITH THE HIGHEST SALE
SELECT `Store_Location`,
sum(`Total Amount`) AS `Total Sales`,
sum(`Profit`) AS `Total Profit`
from `sales data`
Group by `Store_Location`
order by `Total Sales` desc
Limit 5;

# KEY SALES AND PROFIT INSIGHTS

SELECT 
    MIN(`Total Amount`) AS `Min Sale Value`,
    MAX(`Total Amount`) AS `Max Sale Value`,
    AVG(`Total Amount`) AS `Avg Sale Value`,
    SUM(`Total Amount`) AS `Total Sale Value`,
    MIN(`Profit`) AS `Min Profit`,
    MAX(`Profit`) AS `Max Profit`,
    AVG(`Profit`) AS `Avg Profit`,
    SUM(`Profit`) AS `Total Profit`
FROM
    `sales data`;