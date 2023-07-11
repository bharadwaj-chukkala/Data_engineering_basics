### Last Class: Hive and Hadoop in action. External Table Creation.

**Hadoop Command Line Interface (CLI) and HDFS Commands**

- hadoop fs -ls
- hadoop fs -mkdir

**Hive CLI and HQL Commands**

- show databases;
- show tables;
- describe table_name;
- select * from table_name;

**What is the meaning of a hive server?**

- Hive server is a service that allows users to interact with hive using a web interface.

**What  is hive.server2.authentication?**

- Hive.server.authentication is a parameter that allows you to connect to the hive server using a password.
- It has a flag called NOSASL which allows you to connect to the hive server without using a password.

**What is hive.server2.thrift.bind.host?**

- Hive.server2.thrift.bind.host is a parameter that allows you to decide the host, generally it is the localhost.

**What is hive.server2.thrift.port?**

- Hive.server2.thrift.port is a parameter that allows you to decide the port, generally it is 10000.

**What is the impersonation error in hive?**

- In Hive, an impersonation error typically occurs when a user attempts to execute a query or access data that they do not have permissions for.
- This error can also occur if the Hive server is not configured to allow the user to impersonate another user.
- To troubleshoot this error, you can follow these steps:
  - Check the permissions: Ensure that the user has the appropriate permissions to access the tables and databases involved in the query.
  - Check the Hive configuration: Verify that the Hive server is configured to allow impersonation, and that the user has the necessary privileges to impersonate other users.
  - Check the user credentials: Confirm that the user is entering the correct credentials, and that the username and password match the ones registered with the system.
  - Check the log files: Look for any error messages or warnings in the log files that might indicate the source of the problem.
  - Check the Hive version: If the problem persists, make sure that you are using a version of Hive that is compatible with your Hadoop distribution.
- If none of these steps resolve the issue, you may need to seek assistance from your Hadoop or Hive administrator.

What is jps?
- jps stands for "Java Virtual Machine Process Status Tool". It is a command-line tool that is included with the Java Development Kit (JDK) and is used to display the status of Java processes running on a machine.
- When you run the jps command, it lists the Java processes running on your system along with their process ID (PID) and the class name of the Java application or process. It can be useful for identifying Java processes that are running on your system and troubleshooting issues with those processes.
- Here's an example of how to use the jps command:
```
$ jps
1234 Jps
5678 MyJavaApp
```
- In the example above, the jps command lists two Java processes running on the system: "Jps" (which is the jps tool itself) and "MyJavaApp", which is a Java application running on the machine. The number "1234" is the PID of the jps process, while "5678" is the PID of the MyJavaApp process.

What is derby database?
- Apache Derby is a relational database management system (RDBMS) that is based on the Java Database Connectivity (JDBC) API. It is a pure Java implementation of the SQL standard, and it is designed to be embedded in Java applications. It is also available as a standalone database server.

What is the diffrence between ODBC and JDBC?
- JDBC is a Java API that allows Java programs to connect to a database. It is a Java implementation of the Java Database Connectivity (JDBC) API, which is a standard Java API for accessing relational databases. JDBC is a Java API that allows Java programs to connect to a database. It is a Java implementation of the Java Database Connectivity (JDBC) API, which is a standard Java API for accessing relational databases.
- ODBC is a standard API for accessing data sources. It is a standard API for accessing data sources. It is a standard API for accessing data sources. It is a standard API for accessing data sources.

What is a HIVE partition?
- A Hive partition is a logical division of a table that allows you to store data in a more efficient manner. 

