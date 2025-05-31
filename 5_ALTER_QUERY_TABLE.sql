CREATE TABLE Students (
					  id SERIAL PRIMARY KEY,
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
					UPDATE Students SET age =18 WHERE id = 4;
					UPDATE Students SET class = '11th' WHERE id = 3;
					SELECT * FROM Students WHERE name LIKE '%i%';
					ALTER TABLE Students ADD gender VARCHAR(10);
					SELECT * FROM Students ORDER BY id;


DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses (
					  course_id SERIAL PRIMARY KEY,
					  course_name VARCHAR(255)NOT NULL,
					  teacher_id INT
	);
INSERT INTO Courses (course_id, course_name, teacher_id) 
VALUES
					(101, 'Mathematics', 1),
					(102, 'English', 2),
					(103, 'Science', 3);
SELECT*FROM Courses;
					UPDATE Courses SET course_name = 'Advanced Mathematics' WHERE course_id = 101;
					SELECT * FROM Courses WHERE course_name LIKE '%s%';
					SELECT course_name FROM Courses WHERE teacher_id = 2;
					ALTER TABLE Courses RENAME COLUMN course_name TO course_title;
					SELECT * FROM Courses ORDER BY course_id;


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
					UPDATE Teachers SET salary = 55000.00 WHERE name = 'Mr. Khan';
					SELECT * FROM Teachers WHERE name LIKE '%a';
					SELECT name, subject FROM Teachers;
					ALTER TABLE Teachers ALTER COLUMN salary TYPE NUMERIC(12,2);
					SELECT * FROM Teachers ORDER BY id;

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
					UPDATE Departments SET dept_name = 'Humanities' WHERE dept_id = 2;
					SELECT * FROM Departments ORDER BY dept_id;


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
					UPDATE Results SET marks = 95 WHERE result_id = 1;
					SELECT * FROM Results WHERE marks > 85;
					SELECT * FROM Results ORDER BY result_id;


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
					UPDATE Library SET available = 'No' WHERE book_id = 1;
					SELECT * FROM Library WHERE title LIKE '%Science%';
					ALTER TABLE Library DROP COLUMN available;
					ALTER TABLE Library ADD COLUMN available VARCHAR(10);
					TRUNCATE TABLE Library;
					SELECT * FROM Library ORDER BY book_id;

					
DROP TABLE Hostel;
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
					ALTER TABLE Hostel ADD floor SERIAL;
					UPDATE Hostel SET block = 'C' WHERE room_no = 102;
					SELECT * FROM Hostel ORDER BY room_no;


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
					UPDATE Fees SET status = 'Paid' WHERE fee_id = 2;
					SELECT * FROM Fees ORDER BY fee_id;


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
					UPDATE Attendance SET status =  'Absent' WHERE attendance_id = 4;
					SELECT * FROM Attendance WHERE status = 'Absent'
					SELECT*FROM  Attendance ORDER BY  attendance_id;



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
					UPDATE Admins SET role = 'Admin' WHERE username = 'admin2';
					SELECT * FROM Admins WHERE username LIKE 'admin_';
					 


	

