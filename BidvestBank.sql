Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.5.62 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database BidvestBank;
ERROR 1007 (HY000): Can't create database 'bidvestbank'; database exists
mysql> use BidvestBank;
Database changed
mysql> create table CustomerAccount
    -> (
    -> account_number char(15) not null primary key,
    -> branch_name varchar(25),
    -> balance double
    -> );
Query OK, 0 rows affected (0.28 sec)

mysql> create table BankBranch
    -> (
    -> branch_name varchar(25) not null primary key,
    -> branch_city varchar(25),
    -> assets varchar(25)
    -> );
Query OK, 0 rows affected (0.16 sec)

mysql> create table Customer
    -> (
    -> customer_name varchar(25) not null primary key,
    -> customer_street varchar(25),
    -> customer_city varchar(25)
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> create table Loan
    -> (
    -> loan_number char(15) not null primary key,
    -> branch_name varchar(25),
    -> amount double
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> create table Depositor
    -> (
    -> customer_name varchar(25) not null primary kry,
    -> account_number char(15)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'kry,
account_number char(15)
)' at line 3
mysql> create table Depositor
    -> (
    -> customer_name varchar(25) not null primary key,
    -> account_number char(15)
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> create table Borrower
    -> (
    -> customer_name varchar(25) not null primary key,
    -> loan_number char(15)
    -> );
Query OK, 0 rows affected (0.22 sec)

mysql> create table Employee
    -> (
    -> employee_name varchar(25) not null primary key,
    -> branch_name varchar(25),
    -> salary double
    -> );
Query OK, 0 rows affected (0.50 sec)

mysql> insert into CustomerAccount values('A-5324', 'Newtown', 500);
Query OK, 1 row affected (0.09 sec)

mysql> insert into CustomerAccount values('A-5624', 'Sunnyside', 400);
Query OK, 1 row affected (0.08 sec)

mysql> insert into CustomerAccount values('A-7794', 'Midrand', 900);
Query OK, 1 row affected (0.05 sec)

mysql> insert into CustomerAccount values('A-4467', 'Mabopane', 700);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-3546', 'Midrand', 750);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-3453', 'Universitas', 700);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-2542', 'Mamelodi', 350);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Midrand', 'Johannesburg', 7100000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Newtown', 'Johannesburg', 9000000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Mabopane', 'Pretoria', 1700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Mabopane', 'Pretoria', 400000);
ERROR 1062 (23000): Duplicate entry 'Mabopane' for key 'PRIMARY'
mysql> insert into BankBranch values('Belgravia', 'Kimberly', 3700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Sunnyside', 'Pretoria', 1700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Amanzimtoti', 'Durban', 300000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Universitas', 'Bloemfontein', 2100000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into BankBranch values('Mamelodi', 'Pretoria', 8000000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Customer values('Modise', 'Spring', 'George');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Brooks', 'Senator', 'Johannesburg');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Jooste', 'North', 'Kimberly');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Lombard', 'Sand Hill', 'Nelspruit');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Mokwena', 'Walnut', 'Port-Elizabeth');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Johnson', 'Mmabatho', 'Mafikeng');
Query OK, 1 row affected (0.08 sec)

mysql> insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
ERROR 1062 (23000): Duplicate entry 'Johnson' for key 'PRIMARY'
mysql> ALTER TABLE Customer ADD customer_name varchar(25) not null foreign key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key' at line 1
mysql>  ALTER TABLE Customer DROP customer_name varchar(25) not null primary key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(25) not null primary key' at line 1
mysql>  ALTER TABLE Customer DROP customer_name varchar(25);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(25)' at line 1
mysql> ALTER TABLE CUSTOMER ADD PRIMARY KEY (customer_name);
ERROR 1068 (42000): Multiple primary key defined
mysql> insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
ERROR 1062 (23000): Duplicate entry 'Johnson' for key 'PRIMARY'
mysql> ALTER TABLE CUSTOMERS DROP PRIMARY KEY ;
ERROR 1146 (42S02): Table 'bidvestbank.customers' doesn't exist
mysql> ALTER TABLE CUSTOMER DROP PRIMARY KEY;
Query OK, 6 rows affected (0.69 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
Query OK, 1 row affected (0.08 sec)

mysql> insert into Customer values('Zwane', 'Main', 'Mafikeng');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Lindsay', 'Park', 'George');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Smith', 'North', 'Kimberly');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Dlamini', 'Putnam', 'Port-Elizabeth');
Query OK, 1 row affected (0.09 sec)

