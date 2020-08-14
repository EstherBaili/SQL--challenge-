--1. 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. 
SELECT last_name, first_name, hire_date
FROM employees
where hire_date between '1986-01-01' and '1986-12-31';

--3.
SELECT department.dept_no, department.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
inner join dept_manager on dept_manager.emp_no = employees.emp_no
inner join department on department.dept_no = dept_manager.dept_no;

--4.
SELECT department.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join department on department.dept_no = dept_emp.dept_no;

--5.
select first_name, last_name, sex 
from employees 
where first_name = 'Hercules' and last_name like 'B%';

--6.
select employees.first_name, employees.last_name, employees.emp_no, department.dept_name 
from employees 
inner join dept_emp on  employees.emp_no = dept_emp.emp_no
inner join department on department.dept_no = dept_emp.dept_no
where dept_name = 'Sales' ;

--7.
select employees.first_name, employees.last_name, employees.emp_no, department.dept_name 
from employees 
inner join dept_emp on  employees.emp_no = dept_emp.emp_no
inner join department on department.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--8.
select last_name, count (last_name)
from employees
group by last_name
order by count(last_name) desc