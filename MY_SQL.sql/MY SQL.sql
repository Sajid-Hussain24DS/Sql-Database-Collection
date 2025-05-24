		CREATE DATABASE IF NOT EXISTS student_record_manager;
		use  student_record_manager;
		CREATE TABLE student_record(
		student_id INT AUTO_INCREMENT PRIMARY KEY,
		name varchar(255) NOT NULL,
		marks numeric(10,2),
		grade varchar (255)
		);
        
        CREATE DATABASE IF NOT EXISTS employee_record_manager;
		USE employee_record_manager;
		DROP TABLE IF EXISTS employee_record;
		CREATE TABLE employee_record (
        employee_id INT AUTO_INCREMENT PRIMARY KEY,
		name varchar(255) NOT NULL,
        department varchar(255),
		hire_date date,
        salary numeric(10,2)        
        );
        
	    CREATE DATABASE IF NOT EXISTS book_shelf;
		USE book_shelf;
		DROP TABLE IF EXISTS books;
        CREATE TABLE books(
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title varchar(255),
        author varchar(255),
        published_year year,
        available varchar(255)
        );
        
        CREATE DATABASE Expense_Buddy;
        USE  Expense_Buddy;
        CREATE TABLE expenses(
		expense_id INT AUTO_INCREMENT PRIMARY KEY,
		catagory varchar(255),
		amount int(11),
		date Date,
		note varchar(255)
        );
        
        CREATE DATABASE  Task_Master;
        USE  Task_Master;
        CREATE TABLE tasks(
		task_id INT AUTO_INCREMENT PRIMARY KEY,
		description varchar(255),
		due_date date,
		status varchar(255)
        );
        
        
			CREATE DATABASE IF NOT EXISTS   Fitness_Log;
			USE  Fitness_Log;
			CREATE TABLE fitness_logs(
			log_id INT AUTO_INCREMENT PRIMARY KEY,
			date DATE,
			activity varchar(255),
			duration INT(11),
			calories_burned int(11)
			);
            
            CREATE DATABASE  Movie_Mania_DB;
			USE  Movie_Mania_DB;
			CREATE TABLE movies(
			movie_id INT AUTO_INCREMENT PRIMARY KEY,
            title varchar(255),
            release_date date,
            rating decimal(10,2)
       );
       
       
			CREATE DATABASE IF NOT EXISTS  Contact_Saver;
			USE  Contact_Saver;
            DROP TABLE IF EXISTS contacts;
			CREATE TABLE contacts(
			contact_id INT AUTO_INCREMENT PRIMARY KEY,
            name varchar(255),
			phone varchar(15),
            email varchar(255),
            address varchar(255)
       );
       
			CREATE DATABASE  Weather_Note;
			USE  Weather_Note;
			CREATE TABLE weather_notes(
			contact_id INT AUTO_INCREMENT PRIMARY KEY,
            date DATE,
			temperature decimal(10,2),
			humidity decimal(10,2),
            description varchar(255)
       );
         