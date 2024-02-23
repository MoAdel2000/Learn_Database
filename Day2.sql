


Create database Test
ON
(
Name = test_data,
FileName = 'E:\DB_Sequal\Projects\Test_1\data\test_data.ldf',
size = 60MB,
MaxSize = 900MB,
FileGrowth =30MB

)
Log On (
Name = test_log,
fileName = 'E:\DB_Sequal\Projects\Test_1\data\test_logldf',
Size = 50MB,
MaxSize = 700MB,
FileGrowth = 25MB
);
Go


-----------------------------------------------------------------------

Create Table TestDB.Sales.Coustomers
(
coustomer_id int ,
first_name varchar(30) not null,
last_name varchar(35) not null,
email varchar(50) not null,
phone varchar(15) ,
city varchar(40) not null,
zip_code varchar(5) not null,
Constraint Coustomers_pk primary key (coustomer_id)
);
Go

Drop table TestDB.Sales.Coustomers;
Go


-- Table level constraint
Create Table TestDB.Productions.Categories
(
category_id int ,
category_name varchar(50) not null,
Constraint Categories_pk Primary Key (category_id)
);
Go

Drop Table TestDB.Productions.Categories;
Go

-- Check Constraint
Create Table TestDB.Sales.Staffs
(
staff_id int ,
first_name varchar(35) not null,
last_name varchar(35) not null,
hire_date date not null,
salary numeric(7,2) ,
Constraint Staffs_pk Primary Key (staff_id),
Constraint Staffs_ch Check  (salary between 3000 and 50000 )
);


-- Foreign Key
Create Table TestDB.Sales.Orders
(
order_id int ,
coustomer_id int ,
order_stutas varchar(5),
Constraint Orders_pk Primary Key(order_id),
Constraint Orders_Coustomers_fk Foreign Key(coustomer_id)
References Sales.Coustomers (coustomer_id)
);



-- Alter Table {Column , Constraint}

-- Add Column 
Alter Table Sales.Staffs 
Add email varchar(50) ;

-- Modification on column 
Alter Table Sales.Staffs
Alter Column email varchar(70);

-- Drop Column
Alter Table Sales.Staffs
Drop Column email;
----------------------------------------
Create Table TestDB.Sales.Stores
(
store_id int primary key,
store_name varchar(50),
email varchar(50),
phone varchar(15)
);

Alter Table TestDB.Sales.Stores
Add Constraint Stores_uq Unique (store_name);

Alter Table TestDB.Sales.Stores
Add city varchar(35),
zip_code varchar(5);

Alter Table TestDB.Sales.Stores
Alter Column  email varchar(60) not null;

-- *************************************************************

-- Create Table Products
Create Table TestDB.Productions.Products
(
product_id int,
product_name varchar(55),
brand_id int,
);

Alter Table TestDB.Productions.Products
Add list_price decimal not null,
model_year date;

Alter Table TestDB.Productions.Products
Alter Column product_id int not null;

Alter Table TestDB.Productions.Products
Add Constraint Products_pk Primary Key (product_id);

-- *************************************************************
-- Create Table Stocks
Create Table TestDB.Productions.Stocks
(
store_id int,
product_id int,
quantity int,
);

Alter Table TestDB.Productions.Stocks
Add Constraint Stocks_Stores_fk Foreign Key (store_id)
References Sales.Stores (store_id);

Alter Table TestDB.Productions.Stocks
Add Constraint Stocks_Products_fk Foreign Key (product_id)
References Productions.Products (product_id);

Alter Table TestDB.Productions.Stocks
Drop Constraint Stocks_Products_fk;
-- **************************************************************


Create Table TestDB.Sales.test
(
id int not null,
name varchar(50),
town varchar(30),
);