mysql> insert into Customer values('Williams', 'Nassau', 'Giyane');
Query OK, 1 row affected (0.08 sec)

mysql> show columns from Customer;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| customer_name   | varchar(25) | NO   |     | NULL    |       |
| customer_street | varchar(25) | YES  |     | NULL    |       |
| customer_city   | varchar(25) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.41 sec)

mysql> select * from Customer;
+---------------+-----------------+----------------+
| customer_name | customer_street | customer_city  |
+---------------+-----------------+----------------+
| Brooks        | Senator         | Johannesburg   |
| Johnson       | Mmabatho        | Mafikeng       |
| Jooste        | North           | Kimberly       |
| Lombard       | Sand Hill       | Nelspruit      |
| Modise        | Spring          | George         |
| Mokwena       | Walnut          | Port-Elizabeth |
| Johnson       | Alma            | Bloemfontein   |
| Zwane         | Main            | Mafikeng       |
| Lindsay       | Park            | George         |
| Smith         | North           | Kimberly       |
| Dlamini       | Putnam          | Port-Elizabeth |
| Williams      | Nassau          | Giyane         |
+---------------+-----------------+----------------+
12 rows in set (0.00 sec)

mysql>  ALTER TABLE Depositor DROP PRIMARY KEY;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into Depositor values('Johnson', 'A-5624');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Customer values('Johnson', 'A-5624');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Depositor values('Johnson', 'A-5624');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Depositor values('Johnson', 'A-7794');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Depositor values('Zwane', 'A-3546');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Depositor values('Lindsay', 'A-3453');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Depositor values('Smith', 'A-4467');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Depositor values('Dlamini', 'A-2542');
Query OK, 1 row affected (0.08 sec)

mysql> select * from Depositor;
+---------------+----------------+
| customer_name | account_number |
+---------------+----------------+
| Johnson       | A-5624         |
| Johnson       | A-5624         |
| Johnson       | A-7794         |
| Zwane         | A-3546         |
| Lindsay       | A-3453         |
| Smith         | A-4467         |
| Dlamini       | A-2542         |
+---------------+----------------+
7 rows in set (0.00 sec)

mysql> insert into Loan values('L-11', 'Mamelodi', 900);
Query OK, 1 row affected (0.23 sec)

mysql> insert into Loan values('L-14', 'Newtown', 1500);
Query OK, 1 row affected (0.11 sec)

mysql> insert into Loan values('L-15', 'Sunnyside', 1500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-16', 'Sunnyside', 1300);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Loan values('L-17', 'Newtown', 1000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-23', 'Universitas', 2000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-93', 'Mabopane', 500);
Query OK, 1 row affected (0.17 sec)

mysql> select * from Loan;
+-------------+-------------+--------+
| loan_number | branch_name | amount |
+-------------+-------------+--------+
| L-11        | Mamelodi    |    900 |
| L-14        | Newtown     |   1500 |
| L-15        | Sunnyside   |   1500 |
| L-16        | Sunnyside   |   1300 |
| L-17        | Newtown     |   1000 |
| L-23        | Universitas |   2000 |
| L-93        | Mabopane    |    500 |
+-------------+-------------+--------+
7 rows in set (0.03 sec)

mysql> insert into Borrower values('Modise', 'L-16');
Query OK, 1 row affected (0.17 sec)

mysql> ALTER TABLE Borrower DROP PRIMARY KEY;
Query OK, 1 row affected (0.45 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> insert into Borrower values('Jooste', 'L-93');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Borrower values('Johnson', 'L-15');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Borrower values('Jackson', 'L-14');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Zwane', 'L-17');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Borrower values('Smith', 'L-11');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Smith', 'L-23');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Williams', 'L-17');
Query OK, 1 row affected (0.06 sec)

mysql> select * from Borrower;
+---------------+-------------+
| customer_name | loan_number |
+---------------+-------------+
| Modise        | L-16        |
| Jooste        | L-93        |
| Johnson       | L-15        |
| Jackson       | L-14        |
| Zwane         | L-17        |
| Smith         | L-11        |
| Smith         | L-23        |
| Williams      | L-17        |
+---------------+-------------+
8 rows in set (0.00 sec)

mysql> insert into Employee values('Modise', 'Sunnyside', 1500);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Employee values('Brown', 'Sunnyside', 1300);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Gopal', 'Sunnyside', 5300);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Johnson', 'Newtown', 1500);
Query OK, 1 row affected (0.07 sec)

