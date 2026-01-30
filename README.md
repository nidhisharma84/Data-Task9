# Task 9 – SQL Star Schema Data Modeling

## Objective
Build a Star Schema data warehouse model using a retail sales dataset to support BI reporting and analytics.

## Dataset
Retail Sales Dataset (CSV)

## Schema Design
- Fact Table: fact_sales
- Dimension Tables:
  - dim_customer
  - dim_product
  - dim_date

## Why Star Schema?
- Simple design
- Faster query performance
- Optimized for analytics and reporting

## Files Included
- task9_star_schema.sql → Table creation + indexes
- analysis_outputs.csv → Aggregated business insights
- star_schema_diagram.txt → Logical schema diagram

## Sample Analytics
- Total sales by region
- Total sales by product category
- Monthly sales trend

## Tools Used
- SQLite / DB Browser
- GitHub
- CSV dataset

## Key Learnings
- Fact vs Dimension tables
- Use of surrogate keys
- Indexing for performance
- Data validation and integrity

## Author
Sneha Singh
