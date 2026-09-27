# Bis-Sales-Data

A MySQL project combining sales data from 5 countries — Canada, India, the US, the UK, and Nigeria — into a single working dataset, with cleaning, calculated fields, and analysis queries.


## Project Structure

| File | Purpose |
|---|---|
| `01_combine_tables.sql` | Combines the 5 individual country tables into one unified table (`sales data`) using `UNION ALL` |
| `02_data_quality_checks.sql` | Checks for null values across key columns and identifies duplicate transactions |
| `03_calculated_columns.sql` | Adds two derived columns: `Total Amount` (revenue after discount) and `Profit` (revenue minus cost of goods sold) |
| `04_analysis_queries.sql` | Business insight queries — revenue and profit by country, top-selling products, top sales reps, best-performing store locations, and overall summary statistics |


## Key Calculated Fields

- **Total Amount** = `(Price_per_Unit × Quantity_Purchased) − Discount_Applied`
- **Profit** = `Total Amount − (Cost_Price × Quantity_Purchased)`

## Notes

- The `Date` column is stored as text in `MM/DD/YYYY` format rather than a native MySQL `DATE` type, so date filtering uses string matching rather than date functions.
- Data quality checks confirmed row counts, null values across key columns, and duplicate `transaction_id`s before calculated fields were added.

## Tools

- MySQL / MySQL Workbench
