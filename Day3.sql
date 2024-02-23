

Create Table TestDB.Sales.test
(
id int,
name varchar(55),
city varchar(44)
);

Drop Table TestDB.Sales.test;

-- Rename Talbe
Use TestDB;
Go
EXEC sp_rename @objname = 'Sales.Test', @newname = 'test';

-- Rename Column 
EXEC sp_rename @objname = 'Sales.test.town' ,  @newname='city' ,@objtype = 'COLUMN'; 

-- Column
Alter Table TestDB.Sales.test
Add zip_code varchar(5);

Alter Table TestDB.Sales.test
Alter Column id int not null;

Alter Table TestDB.Sales.test
Drop Column zip_code;

-- Consraint 
Alter Table TestDB.Sales.test
Add Constraint test_pk Primary Key (id);

Alter Table TestDB.Sales.test
Drop Constraint test_pk;