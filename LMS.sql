drop database if exists LMS;
create database LMS;

grant all on LMS.* to linuxgirl@linuxgirl identified by 'pakistan';

use LMS;

create table books(
ISBN varchar(50) primary key,
book_name varchar(50),
book_author varchar(50) not null,
category varchar(50),
quantity_of_books int unsigned ,
title varchar(50),
rack_no varchar(50),
librarycard_no int unsigned ,
students_regno int unsigned
);

create table students(
student_name varchar(50),
student_regno int unsigned primary key,
st_id varchar(50),
st_password varchar(50),
no_of_issuedbooks int unsigned
);


create table library_card(
library_card_number int unsigned primary key,
validity_date int unsigned,
students_regno int unsigned,
foreign key (students_regno) references students(student_regno),
issue_date int unsigned
);

create table librarian(
lib_id int unsigned primary key,
lib_password int unsigned 
);

create table book_issue(
ISBN_no int unsigned,
book_name varchar(50),
student_regno int unsigned,
library_card_number int unsigned,
issue_date int unsigned,
return_date int unsigned
);

create table book_reserve(
ISBN int unsigned,
book_name varchar(50),
student_regno int unsigned,
library_card_number int unsigned primary key,
issue_date int unsigned,
st_id varchar(50));

create table OPAC(
student_regno int unsigned,
book_name varchar(50),
book_author varchar(50) not null,
ISBN int unsigned);


create table login(
st_id varchar(50),
st_password varchar(50));


create table library_manager(
lib_id varchar(50),
lib_man_id varchar(50),
lib_man_password varchar(50)
);

create table add_books
     (book_name varchar(50),
    ISBN varchar(50),
    title varchar(50),
     author varchar(50),
    no_of_copies int(50));


