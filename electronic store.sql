create database croma;
show databases;
use croma;


create table product_inventory (
product_code int (2),
product_name varchar (30),
product_price int (10),
manufacturer_code int (2)
);

select * from product_inventory;

insert into product_inventory
values
(1, "1TB Hard Disk Drive",2500,1),
(2,"Printer", 6500, 3),
(3,"64GB Pen Drive", 700, 6),
(4, "6 GB Graphic Card", 12800, 5),
(5,"22 Inches Monitor", 10600,2),
(6, "512GB Solid State Drive", 4200,1),
(7,"Mouse", 400,6),
(8,"450 Watt Power Supply Unit", 3600,4),
(9,"Printer Cartridge", 2500,3),
(10, "Membrane Keyboard",900,4),
(11,"Bluetooth Speakers",2000,10),
(12,"42 Inches Television",24600,2),
(13, "CPU Cabinet", 1900, 6),
(14, "laptop Adjustable Stand",1250,7),
(15,"8GB RAM",2600,4),
(16,"Motherboard",6500,8),
(17,"Ergonomic Chair",9700,6),
(18,"Monitor Arm Stand", 2600,7),
(19,"Wifi Adapter",300,9),
(20,"HD Webcam",1000,8);

select * from product_inventory;


create table Manufacturers (
Manufacturer_code int(2),
Manufacturer_Name varchar (20));

insert into manufacturers values
(1, "Western Digital"),
(2,"Samsung"),
(3,"Hewlett Packard"),
(4,"Corsair"),
(5, "Asus"),
(6,"Ant esports"),
(7,"cosmic Byte"),
(8,"Zebronics"),
(9,"TP-Link"),
(10,"BoAt");

select * from manufacturers;
select * from product_inventory;

#Q1.	Select the names of all the products in the inventory.
select product_name from product_inventory;

#Q2.	Select the names and the prices of all the products in the inventory.
select product_name , product_price from product_inventory;

#Q3.    Use an Alias "Name" and print all the product names
select product_name as Name from product_inventory;

#Q4.	Select the name of the products with a price less than or equal to 8000 Indian Rupees.
select product_name , product_price from product_inventory  where product_price <= 8000;

#Q5.    Select all the products with a price between 2000 and 10000 Indian Rupees.
select * from product_inventory where product_price between 2000 and 10000;

#Q6.    List the details of all such products whose manufacturer_code is 6
select * from product_inventory where manufacturer_code = 6;

#Q7.    List the details of all such products whose manufacturer_code is 6 as well as their price is greater than 5000
select * from product_inventory where manufacturer_code = 6 and product_price > 5000;

#Q8.    List the details of all such products other than whose manufacturer_code is 6
 select * from product_inventory where manufacturer_code != 6;

#Q9.    Select the name of the products whose name starts with 'M'
select product_name from product_inventory  where product_name like "M%";

# check
Q10.   List the name of products whose name starts with "M" and ends with "D"
select product_name from product_inventory where product_name like "M%" and "%d";

#Q11.   List the name of products which starts from "M" ends with "D" but also has ONLY 9 characters in between.
select product_name from product_inventory where product_name like "M_________D";

#Q12.   Concatenate name of the product with its price in a single column
select concat(product_name," ",product_price) from product_inventory; 

#Q13.	Select the name and price in dollars (i.e. the price must be divided by 80.)
select product_name,product_price, product_price/80 as product_price_dollar  from product_inventory;

#Q14.	Compute the average price of all the products in Indian Rupees.
select avg(product_price) from product_inventory;

#Q15.	Compute the average price of all products with manufacturer code equal to 3.
select avg(product_price) from product_inventory  where manufacturer_code = 3;

#Q16.   What is the total cost of products where manufacturer_code is 2?
select sum(product_price)  from product_inventory  where manufacturer_code =2;

#Q17.	Compute the number of products with a price greater than or equal to 5000.
select count(product_name) from product_inventory where product_price >= 5000;

#Q18.	Select the name and price of all products with a price larger than or equal to 5000 Indian Rupees and sort them by price (in descending order), and then by their name (in ascending order).
select product_name , product_price from product_inventory where product_price >= 5000 order by product_price desc;

#check
#Q19.	Select all the data from the inventory, including all the data for each product's manufacturer.
select * from product_inventory ;

#Q20.	Select the product name, price, and manufacturer name of all the products.
select product_inventory.product_name ,product_inventory.product_price,manufacturers.Manufacturer_Name 
from product_inventory inner join  manufacturers on product_inventory.manufacturer_code = manufacturers.Manufacturer_code ;

#Q21.   Select the average price of each manufacturer's products, showing only the manufacturer's code.
select avg(product_price),manufacturer_code  from product_inventory group by manufacturer_code;

#Q22.	Select the average price of each manufacturer's products, showing the manufacturer's name.
select avg(product_inventory.product_price),manufacturers.manufacturer_name from product_inventory inner join manufacturers on product_inventory.manufacturer_code =manufacturers.Manufacturer_code 
group by manufacturers.Manufacturer_Name ;

#Q23.   Select the names of manufacturer whose products have an average price greater than or equal to 5000 Indian Rupees.
select avg(p.product_price),m.Manufacturer_Name from product_inventory as p inner join manufacturers as m
on p.manufacturer_code =m.Manufacturer_code group by m.Manufacturer_Name having avg(p.product_price) >=5000;

#Q24. Select the name and price of the cheapest product.
select product_name,product_price  from product_inventory  where product_price =(select min(product_price) from product_inventory);

#Q25. Select the name of each manufacturer along with the name and price of its most expensive product. 
select p.product_name,p.product_price,m.manufacturer_name from product_inventory as p inner join
manufacturers as m on p.manufacturer_code = m.Manufacturer_code where p.product_price 
=( select max(product_price)from product_inventory );


#Q26. Add a new product: Speaker with a price 1000 INR and manufacturer code 10 
insert into product_inventory(product_code,product_name,product_price,manufacturer_code) values (21,"speaker",1000,10);

#Q27. Update the name of the product "Speakers" to "Wired Speakers". 
update product_inventory set product_name = "wired speakers" where product_name = "speaker";

#Q28. Apply a 10% discount to all products. 
 select product_name,product_code, product_price as "real price", product_price*10/100 as discount ,
 product_price*90/100 as saling from product_inventory;

#Q29. Apply a 10% discount to all products with a price greater than or equal to 5000 Indian Rupees.
select product_name,product_code, product_price as "real price", product_price*10/100 as discount ,
 product_price*90/100 as seeling from product_inventory where product_price >= 5000;

#Q30. List the name of the products along with their manufacturer name and price and arrange them as per their price
select p.product_name,p.product_price,m.manufacturer_name from product_inventory as p inner join manufacturers as m 
on p.manufacturer_code = m.Manufacturer_code order by p.product_price asc;
