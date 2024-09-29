---CREATING A DATA BASE CALLED SHOPXYZ_DB

CREATE DATABASE shopxyz_db;
USE shopxyz_db;

---CREATING THE SALES_DATA TABLE
 CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    rep_id INT,
    region VARCHAR(50),
    sales DECIMAL(10, 2));

	---INSERTING VALUES INTO THE TABLE
	INSERT INTO sales_data (sale_id, rep_id, region, sales) VALUES
(1, 101, 'East', 1000.00),
(2, 102, 'East', 1500.50),
(3, 103, 'West', 2000.00),
(4, 104, 'West', 2500.75),
(5, NULL, 'West', 3000.00);


---CREATING A REPRESENTATIVE TABLE
CREATE TABLE representatives (
    rep_id INT PRIMARY KEY,
    sales_rep VARCHAR(100),
    region VARCHAR(50)
);

---INSERTING INTO THE REPRESENTATIVE TABLE
INSERT INTO representatives (rep_id, sales_rep, region) VALUES
(101, 'John Doe', 'East'),
(102, 'Jane Smith', 'East'),
(105, 'Jim Beam', 'North'),
(106, 'Jill Jackson', 'North'),
(107, 'Jack Johnson', 'South');

---TO VIEW THE SALES_DATA TABLE AND REPRESENTATIVE TABLE

SELECT* FROM representatives;
SELECT* FROM sales_data;


---TASK 1: JOIN
Inner Join: Write a query to fetch sales data along with the names of the representatives 
where there is a match in both tables.

SELECT s.sales, r.sales_rep
FROM sales_data s
INNER JOIN representatives r
ON s.rep_id = r. rep_id;

---METHOD B.

SELECT sales_data.sales, representatives.sales_rep
FROM sales_data
INNER JOIN representatives 
ON sales_data.rep_id = representatives.rep_id;

---ANSWER: 'EAST REGION'

--- TASK 1b
Left Join: Write a query to fetch all sales data (including unmatched rows) along with the names of 
the representatives in the West region.

SELECT s.sales, r.sales_rep
FROM sales_data s
LEFT JOIN representatives r
ON s.rep_id = r. rep_id
WHERE s.region = 'WEST';

--- TASK 1c
--fetch all representatives and their sales data in the 
--North region, even if they don't have any sales.

SELECT s.sales, r.sales_rep
FROM sales_data s
RIGHT JOIN representatives r
ON s.rep_id = r. rep_id
WHERE r.region = 'NORTH';

---TASK 1d
--fetch all sales data and representative names, regardless of matches between them.

SELECT s.sales, r.sales_rep
FROM sales_data s
FULL OUTER JOIN representatives r
ON s.rep_id = r. rep_id;

----TASK 2
---Total sales (SUM) across all regions.
SELECT SUM(sales) As total_sales
FROM sales_data;

----TASK 2b
---count the number of sales records (COUNT).
SELECT COUNT(*) As total_sales_records
FROM sales_data;

----TASK 2c
---calculate the average sales amount (AVG).
SELECT AVG(sales) As Max_sales
FROM sales_data;

----TASK 2d
---find the maximum sales amount (MAX).
SELECT MAX(sales) As Max_sales
FROM sales_data;

---TASK 3
---concatenate the  name and region of the representatives.
SELECT CONCAT(sales_rep,' ', region) as fullname 
FROM representatives;

--- TASK 3b
---find the length of the sales_rep name.
SELECT sales_rep, LEN(sales_rep) As name_length
FROM representatives;

--- TASK 3C
----convert the sales_rep name to lowercase.
SELECT LOWER(sales_rep) As lowercase_name
FROM representatives;

----TASK 3D
---To trim any extra spaces from the region name.
SELECT TRIM(region) AS trimmed_region 
FROM representatives;


---TASK 4
---CREATING A TABLE CALLED SALES WITH THE FOLLOWING

CREATE TABLE sales 
( sale_id INT PRIMARY KEY, rep_id INT, sale_date DATE, amount DECIMAL(10, 2) );

INSERT INTO sales (sale_id, rep_id, sale_date, amount) 
VALUES (1, 101, '2024-09-15', 1000.00), 
(2, 102, '2024-09-16', 1500.50), 
(3, 103, '2024-09-17', 2000.00);

SELECT * FROM sales;

---TASK 4B
---Writing a query to get the current date.
SELECT GETDATE();

---TASK 4C
---Adding 7 days to the sale_date of each record.
SELECT DATEADD(DAY, 7, sale_date) As new_date 
FROM sales;

ALTER TABLE sales
ADD new_date DATE;

ALTER TABLE sales
DROP COLUMN new_date;

SELECT sales.*,
DATEADD(DAY, 7, sale_date) As new_date 
FROM sales;

---TASK 4D
---To format the sale_date as YYYY-MM-DD.
SELECT CONVERT(VARCHAR, sale_date, 23) AS
formatted_date FROM sales;


---TASK 5
---To trim extra spaces in the sales_rep column.
SELECT LTRIM(RTRIM(sales_rep)) AS trimmed_sales_rep
FROM representatives;

---TASK 5B
---To replace occurrences of 'Doe' in sales_rep with 'Johnson'.
SELECT REPLACE(sales_rep, 'Doe', 'Johnson') As
replaced_sales_rep FROM representatives;

SELECT representatives.*,
REPLACE(sales_rep, 'Doe', 'Johnson') As
replaced_sales_rep FROM representatives;

---TASK 5C
----To sort sales data in descending order based on the sales amount.
SELECT *
FROM sales_data
ORDER BY sales DESC;

---TASK 5D
---To filter and fetch sales data where sales amount is greater than 1500.
SELECT *
FROM sales_data
WHERE sales > 1500;
















