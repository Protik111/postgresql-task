# PostgreSQL Assignment

### Assignment Description

In this assignment, you will work with PostgreSQL, a powerful open-source relational database management system. Your task involves creating 03 tables based on the provided sample data and then writing and executing queries to perform various database operations such as creating, reading, updating, and deleting data. Additionally, you will explore concepts like LIMIT and OFFSET, JOIN operations, GROUP BY, aggregation and LIKE.

## Instructions:

### Database Setup:

- Install PostgreSQL on your system if not already installed.
- Create a fresh database titled **"university_db"** or any other appropriate name.

## Table Creation:

Create a **"students"** table with the following fields:

- `student_id` (Primary Key): Integer, unique identifier for students.
- `student_name`: String, representing the student's name.
- `age`: Integer, indicating the student's age.
- `email`: String, storing the student's email address.
- `frontend_mark`: Integer, indicating the student's frontend assignment marks.
- `backend_mark`: Integer, indicating the student's backend assignment marks.
- `status`: String, storing the student's result status.

Create a **"courses"** table with the following fields:

- `course_id` (Primary Key): Integer, unique identifier for courses.
- `course_name`: String, indicating the course's name.
- `credits`: Integer, signifying the number of credits for the course.

Create an **"enrollment"** table with the following fields:

- `enrollment_id` (Primary Key): Integer, unique identifier for enrollments.
- `student_id` (Foreign Key): Integer, referencing student_id in "Students" table.
- `course_id` (Foreign Key): Integer, referencing course_id in "Courses" table.

## Sample Data

- Insert the following sample data into the **"students"** table:

| student_id | student_name | age | email                | frontend_mark | backend_mark | status |
| ---------- | ------------ | --- | -------------------- | ------------- | ------------ | ------ |
| 1          | Alice        | 22  | alice@example.com    | 55            | 57           | NULL   |
| 2          | Bob          | 21  | bob@example.com      | 34            | 45           | NULL   |
| 3          | Charlie      | 23  | charlie@example.com  | 60            | 59           | NULL   |
| 4          | David        | 20  | david@example.com    | 40            | 49           | NULL   |
| 5          | Eve          | 24  | newemail@example.com | 45            | 34           | NULL   |
| 6          | Rahim        | 23  | rahim@gmail.com      | 46            | 42           | NULL   |

- Insert the following sample data into the **"courses"** table:

| course_id | course_name | credits |
| --------- | ----------- | ------- |
| 1         | Next.js     | 3       |
| 2         | React.js    | 4       |
| 3         | Databases   | 3       |
| 4         | Prisma      | 3       |

- Insert the following sample data into the **"enrollment"** table:

| enrollment_id | student_id | course_id |
| ------------- | ---------- | --------- |
| 1             | 1          | 1         |
| 2             | 1          | 2         |
| 3             | 2          | 1         |
| 4             | 3          | 2         |

## Execute SQL queries to fulfill the ensuing tasks:

### Query 1:

Insert a new student record with the following details:

- Name: YourName
- Age: YourAge
- Email: YourEmail
- Frontend-Mark: YourMark
- Backend-Mark: YourMark
- Status: NULL

### Query 2:

Retrieve the names of all students who are enrolled in the course titled 'Next.js'.

**Sample Output:**
| student_name |
|--------------|
| Alice |
| Bob |

### Query 3:

Update the status of the student with the highest total (frontend_mark + backend_mark) mark to 'Awarded'

### Query 4:

Delete all courses that have no students enrolled.

### Query 5:

Retrieve the names of students using a limit of 2, starting from the 3rd student.

**Sample Output:**
| student_name |
|--------------|
| Charlie |
| David |

### Query 6:

Retrieve the course names and the number of students enrolled in each course.

**Sample Output:**
| course_name | students_enrolled |
|----------------|-------------------|
| Next.js | 2 |
| React.js | 2 |

### Query 7:

Calculate and display the average age of all students.

**Sample Output:**
| average_age |
|-------------|
| 22.2857142857142857 |

