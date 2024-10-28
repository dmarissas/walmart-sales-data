-- Business Questions for Exploratory Data Analysis

-- Generic Questions

-- 1. How many unique cities are present in the dataset?
SELECT DISTINCT
    city AS number_of_cities
FROM
    sales;

-- Count the total number of unique cities
SELECT 
    COUNT(DISTINCT city)
FROM
    sales;
-- Answer: The data includes 3 unique cities: Mandalay, Naypyitaw, and Yangon.

-- 2. Which branch is located in each city, and how many branches are in each city?
SELECT DISTINCT city, branch FROM sales;
-- Answer: Each city has one branch: Branch A in Yangon, Branch C in Naypyitaw, and Branch B in Mandalay.

-- Count the number of records for each branch in each city to analyze branch frequency
SELECT city, COUNT(branch) AS total_number_of_branch FROM sales
GROUP BY city
ORDER BY total_number_of_branch DESC;
-- Answer: Branch A in Yangon has 339 records, Branch B in Mandalay has 329 records, and Branch C in Naypyitaw has 327 records.
