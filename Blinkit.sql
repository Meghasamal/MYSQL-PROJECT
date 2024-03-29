use fingertips;

show tables;

#create table blinkit

create table blinkit(
Item_Identifier int(5),
Item_Weight DECIMAL(5,3),
Item_Fat_Content varchar(10),
Item_Visibility DECIMAL(10,10),
Item_Type Varchar(25),
Item_MRP decimal(8,4),
Outlet_Identifier varchar(6),
Outlet_Establishment_Year year,
Outlet_Size Varchar(10),
Outlet_Location_Type Varchar(10),
Outlet_Type Varchar(25),
Item_Outlet_Sales decimal(9,4));

show tables;

#2 Write an SQL query to show all Item_Identifier.
select * from blinkit;

#3 Write an SQL query to show count of total Item_Identifier.
select count(Item_Identifier) from blinkit;

#4 Write an SQL query to show maximum Item Weight.
select max(Item_weight) from blinkit;

#5 Write an SQL query to show minimum Item Weight.
select min(Item_Weight) from blinkit;

#6 Write an SQL query to show average Item_Weight.
select avg(Item_Weight) from blinkit;

#7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(Item_Fat_Content) from blinkit where Item_Fat_Content = 'Low Fat';

#8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(Item_Fat_Content) from blinkit where Item_Fat_Content = 'Regular';

#9 Write an SQL query to show maximum Item_MRP.
select max(Item_MRP) from blinkit;

#10 Write an SQL query to show minimum Item_MRP.
select min(Item_MRP) from blinkit;

#11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from blinkit where Item_MRP>200;

#12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat.
select max(Item_MRP) from blinkit where Item_Fat_Content ='Low Fat';

#13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat.
select min(Item_MRP) from blinkit where Item_Fat_Content ='Low Fat';

#14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100.
select * from blinkit where Item_MRP between 50 and 100;

#15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content.
select distinct(Item_Fat_Content) from blinkit;

#16 Write an SQL query to show ALL UNIQUE value of  Item_Type.
select distinct(Item_Type) from blinkit;

#17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP.
select * from blinkit order by Item_MRP desc;

#18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales.
select * from blinkit order by Item_Outlet_Sales desc;

#19 Write an SQL query to show ALL DATA in ascending by Item_Type.
select * from blinkit order by Item_Type;

#20 Write an SQL query to show DATA of item_type dairy & Meat.
select * from blinkit where Item_Type in ('Dairy','Meat') ;

#21 Write an SQL query to show ALL UNIQUE value of Outlet_Size.
select distinct(Outlet_Size) from blinkit;

#22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type.
select distinct(Outlet_Location_Type) from blinkit;

#23 Write an SQL query to show ALL UNIQUE value of Outlet_Type.
select distinct(Outlet_Type) from blinkit;

#24 Write an SQL query to show count of number of items by Item_Type  and order it in descending order.
select item_type,count(Item_Type) from blinkit group by Item_Type order by Item_Type desc;

#25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order.
select Outlet_Size, count(Outlet_Size) from blinkit group by Outlet_Size order by Outlet_Size asc;

#26 Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select Outlet_Location_Type, count(Outlet_Location_Type) from blinkit group by Outlet_Location_Type order by Outlet_Location_Type desc;

#27 Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order.
select Outlet_Type, count(Outlet_Type) from blinkit group by Outlet_Type order by Outlet_Type desc;

#28 Write an SQL query to show maximum MRP by Item_Type.
select round(max(Item_MRP)),Item_Type  from blinkit group by Item_Type;

#29 Write an SQL query to show minimum MRP by Item_Type. 
select round(min(Item_MRP)),Item_Type  from blinkit group by Item_Type;

#30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year,min(Item_MRP) from blinkit group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year,max(Item_MRP) from blinkit group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select Outlet_Size, avg(Item_MRP) as Avg_Price from blinkit group by Outlet_Size order by Outlet_Size desc;

#33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type,avg(Item_MRP) as Avg_Price from blinkit group by Outlet_Type order by Outlet_Type asc;

#34 Write an SQL query to show maximum MRP by Outlet_Type.
select outlet_type,max(Item_MRP) as Max_Price from blinkit group by Outlet_Type;

#35 Write an SQL query to show maximum Item_Weight by Item_Type.
select item_type, max(Item_Weight) from blinkit group by Item_Type;

#36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year.
select Outlet_Establishment_Year,max(Item_Weight) from blinkit group by Outlet_Establishment_Year;

#37 Write an SQL query to show minimum Item_Weight by Outlet_Type.
select Outlet_Type, min(Item_Weight) from blinkit group by Outlet_Type;

#38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order.
select Outlet_Location_Type, avg(Item_Weight) from blinkit group by Outlet_Location_Type order by Outlet_Location_Type desc;

#39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type.
select Item_Type,max(Item_Outlet_Sales) from blinkit group by Item_Type ;

#40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type.
select Item_Type,min(Item_Outlet_Sales) from blinkit group by Item_Type ;

#41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year.
select Outlet_Establishment_Year,min(Item_Outlet_Sales) from blinkit group by Outlet_Establishment_Year;

#42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order.
select Outlet_Establishment_Year,max(Item_Outlet_Sales) from blinkit group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order.
select Outlet_Size,avg(Item_Outlet_Sales) from blinkit group by Outlet_Size order by Outlet_Size desc;

#44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type.
select Outlet_Type,avg(Item_Outlet_Sales) from blinkit group by Outlet_Type;

#45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type.
select Outlet_Type,max(Item_Outlet_Sales) from blinkit group by Outlet_Type;

#46 Write an SQL query to show total Item_Outlet_Sales by Item_Type.
select round(sum(Item_Outlet_Sales)) total_sales , Item_Type from blinkit group by Item_Type;

#47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content.
select Item_Fat_Content,round(sum(Item_Outlet_Sales)) total_sales from blinkit group by Item_Fat_Content ;

#48 Write an SQL query to show maximum Item_Visibility by Item_Type.
select Item_Type, max(Item_Visibility) from blinkit group by Item_Type;

#49 Write an SQL query to show Minimum Item_Visibility by Item_Type.
select Item_Type, min(Item_Visibility) from blinkit group by Item_Type;

#50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1.
select item_type, round(sum(Item_Outlet_Sales)) from blinkit where Outlet_Location_Type = 'Tier 1'  group by Item_Type;

#51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF.
select item_type, round(sum(Item_Outlet_Sales)) from blinkit where Item_Fat_Content in ("lf",'low fat') group by Item_Type;