mysql> insert into Employee values('Loreena', 'Newtown', 1300);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Employee values('Peterson', 'Newtown', 2500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Rao', 'Austin', 1500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Sato', 'Austin', 1600);
Query OK, 1 row affected (0.08 sec)

mysql> select * from Employee;
+---------------+-------------+--------+
| employee_name | branch_name | salary |
+---------------+-------------+--------+
| Brown         | Sunnyside   |   1300 |
| Gopal         | Sunnyside   |   5300 |
| Johnson       | Newtown     |   1500 |
| Loreena       | Newtown     |   1300 |
| Modise        | Sunnyside   |   1500 |
| Peterson      | Newtown     |   2500 |
| Rao           | Austin      |   1500 |
| Sato          | Austin      |   1600 |
+---------------+-------------+--------+
8 rows in set (0.00 sec)

mysql> select CustomerAccount where balance < 700;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where balance < 700' at line 1
mysql> SELECT CustomerAccount,balance FROM CustomerAccount WHERE balance < 700;
ERROR 1054 (42S22): Unknown column 'CustomerAccount' in 'field list'
mysql> SELECT account_number,balance FROM CustomerAccount WHERE balance < 700;
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-2542         |     350 |
| A-5324         |     500 |
| A-5624         |     400 |
+----------------+---------+
3 rows in set (0.05 sec)

mysql> SELECT(account_number,branch_name),balance FROM CustomerAccount WHERE balance < 700;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT customeraccount,balance FROM CustomerAccount WHERE balance < 700;
ERROR 1054 (42S22): Unknown column 'customeraccount' in 'field list'
mysql> SELECT branch_name,balance FROM CustomerAccount WHERE balance < 700;
+-------------+---------+
| branch_name | balance |
+-------------+---------+
| Mamelodi    |     350 |
| Newtown     |     500 |
| Sunnyside   |     400 |
+-------------+---------+
3 rows in set (0.00 sec)

mysql> select customer_name,customer_city FROM Customer WHERE customer_city = Johannesburg;
ERROR 1054 (42S22): Unknown column 'Johannesburg' in 'where clause'
mysql> select customer_name FROM Customer WHERE customer_city = Johannesburg;
ERROR 1054 (42S22): Unknown column 'Johannesburg' in 'where clause'
mysql> select * from Customer;
+---------------+-----------------+----------------+
| customer_name | customer_street | customer_city  |
+---------------+-----------------+----------------+
| Brooks        | Senator         | Johannesburg   |
| Johnson       | Mmabatho        | Mafikeng       |
| Jooste        | North           | Kimberly       |
| Lombard       | Sand Hill       | Nelspruit      |
| Modise        | Spring          | George         |
| Mokwena       | Walnut          | Port-Elizabeth |
| Johnson       | Alma            | Bloemfontein   |
| Zwane         | Main            | Mafikeng       |
| Lindsay       | Park            | George         |
| Smith         | North           | Kimberly       |
| Dlamini       | Putnam          | Port-Elizabeth |
| Williams      | Nassau          | Giyane         |
+---------------+-----------------+----------------+
12 rows in set (0.00 sec)

mysql> select customer_name,customer_city FROM Customer WHERE customer_city=Johannesburg;
ERROR 1054 (42S22): Unknown column 'Johannesburg' in 'where clause'
mysql> SELECT customer_name FROM Customer WHERE customer_city=Johannesburg;
ERROR 1054 (42S22): Unknown column 'Johannesburg' in 'where clause'
mysql> SELECT customer_name FROM Customer WHERE customer_city==Johannesburg;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==Johannesburg' at line 1
mysql> SELECT customer_name FROM Customer WHERE customer.customer_name = 'Johannesburg';
Empty set (0.03 sec)

mysql> select customer_name,customer_city FROM Customer WHERE customer_city='Johannesburg';
+---------------+---------------+
| customer_name | customer_city |
+---------------+---------------+
| Brooks        | Johannesburg  |
+---------------+---------------+
1 row in set (0.00 sec)

