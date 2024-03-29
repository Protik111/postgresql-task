-- Active: 1708396374582@@127.0.0.1@5432@university_db@public
CREATE DATABASE university_db

CREATE Table students (
    student_id SERIAL PRIMARY KEY, student_name VARCHAR(255) NOT NULL, age int DEFAULT 18, email VARCHAR(255) NOT NULL, frontend_mark int NOT NULL, backend_mark int NOT NULL, statuses VARCHAR(255)
)
-- DROP Table enrollment

CREATE Table courses (
    course_id SERIAL PRIMARY KEY, course_name VARCHAR(255) NOT NULL, credits INT NOT NULL
)

CREATE Table enrollment (
    enrollment_id SERIAL PRIMARY KEY, student_id INT, course_id INT, FOREIGN KEY (student_id) REFERENCES students (student_id), FOREIGN KEY (course_id) REFERENCES courses (course_id)
)

INSERT INTO
    students (
        student_name, age, email, frontend_mark, backend_mark
    )
VALUES (
        'Alice', 22, 'alice@example.com', 55, 57
    ),
    (
        'Bob', 21, 'bob@example.com', 34, 45
    ),
    (
        'Charlie', 23, 'charlie@example.com', 60, 59
    ),
    (
        'David', 20, 'david@example.com', 40, 49
    ),
    (
        'Even', 24, 'eve@example.com', 45, 34
    ),
    (
        'Rahim', 23, 'rahim@example.com', 46, 42
    );

INSERT INTO
    courses (course_name, credits)
VALUES ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3)

INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1),
    (1, 2),
    (2, 1),
    (3, 2)
    -- Query 1

INSERT INTO
    students (
        student_name, age, email, frontend_mark, backend_mark
    )
VALUES (
        'Protik', 26, 'rafiurprotik111@gmail.com', 50, 55
    )

SELECT s.student_name
FROM
    enrollment e
    JOIN courses c ON e.course_id = c.course_id
    JOIN students s ON e.student_id = s.student_id
WHERE
    c.course_name = 'Next.js'

UPDATE students
SET
    statuses = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
        SELECT MAX(frontend_mark + backend_mark)
        FROM students
    )

SELECT * FROM students

DELETE FROM courses
WHERE
    course_id NOT IN (
        SELECT course_id
        FROM enrollment
    )

SELECT student_name FROM students LIMIT 2 OFFSET 2

SELECT c.course_name, COUNT(e.student_id) AS num_students_enrolled
FROM courses c
    LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY
    c.course_name

SELECT AVG(s.age) FROM students s

SELECT student_name FROM students WHERE email LIKE 'example.com'