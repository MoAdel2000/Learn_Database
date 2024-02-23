
/*
	Select [column_name]
	From [table_name]
	Where [condition]
	Order By [column_name]
*/

-- Logical Operator {Like - in - Between - is null}
/*
The percent wildcard (%) : any string of zero or more character.
The underscore eildcard (_) : any single character.

*/
Use BikeStore
Go

Select * From sales.customers;

Select city From sales.customers;

Select Distinct city From sales.customers;
--------------------------------------------------
Select first_name From sales.customers
Where first_name Like '%z';

Select first_name From sales.customers
Where first_name Like '%ma%';

Select first_name From sales.customers
Where first_name Like '___';


Select customer_id, first_name From sales.customers
Where first_name Like '[MZ]%';


Select customer_id, first_name From sales.customers
Where first_name Like '[A-C]%'
Order by first_name;

Select 
		customer_id,
		first_name,
		last_name
From sales.customers
Where first_name Like 'M__';
---------------------------------------------------
Select * From production.products;

Select 
		product_id,
		model_year,
		list_price
From production.products 
Where list_price Like '3__.%';