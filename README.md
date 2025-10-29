
## 🧾 Sales Data Analysis Dashboard

📊 Project Overview

This project is a Sales Data Analysis Dashboard that provides insights into sales performance using SQL, Excel, and Python (Pandas).
It helps visualize and analyze sales data across different dimensions such as city, category, payment mode, and order status

## 🎯 Objective

To analyze sales data efficiently and create a data-driven dashboard that helps understand:

Total and average sales performance

Best performing city and category

Customer payment preferences

Order status distribution (Delivered vs Cancelled)


## 🧠 Tools and Technologies Used

Tool	Purpose

SQL Server	Data extraction, transformation, and aggregation
MS Excel	Interactive Dashboard and visualization
Python (Pandas)	Exploratory data analysis and plotting
Power Query / Pivot Table	Data cleaning and model creation in Excel

🧩 Steps Involved

1. Data Preparation

Imported raw sales data into SQL Server.

Cleaned and filtered records to remove inconsistencies.


2. SQL Analysis

Used SQL queries to extract key insights.


3. Excel Dashboard

![Project Screenshot](C:\Users\TRUPTI\OneDrive\Pictures\Screenshots)


Created an interactive dashboard using Pivot Tables, Slicers, and Charts to display:

🏙 Sales by City

💳 Payment Mode Preference

📦 Category-wise Sales

🚚 Order Status Distribution

🏆 Top Performing City and Total Sales



4. Python Analysis

Used Pandas for deeper data analysis:

payment_count = df['PaymentMode'].value_counts()

# Monthly sales trend
monthly_sales = df.groupby(df["OrderDate"].dt.to_period("M"))["total"].sum()

# Sales by category
category_sales = df.groupby("Category")["total"].sum()
category_sales.plot(kind="bar", title="Sales by Category")
plt.show(

## 📈 Key Insights

Delhi recorded the highest total sales.

Most preferred payment mode was UPI.

Electronics category had the maximum revenue.

Overall total sales = 295,200 units.


## 🚀 Future Enhancements

Integrate Power BI for dynamic visualization.

Automate data refresh using Python scripts.

Add forecasting model for future sales prediction



