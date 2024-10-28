-- Feature Engineering

-- Create a new database named WalmartSalesData
CREATE DATABASE WalmartSalesData;

-- Create a table named 'sales' with the specified columns and data types
CREATE TABLE sales (
	invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,  -- Unique identifier for each sale
    branch VARCHAR(5) NOT NULL,                    -- Branch code of the sale location
    city VARCHAR(30) NOT NULL,                     -- City of the branch
    customer_type VARCHAR(30) NOT NULL,            -- Type of customer (e.g., Member, Normal)
    gender VARCHAR(10) NOT NULL,                   -- Gender of the customer
    product_line VARCHAR(100) NOT NULL,            -- Category of the product sold
    unit_price DECIMAL(10,2) NOT NULL,             -- Price per unit of the product
    quantity INT NOT NULL,                         -- Quantity of items sold
    VAT FLOAT(6,4) NOT NULL,                       -- VAT applied on the sale
    total DECIMAL(10,2) NOT NULL,                  -- Total amount after VAT
    date DATETIME NOT NULL,                        -- Date and time of the sale
    time TIME NOT NULL,                            -- Time of the sale
    payment_method VARCHAR(15) NOT NULL,           -- Method of payment (e.g., Cash, Credit)
    cogs DECIMAL(10,2) NOT NULL,                   -- Cost of goods sold
    gross_margin_percentage FLOAT(11,9),           -- Gross margin percentage
    gross_income DECIMAL(12,4),                    -- Gross income for the sale
    rating FLOAT(2,1)                              -- Customer rating for the sale
);

-- Select all records from the sales table
SELECT * FROM sales;

-- FEATURE ENGINEERING --
-- 1. Add a new column named time_of_day to categorize sales time
ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);

-- Update time_of_day based on time column to specify Morning, Afternoon, or Evening
UPDATE sales 
SET 
    time_of_day = (CASE
        WHEN time BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
        WHEN time BETWEEN '12:01:00' AND '16:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END);

-- Verify changes to time_of_day
SELECT 
    *
FROM
    sales;

-- 2. Add a new column named day_name to store the weekday name
ALTER TABLE sales ADD COLUMN day_name VARCHAR(20);

-- Update day_name with the weekday name derived from the date column
UPDATE sales 
SET 
    day_name = DAYNAME(date);

-- Verify changes to day_name
SELECT 
    *
FROM
    sales;

-- 3. Add a new column named month_name to store the month name
ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);

-- Update month_name with the month name derived from the date column
UPDATE sales 
SET 
    month_name = MONTHNAME(date);

-- Verify changes to month_name
SELECT 
    *
FROM
    sales;