mysql>  SELECT employee_name,salary FROM Employee WHERE salary < 1500;
+---------------+--------+
| employee_name | salary |
+---------------+--------+
| Brown         |   1300 |
| Loreena       |   1300 |
+---------------+--------+
2 rows in set (0.00 sec)

mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name NOT = 'Newtown';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'Newtown'' at line 1
mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name = 'Newtown';
+---------------+--------+
| employee_name | salary |
+---------------+--------+
| Loreena       |   1300 |
+---------------+--------+
1 row in set (0.05 sec)

mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name =! 'Newtown';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=! 'Newtown'' at line 1
mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name NOT 'Newtown';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''Newtown'' at line 1
mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name = 'Sunnyside';
+---------------+--------+
| employee_name | salary |
+---------------+--------+
| Brown         |   1300 |
+---------------+--------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) From Employee WHERE branch_name = 'Sunnyside','Newtown','Austin';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''Newtown','Austin'' at line 1
mysql> SELECT AVG(salary) From Employee WHERE branch_name = 'Sunnyside' 'Newtown' 'Austin';
+-------------+
| AVG(salary) |
+-------------+
|        NULL |
+-------------+
1 row in set (0.04 sec)

mysql> SELECT AVG(salary) From Employee WHERE branch_name = 'Austin';
+-------------+
| AVG(salary) |
+-------------+
|        1550 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) From Employee WHERE branch_name =( 'Sunnyside','Newtown','Austin');
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT AVG(salary) From Employee WHERE branch_name = (Sunnyside,Newtown,Austin);
ERROR 1054 (42S22): Unknown column 'Sunnyside' in 'where clause'
mysql> SELECT AVG(salary) From Employee WHERE branch_name = Employee.branch_name;
+-------------+
| AVG(salary) |
+-------------+
|      2062.5 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(amount) AS max_amt FROM loan;
+---------+
| max_amt |
+---------+
|    2000 |
+---------+
1 row in set (0.04 sec)

mysql> SELECT MAX(amount) AS max_amount FROM BankBranch;
ERROR 1054 (42S22): Unknown column 'amount' in 'field list'
mysql> SELECT MAX(assets) AS max_amount FROM BankBranch;
+------------+
| max_amount |
+------------+
| 9000000    |
+------------+
1 row in set (0.00 sec)

mysql> SELECT employee_name,salary FROM Employee WHERE salary < 1500 AND branch_name <> 'Newtown';
+---------------+--------+
| employee_name | salary |
+---------------+--------+
| Brown         |   1300 |
+---------------+--------+
1 row in set (0.00 sec)

mysql>  SELECT employee_name,branch_name FROM Employee WHERE branch_name='Sunnyside';
+---------------+-------------+
| employee_name | branch_name |
+---------------+-------------+
| Brown         | Sunnyside   |
| Gopal         | Sunnyside   |
| Modise        | Sunnyside   |
+---------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Borrower;
+---------------+-------------+
| customer_name | loan_number |
+---------------+-------------+
| Modise        | L-16        |
| Jooste        | L-93        |
| Johnson       | L-15        |
| Jackson       | L-14        |
| Zwane         | L-17        |
| Smith         | L-11        |
| Smith         | L-23        |
| Williams      | L-17        |
+---------------+-------------+
8 rows in set (0.00 sec)

mysql>  SELECT account_number,balance FROM CustomerAccount WHERE balance > 900;
Empty set (0.03 sec)

mysql>  SELECT branch_name,balance FROM CustomerAccount WHERE balance > 900;
Empty set (0.00 sec)

mysql>  SELECT account_number,balance FROM CustomerAccount WHERE balance > 600 AND branch_name = 'Newtown';
Empty set (0.00 sec)

mysql> SELECT branch_name,assets FROM BankBranch;
+-------------+---------+
| branch_name | assets  |
+-------------+---------+
| Amanzimtoti | 300000  |
| Belgravia   | 3700000 |
| Mabopane    | 1700000 |
| Mamelodi    | 8000000 |
| Midrand     | 7100000 |
| Newtown     | 9000000 |
| Sunnyside   | 1700000 |
| Universitas | 2100000 |
+-------------+---------+
8 rows in set (0.00 sec)

mysql>