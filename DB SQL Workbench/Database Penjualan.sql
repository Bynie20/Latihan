create database db_penjualan;
use db_penjualan;
create table Table_Transaksi
(
 No_Faktur varchar(10) not null primary key,
 Tgl varchar(20) not null,
 Kode_Pelanggan varchar(10) not null
);
insert into Table_Transaksi values
('F-001','12/12/2016','P-001'),
('F-002','13/12/2016','P-002');

create table Detail
(
No_Faktur varchar(10) primary key not null,
Kode_Barang varchar(10) not null,
Qty int not null
);

insert into Detail values
('F-001','B-001','1'),
('F-002','B-002','1'),
('F-003','B-003','1'),
('F-004','B-004','2');

create table Table_Barang
(
Kode_Barang varchar (25) primary key not null,
Nama_Barang varchar (25) not null,
Harga char(11) not null
);

insert into Table_Barang values
('B-001','Sampo','12.000,-'),
('B-002','Kopi','15.000,-'),
('B-003','Teh','7.000,-');

create table Table_Pelanggan 
(
Kode_Pelanggan varchar (30) primary key not null,
Nama varchar (30)
);
insert into Table_Pelanggan values
('P-001','M Fikri Setiadi'),
('P-002','Jack');

select * from Table_Transaksi;
select * from Detail;
select * from Table_Barang;
select * from Table_Pelanggan;