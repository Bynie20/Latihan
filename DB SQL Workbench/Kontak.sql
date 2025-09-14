create database kontak;
use kontak;
create table daftar_kontak
(
 id int not null primary key,
 no_telepon varchar (20) not null,
 nama_kontak varchar(25) not null,
 alamat varchar(250),
 nama_perusahaan varchar(125) null
);

insert into daftar_kontak values
(1,"+6281255679876","Wisnu Jordi","Tangerang","");
SELECT * FROM kontak.daftar_kontak;
drop table daftar_kontak;