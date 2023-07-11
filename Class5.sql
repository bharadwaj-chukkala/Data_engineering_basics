-- Operations that come under DML are:
- SELECT
- INSERT
- UPDATE
- DELETE

`
* means all columns
% means all rows

What is column level filtering?
    -It is a filtering that is applied to a specific column
`

-- Query 1: To filter out a single value
SELECT 
    s.id, 
    s.fullname, 
    s.age, 
    s.address 
FROM Students as s
WHERE s.id = 1;

-- Query 2: To filter out multiple values
SELECT * FROM Students
WHERE s.id IN (1, 3, 5); --> IN is used to filter multiple values

-- Query 3: To extract everything except the values that are filtered out
SELECT * FROM Students
WHERE s.id NOT IN (1, 3, 5); --> NOT IN is used to filter multiple values

-- Query 4: Update a record
UPDATE Students
SET fullname = 'John Doe'
WHERE id = 1;

-- Query 5: Delete a record
DELETE FROM Students
WHERE id = 1;

-- Query 6: Use a function to perform a calculation
SELECT 
    AVG(Orders.Price) as AveragePrice,
FROM Orders;

-- Query 7: Use multiple functions to perform calculations
SELECT 
    AVG(Orders.Price) as AveragePrice,
    SUM(Orders.Price) as TotalPrice,
    COUNT(Orders.Price) as TotalOrders
FROM Orders;

-- Query 8: Use STL Functions to perform manipulations to the data in columns
SELECT 
    e.firstName,
    e.lastName,
    UPPER(e.firstName) as FirstNameInUppercase, --> UPPER() --> Convert to uppercase
    LOWER(e.firstName) as FirstNameInLowercase --> LOWER() --> Convert to lowercase
    CONCAT(e.firstName, ' ', e.lastName) as FullName --> CONCAT() --> Concatenate
    CONCAT_WS('-', e.firstName, e.lastName) as FullNamewithSeparator --> CONCAT_WS() --> Concatenate with separator
FROM Database.Table as e

-- Query 9: Use other functions to perform manipulations to the data in columns
SELECT 
    DISTINCT(p.Products) as Unique_Products
    COUNT(p.Products) as TotalProducts
    COUNT(Unique_Products) as TotalUniqueProducts
FROM Database.Table as p;

-- Query 10: Using Group By
SELECT 
    p.productName,
    COUNT(*) as ProductCount
FROM Database.Table as p
GROUP BY p.productName; --> GROUP BY is used to group the data by a specific column

-- Query 11: Using Group By with having
SELECT 
    p.productName,
    COUNT(*) as ProductCount
FROM Database.Table as p
GROUP BY p.productName
HAVING ProductCount> 10; --> HAVING is used to filter the grouped data

-- Query 12: Calculate the total price of all the products for each order
SELECT 
    o.orderID,
    SUM(o.price * o.quantity ) as TotalPrice_For_Order --> Perform Aggregate functions on the grouped data
FROM Database.Table as o
GROUP BY o.orderID;

'
What is an aggregate function?
    -An aggregate function is a function that operates on a set of values and returns a single value.
'

-- Query 13: Using Order By
SELECT
    o.orderID,
    SUM(o.price * o.quantity ) as TotalPrice_For_Order
FROM Database.Table as o
GROUP BY o.orderID
ORDER BY TotalPrice_For_Order DESC; --> ORDER BY is used to sort the data

'
What is MySQL Joins?
    -MySQL Joins are used to combine rows from two or more tables, based on a related column between them.
Types of MySQL Joins:
    -INNER JOIN: Returns records that have matching values in both tables
    -OUTER JOIN: Return all records when there is a match in either left or right table
        -LEFT JOIN: Return all records from the left table, and the matched records from the right table
        -RIGHT JOIN: Return all records from the right table, and the matched records from the left table
        -FULL JOIN: Return all records when there is a match in either left or right table
    -CROSS JOIN: Return the Cartesian product of the sets of records from the joined tables
    -SELF JOIN: A self join is a regular join, but the table is joined with itself

'

-- Query 14: Using Inner Join
SELECT
    c.CustomerName,
    c.City as CustomerCity,
    ofc.City as OfficeCity,
    ofc.Code as OfficeCode,
    ofc.City as OfficeCity
FROM Database.Customers as c
INNER JOIN Database.Offices as ofc --> INNER JOIN is used to return only the matching records b/w  Customer and Office tables
ON c.City = ofc.City; --> ON is used to specify the condition for the join

-- Query 15: Using Left Join
SELECT
    c.CustomerName,
    c.City as CustomerCity,
    ofc.City as OfficeCity,
    ofc.Code as OfficeCode,
    ofc.City as OfficeCity
FROM Database.Customers as c
LEFT JOIN Database.Offices as ofc --> LEFT JOIN is used to return all matching records from the Office table and all records from the Customer table
ON c.City = ofc.City;

-- Query 16: Using Right Join
SELECT
    c.CustomerName,
    c.City as CustomerCity,
    ofc.City as OfficeCity,
    ofc.Code as OfficeCode,
    ofc.City as OfficeCity
FROM Database.Customers as c
RIGHT JOIN Database.Offices as ofc --> RIGHT JOIN is used to return all matching records from the Customer table and all records from the Office table
ON c.City = ofc.City;

-- Query 17: Using Cross Join
SELECT
    c.CustomerName,
    c.City as CustomerCity,
    ofc.City as OfficeCity,
    ofc.Code as OfficeCode,
    ofc.City as OfficeCity
FROM Database.Customers as c
CROSS JOIN Database.Offices as ofc --> CROSS JOIN is used to return all records from the Customer table and all records from the Office table


-- Query 18: Using Full Join
SELECT
    c.CustomerName,
    c.City as CustomerCity,
    ofc.City as OfficeCity,
    ofc.Code as OfficeCode,
    ofc.City as OfficeCity
FROM Database.Customers as c
FULL JOIN Database.Offices as ofc --> FULL JOIN is used to return all records when there is a match in either left or right table and return NULL when there is no match

-- Query 19: Using Self Join [To find the customers in table 1 who live in the same city as other customers in table ]
SELECT
    e1.CustomerName,
    e1.CustomerNumber,
    e1.City,
FROM Database.Employees as e1, Database.Employees as e2 --> Self Join is used to join a table with itself
WHERE e1.CustomerNumber <> e2.CustomerNumber; --> To avoid the same customer from being compared with itself
AND e1.City = e2.City;

'
What is UNION in MySQL?
    -The UNION operator is used to combine the result-set of two or more SELECT statements.
    -Each SELECT statement within UNION must have the same number of columns
    -The columns must also have similar data types
    -The columns in each SELECT statement must also be in the same order
    -The UNION operator selects only distinct values by default. 

What is UNION ALL in MySQL?
    -The UNION ALL operator is used to combine the result-set of two or more SELECT statements.
    -The UNION ALL operator is similar to the UNION operator except that UNION ALL allows duplicate rows in the result-set.
'
