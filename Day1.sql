


use master;
Create Database TestDB
On(
Name= test_data ,
FileName = 'E:\DB_Sequal\Projects\Test\Data\test_data.mdf',
Size = 5MB ,
Maxsize = 100MB ,
FileGrowth = 5MB
)
Log On(
Name = test_log,
FileName = 'E:\DB_Sequal\Projects\Test\Data\test_log.ldf',
Size = 10 MB,
MaxSize = 500MB,
FileGrowth = 10MB
);
Drop DataBase TestDB;
-- Execution Strored Procedure 
EXEC sp_helpdb 'TestDB';

use TestDB;
Go
Create Schema Sales;
Create Schema Productions;
Drop Schema Sales;
Drop Schema Productions;

-- Create Table :
use master;
Go
Create Table TestDB.Sales.Customer(
Couteomer_Id int Primary Key,
FirstName varchar(30) not null,
LastName varchar(30) not Null
);

Drop Table TestDB.Sales.Customer;