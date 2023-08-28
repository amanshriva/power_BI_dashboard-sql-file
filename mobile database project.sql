create schema project;
use project;
select *from mobiles;
-- check mobile features and price list--
select phone_name,price from mobiles;
-- 5 most expensive phones--
select *from mobiles
order by price desc 
limit 5;
-- 5 most cheapest phone--
select *from mobiles
order by price asc
limit 5;

-- listing out top 5 samsung phone with features--
select* from mobiles where brands="samsung"
order by price desc
limit 5;

-- must have android phone list then top 5 high price--
select *from mobiles where operating_system_type="Android"
order by price desc
limit 5;

-- Must have android phone list then top 5 lower price android phones--
select *from mobiles where operating_system_type="Android"
order by price asc
limit 5;

-- must have IOS and top 5 in price--
select *from mobiles where operating_system_type="IOS"
order by price desc
limit 5;
-- mmust have ios and 5 with lowest price --
select *from mobiles where operating_system_type="IOS"
order by price asc
limit 5;
-- 5g phone and top 5 5g--
select *from mobiles where 5G_Availability="yes"
order by  price desc
limit 5; 

-- total price of all mobiles is to be fpund with brand name--
select brands, sum(price) from mobiles group by brands;
