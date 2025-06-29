create database Many_To_Many_Project;
 --Example One-- 
        DROP TABLE IF EXISTS students;
		create table students (
		    student_id int primary key,
		    student_name varchar(100)
		);
DROP TABLE IF EXISTS courses;
create table courses (
    course_id int primary key,
    course_name varchar(100)
);

create table student_courses (
    student_id int,
    course_id int,
    enrollment_date date,
    primary key (student_id, course_id),
    foreign key (student_id) references students(student_id),
    foreign key (course_id) references courses(course_id)
);

insert into students values (1, 'Sajid'), (2, 'Nvaeed');
insert into courses values (101, 'database systems'), (102, 'OOP');
insert into student_courses values (1, 101, '2025-06-29');

select s.student_name, c.course_name, sc.enrollment_date
from students s
join student_courses sc on s.student_id = sc.student_id
join courses c on sc.course_id = c.course_id;

 --Example Two--
create table doctors (
    doctor_id int primary key,
    doctor_name varchar(100),
    specialization varchar(100)
);

create table patients (
    patient_id int primary key,
    patient_name varchar(100),
    age int
);

create table appointments (
    doctor_id int,
    patient_id int,
    appointment_date date,
    primary key (doctor_id, patient_id, appointment_date),
    foreign key (doctor_id) references doctors(doctor_id),
    foreign key (patient_id) references patients(patient_id)
);


insert into doctors values (1, 'Dr. Ali', 'cardiology'), (2, 'Dr. Hseena', 'pediatrics');
insert into patients values (101, 'usman', 35), (102, 'fatima', 28);
insert into appointments values (1, 101, '2025-06-25');

select d.doctor_name, p.patient_name, a.appointment_date
from doctors d
join appointments a on d.doctor_id = a.doctor_id
join patients p on a.patient_id = p.patient_id;

-- Example Three --
create table books (
    book_id int primary key,
    title varchar(100),
    genre varchar(100)
);

create table authors (
    author_id int primary key,
    author_name varchar(100)
);

create table book_authors (
    book_id int,
    author_id int,
    primary key (book_id, author_id),
    foreign key (book_id) references books(book_id),
    foreign key (author_id) references authors(author_id)
);

insert into books values (1, 'database design', 'technical'), (2, 'web dev basics', 'technical');
insert into authors values (10, 'ali khan'), (20, 'sara ahmed');
insert into book_authors values (1, 10), (1, 20),(2, 10); 

select b.title, a.author_name
from books b
join book_authors ba on b.book_id = ba.book_id
join authors a on ba.author_id = a.author_id;

-- Example Four --
DROP TABLE IF EXISTS users;
create table users (
    user_id int primary key,
    username varchar(100)
);

create table users1 (
    user_id int primary key,
    username varchar(100)
);

create table grp (
    group_id int primary key,
    group_name varchar(100)
);

create table user_groups (
    user_id int,
    group_id int,
    join_date date,
    primary key (user_id, group_id),
    foreign key (user_id) references users(user_id),
    foreign key (group_id) references grp(group_id)
);

insert into users values (1, 'ali_tech'), (2, 'sara_dev');
insert into grp values (100, 'web developers'), (200, 'data scientists');
insert into user_groups values (1, 100, '2024-03-01'), (1, 200, '2024-03-02'),(2, 100, '2024-03-03');

select u.username, g.group_name, ug.join_date
from users u
join user_groups ug on u.user_id = ug.user_id
join grp g on ug.group_id = g.group_id;


-- Example Five --
create table movies (
    movie_id int primary key,
    title varchar(100),
    release_year int
);

create table actors (
    actor_id int primary key,
    actor_name varchar(100)
);

create table movie_actors (
    movie_id int,
    actor_id int,
    role varchar(100),
    primary key (movie_id, actor_id),
    foreign key (movie_id) references movies(movie_id),
    foreign key (actor_id) references actors(actor_id)
);

insert into movies values (1, 'the great adventure', 2023), (2, 'mystery island', 2024);
insert into actors values (10, 'ahmed khan'), (20, 'sana ali');
insert into movie_actors values (1, 10, 'hero'),(1, 20, 'heroine'), (2, 10, 'villain'); 
select m.title, a.actor_name, ma.role
from movies m
join movie_actors ma on m.movie_id = ma.movie_id
join actors a on ma.actor_id = a.actor_id;