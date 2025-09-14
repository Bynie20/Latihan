create database Adminnovel;

create table tbl_novel
(
Admin_Name varchar (100) primary key,
Admin_Password varchar (100)
);

INSERT INTO "tbl_novel" ("Admin_Name", "Admin_Password")
VALUES ("Aji","iwan")