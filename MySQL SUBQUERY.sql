create database ass6;
use ass6;

create table employees(
emp_id int,
name varchar(50),
department varchar(20),
salary int);

insert into employees(emp_id,name,department,salary)
values(1,"John","HR",5000),
	  (2,"Alice","IT",7000),
      (3,"Bob","Finance",6000),
      (4,"Eve","IT",8000),
      (5,"Charlie","Finance",7500);
      
create table departments(
dept_id int,
dept_name varchar(50));

insert into departments(dept_id,dept_name)
values(1,"HR"),
      (2,"IT"),
      (3,"Finance");
      
/*QUESTION 1. Find employees with salaries greater than the average salary of all employees.*/
select name, salary from employees where salary > (select avg(salary) from employees);


/*QUESTION 2. Find employees whose salary is higher than the salary of 'Alice'.*/
select name, salary from employees where salary > (select salary from employees where name = "Alice");


/*QUESTION 3. List employees who belong to a department that has the name 'IT'.*/
select name, department from employees where department = (select dept_name from departments where dept_name = "IT");


/*QUESTION 4. Get the names of employees who earn the highest salary in their department.*/
select name, salary, department from employees where salary in (select max(salary) from employees group by department);


/*QUESTION 5. Retrieve the departments where at least one employee earns more than 7000.*/
select department from employees where salary > 7000;


/*QUESTION 6. List employees who do not belong to any department in the departments table. */
select name from employees where department not in (select department from employees);


/*QUESTION 7. Find the second-highest salary among employees.*/
select max(salary) as "second-highest salary" from employees where salary < (select max(Salary) from employees);


/*QUESTION 8. Find employees who earn more than the average salary in their department.*/
select name from employees emp where salary > (select avg(salary) from employees where department = emp.department);


/*QUESTION 9. Retrieve employees whose salary is above 7000 and belong to departments in the departments table.*/
select name, department, salary from employees where salary in (select salary from departments where salary > 7000);


/*QUESTION 10. Get the total salary of the department with the maximum total salary.*/
select department, sum(Salary), max(salary) from employees
group by department
having sum(salary);


/*QUESTION 11. Find employees whose salary is higher than the average salary of employees in the IT department.*/
select name from employees where salary > (select avg(salary) from employees where department = "IT");



