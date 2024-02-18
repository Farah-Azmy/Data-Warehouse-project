# Data-Warehouse-project
Gravity Books Data Warehouse is a system designed to integrate and analyze data, and aims to provide understanding of the workings of a virtual library called Gravity Books. This guide outlines the project framework, detailing the original data sources, data transformation processes, the final data warehouse schema structure and the SQL statements used in the transformation process.

# Source_Data_Base
![sourceDatabase](https://github.com/Farah-Azmy/Data-Warehouse-project/assets/113993653/99e39ce3-26b1-4dba-a4e0-23e965136e32)
Tables description:
•	book: a list of all books available in the store.
•	book_author: stores the authors for each book, which is a many-to-many relationship.
•	author: a list of all authors.
•	book_language: a list of possible languages of books.
•	publisher: a list of publishers for books.
•	customer: a list of the customers of the Gravity Bookstore.
•	customer_address: a list of addresses for customers, as a customer can have more than one address, and an address has more than one customer.
•	address_status: a list of statuses for an address, because addresses can be current or old.
•	address: a list of addresses in the system.
•	country: a list of countries that addresses are in.
•	cust_order: a list of orders placed by customers.
•	order_line: a list of books that are a part of each order.
•	shipping_method: the possible shipping methods for an order.
•	order_history: the history of an order, such as ordered, cancelled, delivered.
•	order_status: the possible statuses of an order.
 (Database)https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_gravity/gravity_sqlserver

# ETL Workflow in SQL Server Integration Services (SSIS):
Data Retrieval:
Initially, the ETL process commenced by extracting data from source tables within the Gravity Books database.

Data Refinement:
Subsequently, the extracted data underwent a meticulous transformation phase. During this stage, denormalized tables were crafted for the three key dimensions - Book, Customer, and Date. This involved the addition of pertinent attributes and the application of aggregations where deemed necessary. Noteworthy enhancements include the incorporation of diverse attributes related to dates within the Date Dimension.

Data Integration:
The refined and enriched data sets were seamlessly integrated into the designated data warehouse tables. This final step completed the ETL cycle, ensuring that the transformed data was successfully loaded into the data warehouse for further analysis and reporting purposes.

# Data Warehouse Schema
![DatawarehouseSchema](https://github.com/Farah-Azmy/Data-Warehouse-project/assets/113993653/763e38c4-9e17-4532-89c0-07e0601fd1a1)



