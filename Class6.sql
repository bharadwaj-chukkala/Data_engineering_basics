`
Last Class - Joins

What is UNION ALL?
    -The UNION ALL operator is used to combine the result-set of two or more SELECT statements.
    -Each SELECT statement within UNION ALL must have the same number of columns
    -The columns must also have similar data types
    -The columns in each SELECT statement must also be in the same order
    -The UNION ALL operator selects all values including duplicates.
`

/* Query 1: Payment Details of customer who made highest payment 
    Sub-query using agg function in the WHERE clause */

SELECT *
FROM Database.Payments P
WHERE P.Amount = (SELECT 
                    MAX(P.Amount) 
                  FROM 
                    Database.Payments P);

/* Query 2: Payment details of customer who made highest payment 
    Sub-query using LIMIT and ORDER BY in the WHERE clause */

SELECT *
FROM Database.Payments P
WHERE P.Amount = (SELECT 
                    P.Amount 
                  FROM 
                    Database.Payments P
                  ORDER BY P.Amount DESC
                  LIMIT 1);

`
Perfomance Issues with Sub-Queries
    -Sub-queries are executed first before the main query
    -Sub-queries are executed for each row in the main query
    -Sub-queries can be slow if they are not written properly

What is an index in MySQL?
    -An index is a data structure that improves the speed of data retrieval in a database table.
    -Indexes are used to quickly locate data without having to search every row in a database table.
    -Indexes are used to retrieve data from the database very quickly.
    -Indexes are used to sort data in a database table.
    -Indexes are used to enforce uniqueness in a database table.
    -Indexes are used to enforce referential integrity in a database table.
    -Indexes are used to enforce primary key and foreign key constraints in a database table.
`

/* Query 3: Payment Details of customer who made highest payment 
    Sub-query using the WHERE clause */

SELECT 
*
FROM
    Database.Payments P
WHERE
    P.CustomerNumber = (SELECT 
                            P.CustomerNumber 
                        FROM 
                            Database.Payments P
                        ORDER BY P.Amount DESC
                        LIMIT 1); 

/* Query 4: List of customer who made payments greater than the average payment */
SELECT
*
FROM
    Database.Payments P
WHERE
    P.Amount > (SELECT 
                    AVG(P.Amount) 
                FROM 
                    Database.Payments P);


/* Query 6: Using a Sub Query to match customer number in C to customer number in P */
SELECT
    C.CustomerNumber,
    C.CustomerName,
    P.Amount
FROM
    Database.Customers C
WHERE 
    C.CustomerNumber IN (SELECT 
                            DISTINCT(P.CustomerNumber) 
                        FROM 
                            Database.Payments P
                        );



`
What does the IN operator do?
    -The IN operator is used to specify multiple values in a WHERE clause.
    -The IN operator allows you to specify multiple values in a WHERE clause.
    -The IN operator is a shorthand for multiple OR conditions.
`

/* Query 7: Example of IN operator */
SELECT
*
FROM
    Database.Payments P
WHERE
    P.CustomerNumber IN (103, 112, 119);


`
What are VIEWS in MySQL?
    - A View is a place where you store your queries to persist the logic for certain result.
    - Views are virtual tables that are created from the result-set of a query.
    - Views are used to simplify complex queries.
    - Views are used to restrict access to the database.
    - Views are used to enforce security on the database.
`
/* Query 8: Create a view to show the top 5 highest selling products */
CREATE VIEW top_5_highest_selling_products
AS
SELECT
    O.ProductCode,
    P.ProductName,
    SUM(O.Price_Each) as 'Total Items value',
    AVG(O.Price_Each) as 'Average Items value',
    MIN(O.Price_Each) as 'Minimum Items value',
    MAX(O.Price_Each) as 'Maximum Items value',
FROM
    Database.OrderDetails O
INNER JOIN
    Database.Products P
ON
    O.ProductCode = P.ProductCode
GROUP BY O.ProductCode
ORDER BY 3 DESC
LIMIT 5;

SELECT * FROM top_5_highest_selling_products; --> Using a view

`
What is a Window Function?
    -A window function is a function that performs a calculation across a set of table rows that are somehow related to the current row.
    -Window functions are used to perform calculations that require access to multiple rows at once.
`

` 
What is the OVER clause?
    -The OVER clause is used to define a window frame for a window function.
    -A Specific reference to a Time frame.

`
` 
What is an Analytical Query?
    -An analytical query is a query that uses a window function to perform a calculation across a set of table rows that are somehow related to the current row.
    -Analytical queries are used to perform calculations that require access to multiple rows at once.
`


/* Query 9: Using a Window Function to calculate the individual credit limit, the country credit limit and the total credit limit */
SELECT
    C.CustomerNumber,
    C.CustomerName,
    C.CreditLimit,
    C.Country,
    SUM(C.CreditLimit) 
        OVER (PARTITION BY C.Country) as 'Country Credit Limit',
    SUM(C.CreditLimit) OVER () as 'Total Credit Limit'
FROM
    Database.Customers C


/* Query 10: Using a Window Function to calculate the individual credit limit, the cumulative country credit limit and the total credit limit */
SELECT
    C.CustomerNumber,
    C.CustomerName,
    C.CreditLimit as 'Individual Credit Limit',
    C.Country,
    SUM(C.CreditLimit) OVER (
        PARTITION BY C.Country 
        ORDER BY C.CreditLimit DESC
        ) as 'Cumulative Country Credit Limit',
    SUM(C.CreditLimit) OVER () as 'Total Credit Limit'
FROM
    Database.Customers C







