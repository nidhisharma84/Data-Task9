-- =========================================
-- TASK 9: STAR SCHEMA DATA MODELING
-- Dataset: retail_sales_dataset (CSV)
-- Database: SQLite 
-- =========================================

-- =====================
-- DIMENSION TABLES
-- =====================

CREATE TABLE dim_customer (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    region TEXT
);

CREATE TABLE dim_product (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT,
    category TEXT,
    sub_category TEXT
);

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date DATE,
    year INTEGER,
    month INTEGER,
    month_name TEXT,
    quarter TEXT
);

-- =====================
-- FACT TABLE
-- =====================

CREATE TABLE fact_sales (
    sales_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    product_id INTEGER,
    date_id INTEGER,
    sales REAL,
    quantity INTEGER,
    discount REAL,
    profit REAL,
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

-- =====================
-- INDEXES (Performance)
-- =====================

CREATE INDEX idx_fact_customer ON fact_sales(customer_id);
CREATE INDEX idx_fact_product ON fact_sales(product_id);
CREATE INDEX idx_fact_date ON fact_sales(date_id);
