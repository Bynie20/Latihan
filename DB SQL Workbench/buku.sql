create database buku;
use buku;
create table daftar_buku
(
 id int not null primary key,
 judul varchar(50) not null,
 author varchar(25) not null,
 deskripsi text,
 kategori varchar(25) not null
);

insert into daftar_buku values
(01,"Omniscient Reader's Viewpoint","Sing Shong"," Omniscient Reader’s Viewpoint (ORV) karangan Sing Shong merupakan novel yang bercerita mengenai cerita dari novel favorit tokoh utama yang berjudul “The Ways to Survive in a Ruined World”, yang tiba-tiba jadi kenyataan","Komik");

SELECT * FROM buku.daftar_buku;

create table user
(
idlog int primary key,
username varchar (55) not null,
password varchar (255) not null
);

insert into user values 
(1,"aji","aji"),
(2,"ihwan","ihwan"),
(3,"rafi","rafi");
SELECT * FROM user;
drop table user;