# MySQL
create database nani;
create table users(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) unique not null,
    gender enum('Male', 'Female', 'Other'),
    date_of_birth date,
	created_at timestamp default current_timestamp
);
select * from users;
use nani;
select id, email from users;
-- drop database nani;  (to clear data base)
rename table users to programmers;
rename table programmers to users;
alter table users add column is_active boolean default true;
-- alter table users drop column is_active;  (to delete column)
