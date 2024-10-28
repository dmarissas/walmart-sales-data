-- Business Questions for Exploratory Data Analysis

-- Customer Questions

-- 1. How many unique customer types are present in the dataset?
SELECT 
    COUNT(DISTINCT (customer_type))
FROM
    sales;
-- Answer: There are 2 unique customer types: "Member" and "Normal".

-- 2. How many unique payment methods are available?
SELECT 
    COUNT(DISTINCT (payment_method))
FROM
    sales;
-- Answer: There are 3 unique payment methods available.

-- 3. What is the distribution of customer types?
SELECT 
    customer_type, COUNT(customer_type)
FROM
    sales
GROUP BY customer_type
ORDER BY COUNT(customer_type) DESC;
-- Answer: The most common customer type is "Member".

-- 4. Which customer type generates the most revenue?
SELECT 
    customer_type, SUM(total)
FROM
    sales
GROUP BY customer_type
ORDER BY SUM(total) DESC;
-- Answer: The "Member" customer type generates the highest total revenue.

-- 5. What is the gender distribution among customers?
SELECT 
    gender, COUNT(gender)
FROM
    sales
GROUP BY gender
ORDER BY COUNT(gender) DESC;
-- Answer: The majority of customers are male.

-- 6. How does the gender distribution vary by branch?
SELECT 
    branch, gender, COUNT(gender)
FROM
    sales
GROUP BY branch, gender
ORDER BY branch;
-- Answer: Branches A and B have more male customers, while Branch C has a higher female customer count.

-- 7. At what time of day do customers provide the most ratings?
SELECT 
    time_of_day, COUNT(rating)
FROM
    sales
GROUP BY time_of_day
ORDER BY COUNT(rating) DESC;
-- Answer: Customers give the most ratings in the evening.

-- 8. How do ratings vary by branch and time of day?
SELECT 
    branch, time_of_day, COUNT(rating)
FROM
    sales
GROUP BY branch, time_of_day
ORDER BY branch, COUNT(rating) DESC;
-- Answer: Customers in all branches (A, B, and C) give the most ratings in the evening.

-- 9. What day of the week has the best average ratings?
SELECT 
    day_name, AVG(rating)
FROM
    sales
GROUP BY day_name
ORDER BY AVG(rating) DESC;
-- Answer: Monday has the highest average ratings.

-- 10. How does the average rating vary by branch and day of the week?
SELECT 
    branch, day_name, AVG(rating)
FROM
    sales
GROUP BY branch, day_name
ORDER BY branch, AVG(rating) DESC;
-- Answer: In Branch A, the best average rating occurs on Friday; in Branch B, it is Monday; and in Branch C, it is Saturday.
