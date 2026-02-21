use sales1;
#total revenue
SELECT SUM(Sales) AS Total_Revenue
FROM cleaned_ecommerce_dataset1;
#Total orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM cleaned_ecommerce_dataset1;
#Revenue by state
SELECT State,
       SUM(Sales) AS Revenue
FROM cleaned_ecommerce_dataset1
GROUP BY State
ORDER BY Revenue DESC;
   #Revenue by product category
SELECT Product_Category,
       SUM(Sales) AS Revenue
FROM cleaned_ecommerce_dataset1
GROUP BY Product_Category
ORDER BY Revenue DESC;
#monthly sales trend
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Revenue
FROM cleaned_ecommerce_dataset1
GROUP BY MONTH(Order_Date)
ORDER BY Month;
#payment method analysis
SELECT Payment_Mode,
       COUNT(*) AS Total_Orders
FROM cleaned_ecommerce_dataset1
GROUP BY Payment_Mode;
#Average customer age
SELECT AVG(Customer_Age) AS Avg_Age
FROM cleaned_ecommerce_dataset1;
#Top 5 Customers by Spending
SELECT Customer_ID,
       SUM(Sales) AS Total_Spent
FROM cleaned_ecommerce_dataset1
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 5;
#Highest Selling Product
SELECT Product_Category,
       SUM(Sales) AS Revenue
FROM cleaned_ecommerce_dataset1
GROUP BY Product_Category
ORDER BY Revenue DESC
LIMIT 1;