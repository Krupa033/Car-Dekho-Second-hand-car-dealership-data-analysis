create database cars;
use cars;
#read data
select * from car_dekho;

#total cars
select count(*) from car_dekho;

#How many cars will be available in 2023?
select count(*) from car_dekho where year = 2023;

#How many cars will be available in 2020,2021,2022
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

#print the total of all cars by year
select year, count(*) from car_dekho group by year;

#how many diesel cars will be available in 2020?
select count(*) from car_dekho where year = 2020 and fuel ="diesel";

#how many petrol cars will be available in 2020?
select count(*) from car_dekho where year=2020 and fuel='petrol';

#print all the fuel cars (petrol,diesel,gas) come by all year

select year,count(*) from car_dekho where fuel='petrol' group by year; 
select year, count(*) from car_dekho where fuel='diesel' group by year; 
select year, count(*) from car_dekho where fuel='gas' group by year;

select year, count(*) from car_dekho where fuel in('petrol','diesel','gas') group by year;

SELECT year,
SUM(CASE WHEN fuel = 'petrol' THEN 1 ELSE 0 END) AS petrol_count,
SUM(CASE WHEN fuel = 'diesel' THEN 1 ELSE 0 END) AS diesel_count,
SUM(CASE WHEN fuel = 'gas' THEN 1 ELSE 0 END) AS gas_count
FROM car_dekho GROUP BY year;

#which year had more than 100 car
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

#all cars count details between 2015 and 2023, we need a complete list
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023; #without count
