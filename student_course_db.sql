CREATE DATABASE student_course_db;

CREATE TABLE students(
student_id INT  auto_increment PRIMARY KEY,
name VARCHAR(255),
email VARCHAR(255),
phone VARCHAR(15)
);
DROP TABLE courses;
CREATE TABLE courses(
course_id INT  PRIMARY KEY,
course_name VARCHAR(255),
instructor VARCHAR(255)
); 
DROP TABLE enrollments;
CREATE TABLE enrollments(
enrollment_id INT auto_increment  PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE
);