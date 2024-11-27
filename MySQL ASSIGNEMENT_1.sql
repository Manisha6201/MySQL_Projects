/*1.Create a database named Company and a table named employees with the following fields:*/
Create database Company;
use Company;

create table employees(
  id INT Primary Key Auto_Increment,
  name VARCHAR(100),
  position VARCHAR(100),
  salary DECIMAL(10,2),
  date_of_joining DATE);
  
Select * from employees;


/*2.Insert the following data into the employees table:*/
insert into employees(id,name,position,salary,date_of_joining)
values(1,"John Doe","Manager",55000.00,"2020-01-15"),
      (2,"Jane Smith","Developer",48000.00,"2019-07-10"),
      (3,"Alice Johnson","Designer",45000.00,"2021-03-22"),
      (4,"Bob Brown","Developer",50000.00,"2018-11-01");
      
/*3.Write a query to retrieve all employees who are Developers*/
Select * from employees where position="Developer";

/*4.Write a query to update the salary of Alice Johnson to 46000.00*/
Update employees
set salary=46000.00 where id=3;

/*5.Write a query to delete the employee record for Bob Brown*/
delete from employees where id=4;

/*6.Write a query to find the employees who have a salary greater than 48000*/
Select * from employees where salary>48000.00;

/*7.Write a query to add a new column email to the employees table*/
Alter table employees
add email varchar(200);

/*8.Write a query to update the email for John Doe to john.doe@company.com*/
Update employees
set email="john.doe@company.com" where id=1;

/*9.Write a query to retrieve only the name and salary of all employees*/
Select name, salary from employees;

/*10.Write a query to count the number of employees who joined after January 1, 2020*/
Select count(*) from employees where date_of_joining>"2020-01-01";

/*11.Write a query to order the employees by salary in descending order*/
Select * from employees order by salary desc;

/*12.Write a query to drop the email column from the employees table*/
alter table employees
drop column email;

/*13.Write a query to find the employee with the highest salary*/
Select * from employees where salary=(select Max(salary) from employees);






