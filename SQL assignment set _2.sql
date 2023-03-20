use `assignment`;
/*1. select all employees in department 10 whose salary is greater than 3000.
 [table: employee]*/
select * from employee where deptno = 10 and salary > 3000;

/*  Q(2) a. How many students have graduated with first class? */
select count(name) as 'count'  from students where marks between 50 and 80;

/*  Q(2) b.How many students have obtained distinction? [table: students]*/
select count(name) as 'number of students' from students where marks > 80;

/* Q(3) Get a list of city names from station with even ID numbers only. 
Exclude duplicates from your answer.[table: station]*/
SELECT DISTINCT CITY FROM STATION WHERE (ID % 2) = 0;

/* Q(4) . Find the difference between the total number of city entries in the table
 and the number of distinct city entries in the table. In other words, if N is the
 number of city entries in station, and N1 is the number of distinct city names in
 station, write a query to find the value of N-N1 from station.[table: station]*/
select COUNT(city) - COUNT(DISTINCT CITY) FROM STATION;

/* Q(5)a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) 
from STATION. Your result cannot contain duplicates.*/
select distinct CITY 
from STATION
 where left(city,1) in ('a', 'e', 'i', 'o', 'u');
 
 /* Q(5)b.Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, 
 and u) as both their first and last characters. Your result cannot contain duplicates*/
SELECT DISTINCT city
FROM   station
WHERE  city RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

/* Q(5) c. . Query the list of CITY names from STATION that do not start with vowels.
 Your result cannot contain duplicates.*/
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT RLIKE '^[aeiouAEIOU].*$';

/* Q(5) d Query the list of CITY names from STATION that either do not start with vowels
 or do not end with vowels. Your result cannot contain duplicates. [table: station]*/
SELECT DISTINCT CITY 
FROM STATION  
WHERE CITY NOT LIKE '[AEIOU]%' OR CITY NOT LIKE '%[aeiou]';

/* Q(7)How much money does the company spend every month on salaries for each department? [table: employee]*/
select sum(salary) as 'total salary', deptno from emp group by deptno;

/* Q(8) How many cities in the CITY table have a Population larger than 100000. 
[table: city]*/
SELECT POPULATION, NAME FROM CITY
GROUP BY NAME
HAVING POPULATION > 100000;

/* Q(9) What is the total population of California? [table: city]*/
select district, name,sum(population)as 'total population'  from city
where district = 'California';

/* Q(10)10. What is the average population of the districts
 in each country? [table: city]*/
select countrycode, avg(population) as 'avg population' from city
group by countrycode;

/*.Q(6)Write a query that prints a list of employee names having a salary greater than $2000 per month
 who have been employed for less than 36 months. 
Sort your result by descending order of salary. [table: emp]*/
 SELECT * from emp where salary > 2000 and 
 hire_date >= date_sub(current_Date ,interval 36 month) 
 order by emp_no desc;
 
 /* Q(11) Find the ordernumber, status, customernumber, customername 
 and comments for all orders that are ‘Disputed= [table: orders, customers] */  
  select orders.customerNumber , customers.customerNumber , orderNumber , status , customers.customerName , comments from 
  orders inner join customers on orders.customerNumber = customers.customerNumber
  where `status` = 'disputed';
  

 



