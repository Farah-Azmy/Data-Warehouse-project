CREATE DATABASE gravity_books_DWH;
CREATE TABLE Book_Dim (
    book_id_SK INT  IDENTITY(1,1) PRIMARY KEY,
    book_id_BK INT not null,
    title VARCHAR(400),
    isbn13 VARCHAR(13),
    num_pages INT,
    publication_date DATETIME,
	language_id INT,
    language_name VARCHAR(50),
	language_code VARCHAR(8),
    author_id INT,
    author_name VARCHAR(400),
	publisher_id INT,
    publisher_name VARCHAR(400),
	source_sys_code tinyint,
    is_current tinyint ,
    start_date Datetime ,
    end_date Datetime
);
CREATE TABLE Customers_Dim (
    Cust_ID_SK INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id_BK INT not null,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email VARCHAR(60),
    address_id INT,
    street_number VARCHAR(15),
    street_name VARCHAR(40),
    city VARCHAR(40),
    country_id INT,
    country_name VARCHAR(40),
    status_id INT,
    address_status VARCHAR(15),
	source_sys_code INT,
    is_current TINYINT,
    start_date DATETIME,
    end_date DATETIME
);
CREATE TABLE Orders_Dim (
    order_id_SK INT IDENTITY(1,1) PRIMARY KEY,
    order_id_BK INT NOT NULL,
    status_id INT,
    status_value VARCHAR(25),
    status_date DATETIME,
    customer_id INT,
    method_id INT,
    method_name VARCHAR(25),
	source_sys_code INT,
    is_current TINYINT,
    end_date DATETIME
);
CREATE TABLE Fact_Table (
    fact_id_SK INT IDENTITY(1,1) PRIMARY KEY,
    Cust_ID_SK_FK INT NOT NULL,
    book_id_SK_FK INT NOT NULL,
    order_id_SK_FK INT NOT NULL,
    Date_ID INT NOT NULL,
    Time_ID INT NOT NULL,
    Price DECIMAL(10,2),
    Cost DECIMAL(10,2)
	)

