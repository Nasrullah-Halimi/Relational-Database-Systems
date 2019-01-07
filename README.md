# Database-System-
Database Projects completed by me for Academic, self learning and hobby purposes

Project description:
The project is about defining, design and implementation of a database for an e-banking application, it has to be developed based on the following specification below; for full documentation refer to the document “Database Systems” and the database itself “bank.sql”. 
1) Account management; registered users must be able to manage the following banking products of banking accounts, credit-debit cards and loans in addition to a login system, the capability to deactivate accounts. 
2) Transactions; the designed schema should be able to associate the user and the banking product that he is involved with the following rules: restrict the amount of permitted redraw, defining the deposit interest of accounts and impose credit overall pay limit. 
3) Users; the registered user information includes a unique user identifier, their user name, first and last names, email address, their phone number, country of residence and status (A – active, B- banned-temporarily, P- banned permanently) for the country use the three letter ISO 3166.
4) Keep logging; log any user transaction, include information like timestamp and IP of client’s login, timestamp of any transactions, id’s of transactions that the user inserted.  

Proposed solution: 
A Crow foot ERD “Bank ERD.pdf” has been developed to illustrate the attributes and it’s entities based on the specification and the type of relationship between them, you can refer to “Database system.doc” for further details on how it is done. 
Database & creation, Data insertion and Additional database objects:
In this section the database created followed by inserting some data that in next section will be used to analyze and manipulate, you can refer to the full report, further explanation and source code, the section also answer to the following question;
1.	Create a script to allow a user to add a new e-banking user to the USERS table
2.	Add a deposit for the account you have created
3.	Change the user status to P- Banned permanently
4.	Create a sequence for the primary key columns of the ACCOUNTS and TRANSACTIONS tables. After creating the sequences, add a new account to the ACCOUNTS table using the appropriate sequence. (Use any values for the remainder of columns.). Add a row to the TRANSACTIONS table referencing the sequence-s value already created. (Use any values for the remainder of columns.)
5.	The user name and last name columns of the USERS table are used quite often in the WHERE clause condition of a query. Assuming that the USERS table is a table containing more than a million rows, create object-s that might improve the retrieval of data for these queries.
6.	Would a BITMAP index be appropriate for any columns in the database (assuming that the columns are used in search and/or sort operations)? If so, identify the columns and explain why a bitmap index is appropriate for these columns.
