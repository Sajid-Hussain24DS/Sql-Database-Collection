CREATE TABLE Students (
					  id INT PRIMARY KEY,
					  name VARCHAR(255),
					  class VARCHAR(50),
					  age INT
	);

INSERT INTO Students (id, name, class, age) 
VALUES
					(1, 'Ali', '10th', 16),
					(2, 'Ayesha', '9th', 15),
					(3, 'Rahul', '10th', 17),
					(4, 'Fatima', '8th', 14),
					(5, 'Zain', '9th', 15);

SELECT*FROM students;

CREATE TABLE Courses (
					  course_id INT PRIMARY KEY,
					  course_name VARCHAR(255)NOT NULL,
					  teacher_id INT
	);
INSERT INTO Courses (course_id, course_name, teacher_id) 
VALUES
					(101, 'Mathematics', 1),
					(102, 'English', 2),
					(103, 'Science', 3);

SELECT*FROM Courses;

CREATE TABLE Teachers (
					  id  SERIAL PRIMARY KEY,
					  name VARCHAR(255)NOT NULL,
					  subject VARCHAR(100),
					  salary NUMERIC(10,2)
	);
INSERT INTO Teachers (name, subject, salary) 
VALUES
					('Mr. Khan', 'Math', 50000.00),
					('Ms. Sara', 'English', 48000.00),
					('Mr. Imran', 'Science', 52000.00),
					('Mrs. Amina', 'Biology', 47000.00),
					('Mr. Faraz', 'History', 46000.00),
					('Ms. Neha', 'Geography', 45000.00);

SELECT*FROM Teachers;

CREATE TABLE Departments (
						  dept_id SERIAL PRIMARY KEY,
						  dept_name VARCHAR(100) NOT NULL
	);
INSERT INTO Departments (dept_name) 
VALUES
					('Science'),
					('Arts'),
					('Commerce'),
					('Computer Science');

SELECT*FROM Departments;

CREATE TABLE Results (
					  result_id SERIAL PRIMARY KEY,
					  student_id INT,
					  course_id INT,
					  marks INT
	);
INSERT INTO Results (student_id, course_id, marks) 
VALUES
					(1, 101, 85),
					(2, 102, 78),
					(3, 103, 90),
					(4, 101, 88),
					(5, 102, 74),
					(1, 103, 82),
					(2, 101, 80);
						
SELECT*FROM Results;

CREATE TABLE Library (
					  book_id INT PRIMARY KEY,
					  title VARCHAR(255),
					  author VARCHAR(255) NOT NULL,
					  available VARCHAR(10)
	);
INSERT INTO Library (book_id, title, author, available) 
VALUES
					(1, 'Java Basics', 'John Doe', 'Yes'),
					(2, 'Science 101', 'Dr. Khan', 'No'),
					(3, 'Math Magic', 'Prof. Ali', 'Yes');

SELECT*FROM Library;

CREATE TABLE Hostel (
					  room_no INT PRIMARY KEY,
					  student_id INT,
					  block VARCHAR(10)
	);
INSERT INTO Hostel (room_no, student_id, block) 
VALUES
					(101, 1, 'A'),
					(102, 2, 'B'),
					(103, 3, 'A'),
					(104, 4, 'B'),
					(105, 5, 'C');
SELECT*FROM Hostel;	

CREATE TABLE Fees (
				  fee_id INT PRIMARY KEY,
				  student_id INT,
				  amount INT,
				  status VARCHAR(20)
	);
INSERT INTO Fees (fee_id, student_id, amount, status) 
VALUES
					(1, 1, 5000, 'Paid'),
					(2, 2, 5000, 'Unpaid'),
					(3, 3, 5000, 'Paid'),
					(4, 4, 5000, 'Unpaid');
SELECT*FROM Fees;

CREATE TABLE Attendance (
				  attendance_id INT PRIMARY KEY,
				  student_id INT,
				  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
				  status VARCHAR(10)
	);
INSERT INTO Attendance (attendance_id, student_id, status) 
VALUES
					(1, 1, 'Present'),
					(2, 2, 'Absent'),
					(3, 3, 'Present'),
					(4, 4, 'Present'),
					(5, 5, 'Absent'),
					(6, 1, 'Present');
SELECT*FROM Attendance;	

CREATE TABLE Admins (
					  admin_id INT PRIMARY KEY,
					  username VARCHAR(100) NOT NULL,
					  role VARCHAR(50)
);
INSERT INTO Admins (admin_id, username, role) 
VALUES
					(1, 'admin1', 'SuperAdmin'),
					(2, 'admin2', 'Moderator');
SELECT*FROM Admins;	

	

