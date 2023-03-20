use `assignment`;
SELECT 
	fname, lname, salary,deptno, 
	RANK() OVER (ORDER BY salary desc) salary_rank
FROM 
	employee;
