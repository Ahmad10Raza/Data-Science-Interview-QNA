USE ORG;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.

select FIRST_NAME AS WORKER_NAME from Worker;


/* Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.*/


select upper(FIRST_NAME) from Worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.

select distinct Department from Worker;


-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.

select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME="Amitabh";

-- Q-6. Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.

Select RTRIM(FIRST_NAME) from Worker;


-- Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.

Select LTRIM(DEPARTMENT) from Worker;


-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.

Select distinct length(DEPARTMENT) from Worker;


-- Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.

Select REPLACE(FIRST_NAME,'a','A') from Worker;


-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.

Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;


-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

Select * from Worker order by FIRST_NAME asc;


-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;


-- Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.

Select * from Worker where FIRST_NAME in ('Vipul','Satish');


-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.

Select * from Worker where FIRST_NAME not in ('Vipul','Satish');


-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

Select * from Worker where DEPARTMENT like 'Admin%';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

Select * from Worker where FIRST_NAME like '%a%';


-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

Select * from Worker where FIRST_NAME like '%a'; 


-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

Select * from Worker where FIRST_NAME like '_____h';


-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

Select * from Worker where SALARY between 100000 and 500000;


-- Q-20. Write an SQL query to print details of the Workers who joined in Feb 2021.

Select * from Worker where year(JOINING_DATE) = 2021 and month(JOINING_DATE) = 2;


-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.

SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';


-- Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM worker 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker 
WHERE Salary BETWEEN 50000 AND 100000);



-- Q-23. Write an SQL query to fetch the number of workers for each department in descending order.

SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY No_Of_Workers DESC;


-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');


-- Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;



