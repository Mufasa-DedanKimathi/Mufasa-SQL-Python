
---By Dedan Odira.
use [Project];
create table airbnb_listings(
id int primary key,
city varchar(50),
country varchar(50),
number_of_rooms int,
year_listed int);

insert into airbnb_listings
values
(1,'Paris','France',5,2018),
(2,'Tokyo','Japan',2,2017),
(3,'New York','USA',2,2022),
(4,'Nairobi','Kenya',3,2019),
(5,'Kampala','Uganda',2,2022),
(6,'Addis Ababa','Ethiopia',4,2021);


---Queries

---Get all the columns from a table
select * from airbnb_listings;

---Return the city column from the table
select city from airbnb_listings;

---Get the city and year_listed columns from the table
select city,year_listed from airbnb_listings;

---Get the listing id, city, ordered by the number_of_rooms in ascending order
select id,city from airbnb_listings
order by number_of_rooms asc;

---Get the listing id, city, ordered by the number_of_rooms in descending order
select id,city from airbnb_listings
order by number_of_rooms desc;

---Get the first 3 rows from airbnb_listings
select top(3) * from airbnb_listings;

---Get a unique list of number_of_rooms where there are listings
select distinct number_of_rooms
from airbnb_listings;

---Get all the listings where number_of_rooms is more or equal to 3
select * from airbnb_listings
where number_of_rooms >=3;

---Get all the listings where number_of_rooms is more than 3
select * from airbnb_listings
where number_of_rooms > 3;

---Get all the listings where number_of_rooms is exactly 3
select * from airbnb_listings
where number_of_rooms = 3;

---Get all the listings where number_of_rooms is lower or equal to 3
select * from airbnb_listings
where number_of_rooms <= 3;

---Get all the listings where number_of_rooms is lower than 3
select * from airbnb_listings
where number_of_rooms < 3;

---Filtering columns within a range—Get all the listings with 3 to 6 rooms
select * from airbnb_listings
where number_of_rooms between 3 and 6;

---Get all the listings that are based in 'Paris'
select * from airbnb_listings
where city = 'Paris';

---Get the listings based in the 'USA' and in ‘France’
select * from airbnb_listings
where country in  ('USA' , 'France');

---Get all listings where city starts with "N" and where it does not end with "K"
select * from airbnb_listings
where city like 'N%' and city not like '%K';

---Get all the listings in "Paris" where number_of_rooms is bigger than 3
select * from airbnb_listings
where city = 'Paris' and number_of_rooms > 2;

---Get all the listings in "Paris" OR the ones that were listed after 2020
select * from airbnb_listings
where city = 'Paris' or year_listed > 2020;

---Get all the listings where number_of_rooms is missing
insert into airbnb_listings
values
(7,'Dar-Salam','Tanzania',null,2016),
(8,'Abuja','Nigeria',null,2023),
(9,'Cairo','Egypt',null,2024);

select * from airbnb_listings
where number_of_rooms is null;

---Get all the listings where number_of_rooms is not missing
select * from airbnb_listings
where number_of_rooms is not null;

---Get the total number of rooms available across all listings
select sum(number_of_rooms) from airbnb_listings;

---Get the average number of rooms per listing across all listings
select avg(number_of_rooms) from airbnb_listings;

---Get the listing with the highest number of rooms across all listings
select max(number_of_rooms) from airbnb_listings;

---Get the listing with the lowest number of rooms across all listings
select min(number_of_rooms) from airbnb_listings;

---Get the total number of rooms for each country
SELECT country, SUM(number_of_rooms)
FROM airbnb_listings
GROUP BY country;

---Get the average number of rooms for each country
SELECT country, avg(number_of_rooms)
FROM airbnb_listings
GROUP BY country;

---Get the listing with the maximum number of rooms for each country
SELECT country, max(number_of_rooms)
FROM airbnb_listings
GROUP BY country;

---Get the listing with the minimum number of rooms for each country
SELECT country, min(number_of_rooms)
FROM airbnb_listings
GROUP BY country;

---For each country, get the average number of rooms per listing, sorted by ascending order
SELECT country, AVG(number_of_rooms) AS avg_rooms
FROM airbnb_listings
GROUP BY country
ORDER BY avg_rooms ASC;

---For Japan and the USA, get the average number of rooms per listing in each country
select avg(number_of_rooms) from airbnb_listings
where country in ('Japan','USA')
group by country;

---Get the number of listings per country
SELECT country, COUNT(id) AS number_of_listings
FROM airbnb_listings
GROUP BY country;




