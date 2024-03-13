create database airbnb;

use airbnb;

show tables;

select * from booking_details;
select count(*) from booking_details;

select * from listings;
select count(*) from listings;

#2 Write a query to show names from Listings table
select name from listings; 

#3 Write a query to fetch total listings from the listings table
select count(id) from listings;

#4 Write a query to fetch total listing_id from the booking_details table
select count(listing_id) from booking_details;

#5 Write a query to fetch host ids from listings table
select host_id from listings;

#6 Write a query to fetch all unique host name from listings table
select distinct(host_name) from listings; 

#7 Write a query to show all unique neighbourhood_group from listings table
select distinct(neighbourhood_group) from listings;

#8 Write a query to show all unique neighbourhood from listings table
select distinct(neighbourhood) from listings; 

#9 Write a query to fetch unique room_type from listings tables
select distinct(room_type) from listings; 

#10 Write a query to show all values of Brooklyn & Manhattan from listings tables
select * from listings where neighbourhood_group in('Manhattan','Brooklyn');

#11 Write a query to show maximum price from booking_details table
select max(price) from booking_details;

#12 Write a query to show minimum price fron booking_details table
select min(price) from booking_details;

#13 Write a query to show average price from booking_details table
select avg(price) from booking_details;

#14 Write a query to show minimum value of minimum_nights from booking_details table
select min(minimum_nights) from booking_details;

#15 Write a query to show maximum value of minimum_nights from booking_details table
select max(minimum_nights) from booking_details;

#16 Write a query to show average availability_365
select avg(availability_365) from booking_details;

#17 Write a query to show id , availability_365 and all availability_365 values greater than 300
select listing_id,availability_365 from booking_details where availability_365 > 300;

#18 Write a query to show count of id where price is in between 300 to 400
select count(listing_id)  from booking_details where price between 300 and 400;

#19 Write a query to show count of id where minimum_nights spend is less than 5
select count(listing_id) from booking_details where minimum_nights < 5; 

#20 Write a query to show count where minimum_nights spend is greater than 100
select count(listing_id) from booking_details where minimum_nights > 100;

#21 Write a query to show all data of listings & booking_details
select * from booking_details inner join listings on booking_details.listing_id = listings.id;

#22 Write a query to show host name and price
select listings.host_name , booking_details.price from listings inner join booking_details on listings.id = booking_details.listing_id;

#23 Write a query to show room_type and price
select listings.room_type , booking_details.price from listings inner join booking_details on listings.id = booking_details.listing_id;

#24 Write a query to show neighbourhood_group & minimum_nights spend
select listings.neighbourhood_group, booking_details.minimum_nights from booking_details inner join listings 
on booking_details.listing_id = listings.id;

#25 Write a query to show neighbourhood & availability_365
select listings.neighbourhood, booking_details.availability_365 from booking_details inner join listings 
on booking_details.listing_id = listings.id;

#26 Write a query to show total price by neighbourhood_group
select listings.neighbourhood_group,sum(booking_details.price) as total_price from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.neighbourhood_group;

#27 Write a query to show maximum price by neighbourhood_group
select listings.neighbourhood_group,max(booking_details.price) as max_price from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.neighbourhood_group;

#28 Write a query to show maximum night spend by neighbourhood_group
select listings.neighbourhood_group,max(booking_details.minimum_nights) as max_nights_spent from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.neighbourhood_group;

#29 Write a query to show maximum reviews_per_month spend by neighbourhood
select listings.neighbourhood_group,max(booking_details.reviews_per_month) as max_reviews from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.neighbourhood_group;

#30 Write a query to show maximum price by room type
select listings.room_type , max(booking_details.price) as max_price from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.room_type; 

#31 Write a query to show average number_of_reviews by room_type
select listings.room_type , avg(booking_details.number_of_reviews) as avg_no_of_reviews from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.room_type; 

#32 Write a query to show average price by room type
select listings.room_type , avg(booking_details.price) as avg_price from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.room_type;

#33 Write a query to show average night spend by room type
select listings.room_type, avg(booking_details.minimum_nights) as avg_nights_spent from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.room_type;

#34 Write a query to show average price by room type but average price is less than 100
select listings.room_type , avg(booking_details.price) as avg_price from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.room_type having avg_price < 100;

#35 Write a query to show average night by neighbourhood and average_nights is greater than 5
select listings.neighbourhood, avg(booking_details.minimum_nights) as avg_nights_spent from listings inner join booking_details 
on listings.id = booking_details.listing_id group by listings.neighbourhood;

#36 Write a query to show all data from listings where price is greater than 200 using sub-query
select * from listings where id in (select id from booking_details where price > 200);

#37 Write a query to show all values from booking_details table where host id is 314941 using sub-query.
select * from booking_details where listing_id in (select listing_id from listings where host_id = 314941);

#39 Write an sql query to show fetch all records that have the term cozy in name
select * from listings where name like "%cozy%";

#40 Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select listings.host_id , listings.neighbourhood_group, booking_details.price from listings inner join booking_details
on listings.id = booking_details.listing_id where listings.neighbourhood_group = 'Manhattan' ;

#41 Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100
select listings.id , listings.host_name, listings.neighbourhood , booking_details.price from listings inner join booking_details
on listings.id = booking_details.listing_id where listings.neighbourhood in ("Upper West Side","Williamsburg") and booking_details.price > 100 ;

#42 Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select listings.id , listings.host_name, listings.neighbourhood , booking_details.price from listings inner join booking_details
on listings.id = booking_details.listing_id where listings.neighbourhood = 'Bedford-Stuyvesant' and listings.host_name = 'Elise' ;

#43 Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select listings.host_name, booking_details.availability_365,booking_details.minimum_nights from listings inner join booking_details
on listings.id = booking_details.listing_id where booking_details.minimum_nights > 100 and booking_details.availability_365  > 100 ;

#44 Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+
select listings.id,listings.host_name, booking_details.number_of_reviews ,booking_details.reviews_per_month from 
listings inner join booking_details on listings.id = booking_details.listing_id 
where booking_details.number_of_reviews > 500 and booking_details.reviews_per_month > 5 ;

#45 Write a query to show neighbourhood_group which have most total number of review
select listings.neighbourhood_group , sum(booking_details.number_of_reviews) as total_reviews from booking_details inner join listings 
on booking_details.listing_id = listings.id group by listings.neighbourhood_group order by total_reviews desc limit 1;

#46 Write a query to show host name which have most cheaper total price
select listings.host_name , sum(booking_details.price) as min_price from booking_details inner join listings 
on booking_details.listing_id = listings.id group by listings.host_name order by min_price asc limit 1;

#47 Write a query to show host name which have most costly total price
select listings.host_name , sum(booking_details.price) as max_price from booking_details inner join listings 
on booking_details.listing_id = listings.id group by listings.host_name order by max_price desc limit 1;

#48 Write a query to show host name which have max price using sub-query
select listings.host_name, booking_details.price from listings inner join booking_details 
on listings.id = booking_details.listing_id where booking_details.price in (select max(price) from booking_details);

#49 Write a query to show neighbourhood_group where price is less than 100
select listings.neighbourhood_group , booking_details.price from booking_details inner join listings 
on booking_details.listing_id = listings.id where booking_details.price < 100;

#50 Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.
select max(booking_details.price) as max_price,avg(booking_details.availability_365) as avg_avlbty_365, listings.room_type  
from booking_details inner join listings on booking_details.listing_id = listings.id
group by listings.room_type order by max_price asc;