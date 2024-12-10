/*Q1. Create a database named library and a table named books with the following columns:
id (INT, Primary Key, Auto Increment)
title (VARCHAR(255))
author (VARCHAR(100))
year (YEAR)
genre (VARCHAR(100))*/

CREATE DATABASE LIBRARY;

USE LIBRARY;

CREATE TABLE BOOKS(
   ID INT PRIMARY KEY auto_increment,
   TITLE VARCHAR(255),
   AUTHOR VARCHAR(100),
   YEAR INT,
   GENRE VARCHAR(100));
   
SELECT * FROM BOOKS;

/*Q2. Insert the following book records into the books table:
"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
"Pride and Prejudice", "Jane Austen", 1813, "Romance"
"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
"1984", "George Orwell", 1949, "Dystopian"
"Moby Dick", "Herman Melville", 1851, "Adventure"*/

INSERT INTO BOOKS(ID, TITLE, AUTHOR, YEAR, GENRE)
VALUES(1, "THE GREAT GATSBY", "F. SCOTT FITZGERALD", 1925, "FICTION"),
      (2, "PRIDE AND PREJUDICE", "JANE AUSTEN", 1813, "ROMANCE"),
      (3, "TO KILL A MOCKINGBIRD", "HARPER LEE", 1960, "FICTION"),
      (4, "1984", "GEORGE ORWELL", 1949, "DYSTOPIAN"),
      (5, "MOBY DICK", "HERMAN MELVILLE", 1851, "ADVENTURE");
      
/*Q3. Write a query to select all books where the title starts with the letter 'T' using the LIKE operator. */
SELECT * FROM BOOKS WHERE TITLE LIKE "T%";

/*Q4. Write a query to find all books where the author's last name ends with 'son' using the LIKE operator. */
SELECT * FROM BOOKS WHERE AUTHOR LIKE "%SON";

/*Q5. Write a query to find all books where the title contains the word 'and' using the LIKE operator. */
SELECT * FROM BOOKS WHERE TITLE LIKE "%and%";

/*Q6. Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.*/
SELECT * FROM BOOKS WHERE TITLE LIKE "%bird";

/*Q7. Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE TITLE REGEXP "^.{3}$";

/*Q8. Write a query to select all books where the title contains a number using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE TITLE REGEXP "[0-9]";

/*Q9. Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE AUTHOR REGEXP "^[A-J]";

/*Q10. Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE GENRE REGEXP "Fiction|Adventure"; 

/*Q11. Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE TITLE REGEXP "[A-Z]";

/*Q12. Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.*/
SELECT * FROM BOOKS WHERE YEAR BETWEEN 1800 AND 1950;

/*Q13. Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE AUTHOR REGEXP "^[A-Za-z]+ [A-Za-z]+$";

/*Q14. Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE TITLE REGEXP "^P[A-Za-z]+ [A-Za-z]+$";

/*Q15. Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.*/
SELECT * FROM BOOKS WHERE TITLE REGEXP "!|@|#";


      
      
