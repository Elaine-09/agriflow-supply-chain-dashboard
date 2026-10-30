# AgriFlow | Supply Chain Analytics
AgriFlow is a portfolio project exploring maize deliveries, mill performance and quality-testing data. It demonstrates how the same business data can be prepared, analysed and presented using different tools and workflows.

The project starts with an Excel-based Power BI dashboard and is being extended into a SQL Server-backed reporting solution. This allows me to demonstrate both approaches and explain where data preparation, calculations and reporting take place in each.

## Version 1: Excel → Power BI
The original dashboard uses Excel source data to explore supply chain performance through interactive Power BI reports.

**Status: Completed**
**Technology stack:** Microsoft Excel, Power BI Desktop, Power Query and DAX.

This version demonstrates importing Excel data, preparing it for analysis, modelling relationships and presenting business metrics through visualisations and filters.

Version 2: Excel → SQL Server Analysis

The second version extends AgriFlow into a SQL analysis project, using the same synthetic source data to practise database setup, data preparation and business reporting.

Status: In development — SQL scripts 01–14 completed.
Technology stack: Microsoft Excel, Microsoft SQL Server 2025, SQL Server Management Studio (SSMS) and T-SQL.

Work completed so far includes:
- Creating the AgriFlow database.
- Setting up staging and final tables for product, supplier, facility and transporter data.
- Defining data types and primary keys.
- Importing, checking and preparing reference data.
- Writing summary queries and using CASE expressions to categorise results.
- Exploring facility capacity through SQL calculations.

The next stage focuses on importing delivery data, checking data quality and writing queries to investigate delivery performance, quality results and operational trends.

Version 2 focuses on SQL analysis, with the completed Version 1 Power BI dashboard providing the existing visual reporting example.
SQL scripts are organised in numbered order under version-2-sql-analysis/sql/, with documentation added as the implementation progresses.

## What this project demonstrates
- Working with the same business data through different technical workflows.
- Understanding how data moves from source files to an analytical report.
- Applying SQL to business questions, from basic queries to advanced analysis.
- Choosing where transformations and calculations belong.
- Checking results for accuracy and documenting the implementation.

The repository will document the source data, setup steps, transformation logic, SQL queries and dashboard outputs so that the work can be understood and reproduced.

## Data
AgriFlow uses synthetic maize supply chain data for learning and portfolio demonstration.

