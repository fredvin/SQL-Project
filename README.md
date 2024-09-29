# SQL-Project
# Questions  
Create  a  database  Shopxyz_db
Scenario: You have two tables, sales_data and representatives, as described in the example provided. Using these tables, write queries that demonstrate different types of joins.
 The  code  is  below 
### sales_data Table
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    rep_id INT,
    region VARCHAR(50),
    sales DECIMAL(10, 2)
);


INSERT INTO sales_data (sale_id, rep_id, region, sales) VALUES
(1, 101, 'East', 1000.00),
(2, 102, 'East', 1500.50),
(3, 103, 'West', 2000.00),
(4, 104, 'West', 2500.75),
(5, NULL, 'West', 3000.00);

### representatives Table
CREATE TABLE representatives (
    rep_id INT PRIMARY KEY,
    sales_rep VARCHAR(100),
    region VARCHAR(50)
);


INSERT INTO representatives (rep_id, sales_rep, region) VALUES
(101, 'John Doe', 'East'),
(102, 'Jane Smith', 'East'),
(105, 'Jim Beam', 'North'),
(106, 'Jill Jackson', 'North'),
(107, 'Jack Johnson', 'South');

## Task 1
Inner Join:  Write a query to fetch sales data along with the names of the representatives where there is a match in both tables.
Hint: Use INNER JOIN on rep_id.

Left Join: Write a query to fetch all sales data (including unmatched rows) along with the names of the representatives in the West region.
Hint: Use LEFT JOIN.

Right Join: Write a query to fetch all representatives and their sales data in the North region, even if they don't have any sales.
Hint: Use RIGHT JOIN.

Full Join: Write a query to fetch all sales data and representative names, regardless of matches between them.
Hint: Use FULL JOIN.
## Task 2 
Using the sales_data table:

1. Write a query to calculate the total sales (SUM) across all regions.
2. Write a query to count the number of sales records (COUNT).
3. Write a query to calculate the average sales amount (AVG).
4. Write a query to find the maximum sales amount (MAX).

## Task 3
1. Use the  representatives table for string manipulations:
2. Write a query to concatenate the name and region of the representatives.
3. Write a query to find the length of the sales_rep name.
4. Write a query to convert the sales_rep name to lowercase.
5. Write a query to trim any extra spaces from the region name.

## Task  4 
Create  a  table called sales with  the  following  
CREATE TABLE sales ( sale_id INT PRIMARY KEY, rep_id INT, sale_date DATE, amount DECIMAL(10, 2) ); INSERT INTO sales (sale_id, rep_id, sale_date, amount) VALUES (1, 101, '2024-09-15', 1000.00), (2, 102, '2024-09-16', 1500.50), (3, 103, '2024-09-17', 2000.00);
1. Write a query to get the current date.
2. Write a query to add 7 days to the sale_date of each record.
3. Write a query to format the sale_date as YYYY-MM-DD.

## Task 5
1. Write a query to trim extra spaces in the sales_rep column.
2. Write a query to replace occurrences of 'Doe' in sales_rep with 'Johnson'.
3. Write a query to sort sales data in descending order based on the sales amount.
4. Write a query to filter and fetch sales data where sales amount is greater than 1500.
