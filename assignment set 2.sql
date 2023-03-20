use `assignment`;
select * from employee where deptno = 10 and salary > 3000;
select count(name) as 'count'  from students where marks between 50 and 80;
select count(name) as 'number of students' from students where marks > 80;
SELECT DISTINCT CITY FROM STATION WHERE (ID % 2) = 0;
select COUNT(city) - COUNT(DISTINCT CITY) FROM STATION;
select distinct CITY 
from STATION
 where left(city,1) in ('a', 'e', 'i', 'o', 'u');
SELECT DISTINCT city
FROM   station
WHERE  city RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT RLIKE '^[aeiouAEIOU].*$';
SELECT DISTINCT CITY 
FROM STATION  
WHERE CITY NOT LIKE '[AEIOU]%' OR CITY NOT LIKE '%[aeiou]';

select sum(salary) as 'total salary', deptno from emp group by deptno;

SELECT POPULATION, NAME FROM CITY
GROUP BY NAME
HAVING POPULATION > 100000;

select district, name,sum(population)as 'total population'  from city
where district = 'California';

select countrycode, avg(population) as 'avg population' from city
group by countrycode;

/*. 6 )Write a query that prints a list of employee names having a salary greater than $2000 per month
 who have been employed for less than 36 months. 
Sort your result by descending order of salary. [table: emp]*/





