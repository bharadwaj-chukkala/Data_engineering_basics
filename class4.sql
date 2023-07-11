-- RDBMS - Relational Database Management System
-- SQL - Structured Query Language
-- What is SQL? 
-- SQL is a language used to communicate with a database, it is a standard language for accessing and manipulating databases.
-- It has many different types
    -- MS SQL Server
    -- Oracle (PL/SQL)
    -- POstGreSQL
    -- MySQL --> My SQL Workbench
-- MYSQL Syntax:
    -- SELECT * FROM table_name;
        SELECT top 10 FROM Students;
    -- SELECT column_name FROM table_name;
    -- SELECT column_name FROM table_name WHERE column_name = value;
    -- SSMS - SQL Server Management Studio

-- What is a database?
-- A database is an organized collection of data, generally stored and accessed electronically from a computer system.

-- What is a database management system?
-- A database management system (DBMS) is a software system that allows users to interact with a database. 
-- It is the software that interacts with end users, applications, and the database itself to capture and analyze the data.

-- What is a database server?
-- A database server is a computer system that is dedicated to running database software and managing database activity.

-- What is a Cluster?
-- A cluster is a group of database servers that work together to provide high availability and scalability for a database.

-- What is a database schema?
-- A database schema is a blueprint or architecture of how the database is constructed.
-- It defines how the data is organized and how the relations among them are associated.
-- It also defines views, stored procedures, triggers, and other supporting objects.

-- CRUD Operations - Create, Read, Update, Delete

Create Table random
(
    id int identity(1,1) primary key, --> Identity(1,1) --> 1 is the starting value, 1 is the increment, int is the data type of id column
    name varchar(50) not null, --> Not Null --> This column cannot be null, varchar(50) --> This column can hold up to 50 characters
    age int not null, 
    address varchar(50) not null --> varchar(50) --> This column can hold up to 50 characters
);

-- What is a primary key?
-- A primary key is a column or a combination of columns that uniquely identifies each row in a table.

-- What is a foreign key?
-- A foreign key is a column or a combination of columns that uniquely identifies a row/record in another table.

-- What is a composite key?
-- A composite key is a combination of two or more columns that uniquely identifies each row in a table.

-- What is record?
-- A record is a single entry in a table.[A row in a table is a record]

-- What is RDMS?
-- A relational database management system (RDMS) is a database management system (DBMS) that is based on the relational model as introduced by E. F. Codd.
-- Relational Model --> A relational model is a type of database model that uses a structure that allows us to identify and access data in relation 
                    --> to another piece of data in the database.

-- What is DML?
-- Data Manipulation Language (DML) is a set of SQL statements that are used to manipulate data in a database.
-- Update, Insert, Delete [These are the statements that we use to manipulate data in a database]

-- What is DDML?
-- Data Definition Language (DDL) is a set of SQL statements that are used to define the database structure or schema.
-- Create, Alter, Drop, Truncate [These are the statements that we use to manipulate the structure of a database]