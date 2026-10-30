# AgriFlow Version 2 | SQL Server Analysis
This version extends the AgriFlow portfolio project by using SQL Server to prepare and analyse the synthetic data behind the original Power BI dashboard.

The focus is on developing practical T-SQL skills through database setup, data cleaning and business analysis.

**Status:** In development — scripts 01–14 completed.

## Tools
- Microsoft Excel
- Microsoft SQL Server 2025
- SQL Server Management Studio (SSMS)
- T-SQL

## Current Progress
The first 14 scripts cover:
- Creating the `AgriFlow` database.
- Inspecting imported staging data.
- Creating and loading product, supplier, facility and transporter tables.
- Defining primary keys and appropriate data types.
- Cleaning text using `TRIM`.
- Handling decimal separators using `REPLACE`.
- Converting imported values using `TRY_CONVERT`.
- Filtering and sorting records.
- Summarising suppliers using `GROUP BY`, `COUNT` and `HAVING`.
- Categorising supplier partnerships using `CASE`.
- Calculating facility capacity per operating hour, with `NULLIF` to handle division by zero.

## SQL Scripts

Scripts are stored in the `sql/` folder.

| Script | Purpose |
|---|---|
| `01_create_database.sql` | Create and select the AgriFlow database |
| `02_check_product_import.sql` | Preview and count imported product records |
| `03_preview_product_cleaning.sql` | Preview conversion of product quality thresholds |
| `04_create_and_load_dim_product.sql` | Create and populate the product table |
| `05_basic_product_queries.sql` | Filter products by grade and quality thresholds |
| `06_check_supplier_import.sql` | Preview and count imported supplier records |
| `07_create_and_load_dim_supplier.sql` | Create and populate the supplier table |
| `08_supplier_summary_queries.sql` | Summarise suppliers by province and status |
| `09_supplier_case_queries.sql` | Group suppliers by partnership start year |
| `10_check_facility_import.sql` | Inspect facility data and correct its staging table name |
| `11_create_and_load_dim_facility.sql` | Create and populate the facility table |
| `12_facility_capacity_queries.sql` | Calculate capacity per operating hour |
| `13_check_transporter_import.sql` | List database tables to investigate the transporter import |
| `14_create_and_load_dim_transporter.sql` | Create and populate the transporter table |

## Setup and Execution
1. Open SSMS and connect to your SQL Server instance.
2. Run `01_create_database.sql`.
3. Export the relevant Excel sheets as CSV files and import them into the `AgriFlow` database using the SSMS Import Flat File wizard.
4. Use these staging table names:
   - `dbo.stg_DimProduct`
   - `dbo.stg_DimSupplier`
   - `dbo.stg_DimFacility`
   - `dbo.stg_DimTransporter`
5. Run the remaining scripts in numbered order, importing each dataset before running its associated scripts.

The CSV imports are manual steps; the SQL scripts do not create or load the staging tables.

### Execution Notes
Script 10 records a correction made during development: the facility staging table was initially imported as `dbo.stg_DimFacilit`. If your table is already named `dbo.stg_DimFacility`, update the inspection queries to use that name and skip the rename command.

The table creation and loading scripts are intended for an initial run. Running them again against populated tables can cause existing-table or duplicate-primary-key errors.

`TRY_CONVERT` returns `NULL` when a conversion fails. Review invalid source values before loading them into final columns defined as `NOT NULL`.

## Next Steps
- Import and prepare delivery data.
- Check for missing values, duplicates and unmatched identifiers.
- Define relationships between delivery and reference tables.
- Use joins and aggregations to investigate delivery performance and quality results.
- Document business findings and validation checks.

## Relationship to Version 1
Version 1 contains the completed Excel-based Power BI dashboard. Version 2 focuses on preparing and analysing the same source data in SQL Server.

## Data
AgriFlow uses synthetic maize supply chain data for learning and portfolio demonstration.
