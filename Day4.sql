
Insert into TestStore.Production.Categories (category_id, category_name)
Values  (1 , 'Weels');

EXEC sp_rename 'Sales.Customers.coustomer_id','customer_id','Column';

 Insert Into TestStore.Sales.Customers (customer_id , first_name , last_name,eamil)
  Values 
  (4,'Sarah','Ali','sa6745209@gmail.com' ),
  (5 , 'Ahmed' , 'Adel', 'ad78457108@gmail.com'),
  (6 , 'Adel' ,'Zidan' , 'az27445633@gmail.com');
  
  Select * From TestStore.Sales.Customers;


  Delete From TestStore.Sales.Customers
  Where customer_id Between 4 and 5;

  Use TestStore
  Go
  EXEC sp_rename 'Sales.Coustomers','Customers';

  Select * From TestStore.Sales.Customers;

  Update TestStore.Sales.Customers
  set city = 'Talkha'
  Where customer_id =3;


  update TestStore.Sales.Customers
  Set zip_code = '24363'
  Where customer_id = 1;

  Alter Table TestStore.Sales.Stores
  Alter Column city varchar(35) not null;
  
  Use TestStore;
  Go
  EXEC sp_rename 'Sales.Stores.store_nam','store_name','Column';


  Insert Into TestStore.Sales.Stores (store_name,city)
  Output  inserted.store_id, inserted.city
  Values ('store_1','Talkha'),
		('store_2','Mansoura'),
		('store_3','Mansoura');

Select* From BikeStore.Sales.customers;