### Query 8:

Retrieve the names of students whose email addresses contain 'example.com'.

**Sample Output:**
| student_name |
|--------------|
| Alice |
| Bob |
| Charlie |
| David |

Prepare the SQL code for table creation, sample data insertion, and the seven queries in a text document or your preferred format. Include comments explaining each query's purpose and functionality. **Save your document as "PostgreSQL_Assignment.sql" or any other appropriate name.**

## Private repository link

[https://classroom.github.com/a/vNu-py3I](https://classroom.github.com/a/vNu-py3I)

## Questions (Answer 10 Questions):

1. What is PostgreSQL?
   Ans: PostgreSQL is a open source relational database. It was developed in 1986. Like other pure relational databases it stores data in table, rows and columns and uses the sql to read and write data.
2. What is the purpose of a database schema in PostgreSQL?
   Ans: A database schema serves several important purposes. Such as:
   1. Orginazation of Data: A schema provides a logical structure for organizating the data within a database.
   2. Data Integrity: By defining the structure of tables including column names, data types, constraints, relation between tables a schema helps to maintain data inegrity.
   3. Security and Access Control: Schemas in PostgreSQL are owned by database users and access controll can be granted or revoked at the schema level.
3. Explain the primary key and foreign key concepts in PostgreSQL.
   A primary key is a column or a set of columns in a table that uniquely identifies each row in the table. And a forein key is a column or a set of columns in a table that establishes a link or relationship between that table and another table.
4. What is the difference between the VARCHAR and CHAR data types?
   VARCHAR:

   1. VARCHAR stands for "variable character" and is used to store strings of variable length.
   2. When you define a column with the VARCHAR data type, you also specify a maximum length for the string that can be stored in that column.

   CHAR:

   1. CHAR stands for "character" and is used to store fixed-length strings.
   2. When you define a column with the CHAR data type, you also specify a fixed length for the string that will be stored in that column.

5. Explain the purpose of the WHERE clause in a SELECT statement.
   Ans: The WHERE clause in a SELECT statement is used to filter rows from a table based on a specified condition or set of conditions. I
6. What are the LIMIT and OFFSET clauses used for?
   Ans: The LIMIT and OFFSET clauses are used in SQL queries, particularly in SELECT statements, to control the number of rows returned and the starting point of the result set.
7. How can you perform data modification using UPDATE statements?
   Ans: In SQL, you can use the UPDATE statement to modify existing data in a table.
8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
   Ans:
   The JOIN operation in SQL, including PostgreSQL, is used to combine rows from two or more tables based on a related column between them. The significance of the JOIN operation lies in its ability to retrieve data from multiple tables simultaneously,

9. Explain the GROUP BY clause and its role in aggregation operations.
   Ans: The GROUP BY clause in SQL, including PostgreSQL, is used to group rows that have the same values into summary rows, typically for performing aggregate functions (such as SUM, AVG, COUNT, MAX, MIN) on the grouped data.
10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
    In PostgresSQL index is a database object that improves the data retrieval operations on database tables. The purpose of an index is to provide a faster way to locate rows in a table based on the values of one or more columns.
12. Explain the concept of a PostgreSQL view and how it differs from a table.
    Ans:
    In PostgreSQL, a view is a virtual table that represents the result of a pre-defined SQL query. Unlike a regular table, which stores data physically on disk, a view does not store any data itself; instead, it dynamically retrieves data from the underlying tables whenever it is queried

**Provide detailed answers to these questions in your assignment GitHub repository's README file as part of your assignment submission.**

### Deadline:

- 60 Marks (17 August, 2023 Until 11.59PM )
- 50 Marks (18 August, 2023 Until 11.59PM )

**Important Note:** _Attendance in this assignment is obligatory for all participants. As a follow-up, there will be two further assignments involving Prisma and PostgreSQL backends, specifically tailored for individuals with aspirations of becoming proficient full-stack developers. Approach this task with a thorough perspective and a commitment to achieving excellence. Wishing you the best of luck in your endeavors._
