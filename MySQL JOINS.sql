create database ass5;
use ass5;

create table employees(
emp_id int,
emp_name varchar(50),
department_id int);

insert into employees(emp_id,emp_name,department_id)
values(1,"Alice",10),
	  (2,"Bob",20),
      (3,"Charlie",30),
      (4,"David",10),
      (5,"Eve",40);
      
select * from employees;
      
create table Departments(
department_id int,
department_name varchar(50));

insert into Departments(department_id,department_name)
values(10,"HR"),
      (20,"Finance"),
      (30,"IT"),
      (40,"Admin"),
      (50,"Marketing");
      
create table Projects(
Project_id int,
emp_id int,
Project_name varchar(50));

insert into Projects(Project_id,emp_id,Project_name)
values(101,1,"Alpha"),
      (102,2,"Beta"),
      (103,3,"Gamma"),
      (104,4,"Delta");
      
/*QUESTION-1 Write a query to get Employee and Department details using join. */
select employees.emp_id,emp_name, departments.department_id,department_name
from employees
right join departments
on employees.department_id = departments.department_id
order by emp_id asc;

/*QUESTION-2 Write a query to retrieve all employees with their departments, even if the department is missing.*/
select employees.emp_name, Departments.department_name
from employees
inner join Departments
on employees.department_id = Departments.department_id;

/*QUESTION-3 Write a query to get department details even if there are no employees in that department.*/
select departments.department_id, departments.department_name, employees.emp_id, employees.emp_name from departments
left join employees
on employees.department_id = departments.department_id;

/*QUESTION-4 Write a query to get all employees and departments, whether matched or not.*/
select  employees.emp_id, employees.emp_name, departments.department_name
from employees 
right join departments
on employees.department_id = departments.department_id;


/*QUESTION-5 JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information.*/
select employees.emp_id, emp_name, departments.department_id, department_name, projects.project_id, project_name
from employees
right join departments
on departments.department_id = employees.department_id
left join projects
on projects.emp_id = employees.emp_id;


/*QUESTION-6 Find employees who are not assigned to any projects.*/
select employees.emp_name from employees
left join projects
on projects.emp_id = employees.emp_id
where projects.project_id is null;

/*QUESTION-7 Find departments with no employees using a RIGHT JOIN.*/
select departments.department_name, employees.emp_name from employees
right join departments
on departments.department_id = employees.department_id
where employees.emp_id is null;

/*QUESTION-8 Write a query to get Employee and Department details using join with aliases.*/
select employees.emp_name as "Employee Details" , departments.department_name as "Department Details"
from employees
right join departments
on departments.department_id = employees.department_id;

/*QUESTION-9 Write a query to find employees in the same department as other employees.*/
select employees.emp_name from employees where department_id = department_id;


/*QUESTION-10 Write a query to find projects managed by employees in the 'IT' department.*/
select projects.project_name from projects
inner join employees
on employees.emp_id = projects.emp_id
inner join departments
on departments.department_id = employees.department_id
where departments.department_name = "IT";


/*QUESTION-11 Write a query to show employees and their project information (even if not assigned to a project).*/
select employees.emp_name, projects.project_name
from employees
left join projects
on projects.emp_id = employees.emp_id;

/*QUESTION-12 Find employees who work in departments with names starting with 'A'.*/
select employees.emp_name from employees
left join departments
on departments.department_id = employees.department_id
where departments.department_name like "a%";

/*QUESTION-13 Find the total number of employees in each department using GROUP BY and JOIN.*/
select departments.department_name, count(employees.emp_id) as "total employees" from departments
left join employees
on employees.department_id = departments.department_id
group by departments.department_name
having count(employees.emp_id);

/*QUESTION-14 Get the list of departments with more than one employee.*/
select departments.department_name, count(departments.department_id) as "total employees" from departments
right join employees
on employees.department_id = departments.department_id
group by departments.department_name
having count(departments.department_id) > 1;










