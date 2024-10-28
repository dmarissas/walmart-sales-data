-- Business Questions for Exploratory Data Analysis

-- Sales Questions

-- 1. What is the total number of sales by time of day and day name?
SELECT 
    time_of_day, day_name, COUNT(*) AS total_sales
FROM
    sales
GROUP BY time_of_day, day_name
ORDER BY total_sales DESC;
-- Answer: The highest number of sales occurred on Saturday evening with 81 total sales, while the lowest number of sales was on Monday morning.

-- 2. Which customer type contributes the most to revenue?
SELECT 
    customer_type, SUM(total)
FROM
    sales
GROUP BY customer_type
ORDER BY SUM(total) DESC;
-- Answer: Member customers generate the most revenue.

-- 3. Which city has the largest VAT?
SELECT 
    city, MAX(VAT)
FROM
    sales
GROUP BY city
ORDER BY MAX(VAT) DESC;
-- Answer: Naypyitaw has the largest VAT at 49.65.

-- 4. What is the average VAT paid by customer type?
SELECT 
    customer_type, AVG(VAT)
FROM
    sales
GROUP BY customer_type
ORDER BY SUM(VAT) DESC;
-- Answer: Member customers pay the most in VAT on average.
