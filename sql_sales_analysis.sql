--creating table sales dATA
CREATE  TABLE SALES_DATA (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    OrderDate DATE,
    City VARCHAR(50),
    PaymentMode VARCHAR(20),
    Status VARCHAR(20)
);

-- IT WILL INSERT Values in table
INSERT INTO SALES_DATA(OrderID, CustomerName, Product, Category, Quantity, Price, OrderDate, City, PaymentMode, Status)
VALUES
(1, 'Rahul', 'Mobile', 'Electronics', 2, 15000, '2024-07-12', 'Pune', 'UPI', 'Delivered'),
(2, 'Priya', 'Shoes', 'Fashion', 1, 2500, '2024-07-13', 'Mumbai', 'COD', 'Cancelled'),
(3, 'Rohan', 'Laptop', 'Electronics', 1, 45000, '2024-07-14', 'Delhi', 'Card', 'Delivered'),
(4, 'Sneha', 'Mixer', 'HomeAppliance', 1, 5000, '2024-07-15', 'Pune', 'UPI', 'Delivered'),
(5, 'Amit', 'T-shirt', 'Fashion', 3, 800, '2024-07-16', 'Nagpur', 'Card', 'Delivered'),
(6, 'Neha', 'Tablet', 'Electronics', 1, 20000, '2024-07-16', 'Mumbai', 'UPI', 'Delivered'),
(7, 'Karan', 'Watch', 'Fashion', 2, 3500, '2024-07-17', 'Delhi', 'COD', 'Delivered'),
(8, 'Meera', 'Fridge', 'HomeAppliance', 1, 30000, '2024-07-18', 'Pune', 'Card', 'Cancelled'),
(9, 'Aditya', 'Headphones', 'Electronics', 2, 2500, '2024-07-19', 'Nagpur', 'UPI', 'Delivered'),
(10, 'Pooja', 'Kurti', 'Fashion', 1, 1200, '2024-07-20', 'Mumbai', 'Card', 'Delivered'),
(11, 'Sagar', 'Laptop', 'Electronics', 1, 55000, '2024-07-21', 'Delhi', 'UPI', 'Delivered'),
(12, 'Kavya', 'Shoes', 'Fashion', 2, 2200, '2024-07-22', 'Pune', 'COD', 'Cancelled'),
(13, 'Rutuja', 'AC', 'HomeAppliance', 1, 40000, '2024-07-23', 'Nagpur', 'UPI', 'Delivered'),
(14, 'Mohit', 'Mobile', 'Electronics', 1, 18000, '2024-07-24', 'Delhi', 'Card', 'Delivered'),
(15, 'Sakshi', 'Jeans', 'Fashion', 2, 1500, '2024-07-25', 'Mumbai', 'COD', 'Delivered'),
(16, 'Aarav', 'Oven', 'HomeAppliance', 1, 7000, '2024-07-26', 'Pune', 'UPI', 'Delivered'),
(17, 'Manish', 'Tablet', 'Electronics', 1, 22000, '2024-07-27', 'Nagpur', 'Card', 'Delivered'),
(18, 'Aishwarya', 'Kurti', 'Fashion', 2, 1400, '2024-07-28', 'Delhi', 'UPI', 'Cancelled'),
(19, 'Tanvi', 'Mobile', 'Electronics', 1, 20000, '2024-07-29', 'Mumbai', 'Card', 'Delivered'),
(20, 'Viraj', 'Shoes', 'Fashion', 1, 2600, '2024-07-30', 'Pune', 'COD', 'Delivered');

SELECT * FROM SALES_DATA;

--Total sales (SUM).
SELECT sum(Quantity * Price)  as total_sales  from SALES_DATA
where Status = 'Delivered';


--Top 3 cities by sales.
SELECT sum(Quantity * Price)  as total_sales ,city  from SALES_DATA
WHERE Status = 'Delivered'
group by city
order by  sum(Quantity * Price) desc;


--Category-wise sales count.
SELECT sum(Quantity * Price)  as total_sales ,category from SALES_DATA
WHERE Status = 'Delivered'
group by Category;


--Cancelled orders ???? ?
SELECT COUNT( *) AS CANCELLED_ORDERS from SALES_DATA
where status = 'Cancelled';


--Average revenue per order.
SELECT avg(Quantity*Price) AS revenu ,Product from SALES_DATA
WHERE Status = 'Delivered'
group by product;

