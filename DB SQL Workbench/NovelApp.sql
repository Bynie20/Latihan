create database NovelApp;
use NovelApp;
create table novels
(
id int primary key,
judul varchar (100) not null 
);

insert into novels values
(1,"Solo Leveling");

drop table novels;

select * from novels;
drop database novelApp;