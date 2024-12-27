# Walmart Data Analysis: End-to-End SQL + Python Project  

This project is an end-to-end data analysis solution aimed at extracting critical business insights from Walmart sales data. By combining Python and SQL, the project focuses on data cleaning, feature engineering, and complex query execution to answer key business questions and inform decision-making.  

## Project Overview  
The goal of this project is to analyze Walmart sales data and extract actionable insights. Key activities include:  
- Data cleaning and preprocessing using Python.  
- Feature engineering to enhance the dataset for analysis.  
- SQL-based analysis to solve business questions related to revenue, sales trends, and customer behavior.  

## Tools and Technologies  
- **Python**: Data cleaning and preprocessing (e.g., handling duplicates, missing values, and data types).  
- **SQL**: Advanced querying to analyze sales data and answer critical business questions.  
- **Dataset**: Sourced from Kaggle.  

## Key Steps  
### 1. Data Cleaning  
- Removed duplicate entries to ensure data integrity.  
- Handled missing values appropriately (dropped or filled based on significance).  
- Ensured consistent data types for analysis (e.g., converting dates to `datetime` and prices to `float`).  
- Formatted currency data for accurate processing.  

### 2. Feature Engineering  
- Created a new column: **Total Amount** (calculated as `unit_price * quantity`).  
- Enhanced the dataset to streamline SQL aggregation and analysis tasks.  

### 3. SQL Analysis  
Performed in-depth analysis to answer key business questions:  
- Revenue trends across branches and product categories.  
- Identification of best-selling product categories.  
- Analysis of sales performance by time, city, and payment method.  
- Exploration of customer buying patterns and peak sales periods.  
- Profit margin analysis by branch and category.

## Business Problems Solved  
1. **Analyze Payment Methods and Sales**: Identified customer preferences by determining the number of transactions and items sold for each payment method.  
2. **Identify the Highest-Rated Category in Each Branch**: Analyzed category ratings to highlight branch-specific popular categories.  
3. **Determine the Busiest Day for Each Branch**: Optimized staffing and inventory management by identifying peak transaction days.  
4. **Calculate Total Quantity Sold by Payment Method**: Tracked sales volume by payment type to understand purchasing habits.  
5. **Analyze Category Ratings by City**: Examined average, minimum, and maximum ratings to guide regional promotions.  
6. **Calculate Total Profit by Category**: Ranked categories by profitability to focus on high-profit products.  
7. **Determine the Most Common Payment Method per Branch**: Identified branch-specific payment preferences for streamlined processing.  
8. **Analyze Sales Shifts Throughout the Day**: Evaluated transactions by time of day (Morning, Afternoon, Evening) for better staff and stock scheduling.  
9. **Identify Branches with Highest Revenue Decline Year-Over-Year**: Investigated branches with declining revenue for targeted strategies to boost sales.  

## Key Findings  
- **Revenue Trends**: Clear identification of top-performing branches and product categories.  
- **Customer Insights**: Patterns in buying behavior by city, payment method, and time.  
- **Profit Margins**: Analysis of margins by category to identify areas for improvement.

## Conclusion
This project provides actionable insights into Walmart sales data, helping inform business decisions related to revenue optimization, customer targeting, and inventory management.
