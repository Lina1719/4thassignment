use employees;

#Average salary by gender
SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;  

#Employees whose contracts are ending on February 1st 2001
SELECT 
    e.first_name,
    e.last_name,
    t.to_date,
    t.from_date
FROM
    employees e
    join
    titles t ON e.emp_no = t.emp_no
WHERE t.to_date = '2001-02-01'
ORDER BY e.emp_no;

#Employees whose contracts are ending on February 1st 2001 (unique)
SELECT DISTINCT
    e.first_name,
    e.last_name,
    t.to_date,
    t.from_date
FROM
    employees e
    join
    titles t ON e.emp_no = t.emp_no
WHERE t.to_date = '2001-02-01' 
ORDER BY e.emp_no;
#Employees whose contracts are ending on February 1st 2001 with their department name
SELECT DISTINCT
    e.first_name,
    e.last_name,
    d.dept_name,
    t.to_date,
    t.from_date
FROM
    employees e
    join
    dept_emp dm on dm.emp_no =e.emp_no
    join
    departments d on dm.dept_no=d.dept_no
    join
    titles t ON e.emp_no = t.emp_no
WHERE t.to_date = '2001-02-01' 
ORDER BY e.emp_no;

#Years of service
SELECT 
    e.first_name, e.last_name, DATEDIFF('2000-12-31',e.hire_date )/ 365
FROM
    employees e
ORDER BY e.hire_date;
