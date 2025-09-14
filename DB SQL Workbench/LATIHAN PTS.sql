create database kantin;
use kantin;

create table makanan
(
kode_makanan varchar (10) primary key not null,
nama_makanan varchar (30) not null,
deskripsi text not null,
penjual text not null,\
harga int not null
);

insert into makanan value
('A01','Gado - Gado','Sayuran dengan saos kacang yang lezat','Warung Yanma',12000),
('A02','Ketoprak','Ketupat, Bihun dan Tahu dengan siraman saos kacang','Warung Yanma',12000),
('A03','Nasi Bakar','Nasi dibungkus daun pisang dengan aroma smoky','Warung Yanma',10000),
('A04','Ayam Geprek','Ayam goreng dengan sensasi pukulan saitama','Bu Yanti',14000),
('A05','Ayam Fillet Goreng','Ayam tanpa tulang digoreng kering','Pak Warso',15000),
('A06','Nasi Rames','Nasi campur lauk pauk dengan sensasi padang','Bu Yanti',9000);

UPDATE makanan SET harga ="13000" Where kode_makanan='A02';
select * from makanan;
DELETE FROM makanan Where kode_makanan='A06';
