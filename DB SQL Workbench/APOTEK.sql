create database apotek;
use apotek;
create table obat
(
kode int primary key not null,
nama varchar (50) not null,
jenis varchar (25) not null,
deskripsi text not null,
satuan varchar (25) not null,
status varchar (25) not null
);

desc obat;

insert into obat value
(1,'Antangin','Obat Masuk Angin','Enak','Pcs','Dipakai'),
(2,'Promagh','Obat Magh','Pahit','Pcs','Dipakai'),
(3,'Panadol','Obat Pusing','Enak','Pcs','Dipakai');



UPDATE obat SET deskripsi ="Manis" Where kode=3;
select * from obat;