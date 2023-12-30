USE ORG;

-- Q-26. Write an SQL query to show only odd rows from a table.

SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;

-- Q-27. Write an SQL query to show only even rows from a table.

SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) = 0;


-- Q-28. Write an SQL query to clone a new table from another table.

-- The general query to clone a table with data is: 
SELECT * INTO WorkerClone FROM Worker;

-- The general way to clone a table without information is:
SELECT * INTO WorkerClone FROM Worker WHERE 1 = 0;

-- An alternate way to clone a table (for MySQL) without data is:
CREATE TABLE WorkerClone LIKE Worker;


--  Q-29. Write an SQL query to fetch intersecting records of two tables.

(SELECT * FROM Worker)
INTERSECT
(SELECT * FROM Bonus);


-- Q-30. Write an SQL query to show records from one table that another table does not have.

SELECT * FROM Worker
MINUS
SELECT * FROM Title;


-- Q-31. Write an SQL query to show the current date and time.

SELECT CURDATE();

-- Q-32. Write an SQL query to show the top n (say 10) records of a table.

SELECT * FROM Worker ORDER BY Salary DESC LIMIT 10;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.

SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT n-1,1;









































