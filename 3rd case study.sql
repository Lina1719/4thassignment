use employees;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    s.salary,
    e.gender
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no;
    
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    s.salary,
    e.gender
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
where gender = 'F';

SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;  

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    s.salary,
    e.gender
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
where gender = 'M';


SELECT 
    AVG(salary)
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
where gender = 'F';

SELECT 
    AVG(salary)
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
where gender = 'M';

SELECT 
    e.first_name,
    e.last_name,
    s.salary,
    t.to_date,
    t.from_date
FROM
    employees e
    join
    titles t ON e.emp_no = t.emp_no
    join
    salaries s ON e.emp_no = s.emp_no
WHERE t.to_date = '2001-02-01'
ORDER BY e.emp_no;

SELECT DATEDIFF('2000-12-31',e.hire_date )/ 365, SUM(salary) AS "Years wise Total Salary" FROM employees e 
  JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY DATEDIFF('2000-12-31',e.hire_date )/ 365;

SELECT 
    e.first_name, e.last_name, DATEDIFF('2000-12-31',e.hire_date )/ 365
FROM
    employees e
ORDER BY e.hire_date;  
    
select gender, count(gender) from employees group by gender;

SELECT 
    sum(salary)
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
        JOIN
    dept_emp de ON e.emp_no = de.emp_no;
    