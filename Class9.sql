`
Apache Hive

What is Apache Hive?
    - Apache Hive is a data warehouse infrastructure built on top of Hadoop for providing data summarization, query and analysis. 
    - It provides a mechanism to project structure onto this data (called schemas), and then allows you to query the data using a SQL-like language called HiveQL. 
    - HiveQL is a superset of SQL, so any query that is legal in SQL is legal in HiveQL.

What is the difference between Hive and Hadoop?
    - Hadoop is a framework for storing and processing big data in a distributed environment across clusters of computers using simple programming models. 
    - Hive is a data warehouse infrastructure built on top of Hadoop for providing data summarization, query and analysis.

What is Hive-Server 2?
    - HiveServer2 is a server component of Hive that enables remote clients to execute queries and fetch results. 
    - HiveServer2 is a replacement for HiveServer1, which is deprecated in Hive 0.14.0.
    - HiveServer2 supports multi-client concurrency and authentication.
    - HiveServer2 supports multiple session modes: Beeline, JDBC, and ODBC.

What is Calcite?
    - Apache Calcite is a framework for building data management systems. 
    - It provides a common language for relational algebra, SQL, and NoSQL queries, and a common framework for optimizing and executing queries. 
    - Calcite is a subproject of Apache Apache Calcite.

What is Apache Tez?
    - Apache Tez is a framework for building high performance batch and interactive data processing applications on top of Apache Hadoop. 
    - Tez provides a DAG based execution model, which allows for the execution of complex data processing pipelines. 
    - Tez is a subproject of Apache Apache Tez.

What is Apache Spark?
    - Apache Spark is a fast and general engine for large-scale data processing. 
    - Spark provides an interface for programming entire clusters with implicit data parallelism and fault tolerance. 
    - Spark is a subproject of Apache Apache Spark.

What is Apache HBase?
    - Apache HBase is an open-source, distributed, versioned, non-relational database modeled after Google's Bigtable: A Distributed Storage System for Structured Data. 
    - HBase is a subproject of Apache Apache HBase.

What is a HIVE External Table?
    - An external table is a table that references data that is stored outside of Hive. HDFS for Hadoop and Amazon S3 for Amazon EMR are examples of external data stores.
    - External tables are useful when you want to query data that is already stored in HDFS or another file system. 
    - External tables are not managed by Hive. 
    - Hive does not move or delete the data that is referenced by an external table.


`
/* CBO PLan */
set hive.cbo.enable=true;
set hive.stats.fetch.column.stats=true;
set hive.stats.fetch.partition.stats=true;
set hive.stats.fetch.table.stats=true;
set hive.stats.fetch.column.stats=true;

/* MAX Group By Rollup */
EXPLAIN WITH ROLLUP SELECT * FROM emp;
EXPLAIN WITH CUBE SELECT * FROM emp;
EXPLAIN SELECT * FROM emp GROUP BY ROLLUP (deptno, sal);
EXPLAIN SELECT * FROM emp GROUP BY CUBE (deptno, sal);