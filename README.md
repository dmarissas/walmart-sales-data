# Walmart Sales Data Analysis

This project explores Walmart Sales data to understand top-performing branches and products, sales trends across various products, and customer behavior. The goal is to identify opportunities to improve and optimize sales strategies based on the insights gathered. The dataset was sourced from the Kaggle Walmart Sales Forecasting Competition.

## 📊 Project Overview
The main objective of this project is to gain insights into Walmart’s sales data and uncover factors influencing sales at different branches. By analyzing trends and patterns, we can better understand Walmart’s sales dynamics and optimize strategies.

## 📁 Dataset Overview
The dataset contains sales transaction records from three Walmart branches located in Mandalay, Yangon, and Naypyitaw. The data includes 17 columns and 1000 rows, capturing details about invoices, branch locations, customer demographics, products, pricing, and sales metrics.

| Column                  | Description                                    | Data Type          |
|-------------------------|------------------------------------------------|---------------------|
| invoice_id              | Invoice of the sales made                      | `VARCHAR(30)`      |
| branch                  | Branch at which sales were made                | `VARCHAR(5)`       |
| city                    | The location of the branch                     | `VARCHAR(30)`      |
| customer_type           | Type of customer                               | `VARCHAR(30)`      |
| gender                  | Gender of customer making the purchase         | `VARCHAR(10)`      |
| product_line            | Product line of the item sold                  | `VARCHAR(100)`     |
| unit_price              | Price per product                              | `DECIMAL(10, 2)`   |
| quantity                | Quantity sold                                  | `INT`              |
| VAT                     | Tax amount                                     | `FLOAT(6, 4)`      |
| total                   | Total cost of purchase                         | `DECIMAL(10, 2)`   |
| date                    | Purchase date                                  | `DATE`             |
| time                    | Purchase time                                  | `TIMESTAMP`        |
| payment_method          | Payment method                                 | `VARCHAR(30)`      |
| cogs                    | Cost of Goods Sold                             | `DECIMAL(10, 2)`   |
| gross_margin_percentage | Gross margin percentage                        | `FLOAT(11, 9)`     |
| gross_income            | Gross income                                   | `DECIMAL(10, 2)`   |
| rating                  | Customer rating                                | `FLOAT(2, 1)`      |

## 🔍 Steps and Process

1. **Data Wrangling**  
   - Check for NULL values and handle missing data.
   - Load the data into a MySQL database and create tables.
   - Filter columns with null values and verify data integrity.

2. **Feature Engineering**  
   - Add columns like `time_of_day` (e.g., Morning, Afternoon, Evening) to analyze time-based sales patterns.
   - Extract day of the week (`day_name`) to understand weekly sales trends.
   - Extract month (`month_name`) to identify monthly performance variations.

3. **Exploratory Data Analysis (EDA)**  
   - Conduct EDA to answer specific project questions and meet analysis goals.

## 🛠️ Tools and Technologies Used
- **MySQL**: Used for database management, data querying, and processing.

## 📈 Insights and Findings

- **General Questions**
  - Unique cities and branch locations.
- **Product Analysis**
  - Product lines and the most popular products.
  - Revenue distribution by month and product line performance.
  - City with the largest revenue.
  - Analysis of top-performing product lines by VAT, rating, and sales volume.
- **Sales Analysis**
  - Sales trends across different times of the day.
  - Customer type contributing the most to revenue.
  - Cities with the highest tax percentage (VAT).
- **Customer Analysis**
  - Distribution of customer types, gender distribution, and customer ratings across different times and days.

## 🚀 Future Work
Potential enhancements include:
- **Time Series Forecasting**: Build predictive models for monthly or seasonal sales forecasts.
- **Advanced Customer Segmentation**: Use clustering techniques to identify customer segments based on purchasing behavior.
- **Sales Strategy Recommendations**: Generate actionable insights on promotional strategies based on product, location, and customer type.
- **Dashboard Development**: Create an interactive Tableau or Power BI dashboard for real-time insights and reporting.

This analysis provides Walmart with a comprehensive overview of its sales trends and highlights areas for potential growth and optimization.
