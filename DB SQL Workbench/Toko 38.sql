create database db_toko38;
use db_toko38;
create table Table_Pelanggan
(
Kd_Pelanggan int not null primary key,
Nama_Pelanggan char (50) not null,
No_Telp int (13) not null,
Alamat varchar(70) not null,
Email varchar(30) not null
);

create table Table_Produk
(
Kd_Produk int not null primary key,
Nama_Produk char (90) not null,
Harga int not null
);

create table Table_Transaksi
(
Kd_Transaksi int(10) primary key,
Kd_Pelanggan int not null,
Kd_Pesan int (11) unique not null,
Tgl_Transaksi datetime not null,
Status_Bayar varchar(10) not null,
foreign key (Kd_Pelanggan) references Table_Pelanggan (Kd_Pelanggan)
);

create table Det_Transaksi
(
Kd_det int primary key,
Kd_Transaksi int not null,
Kd_Produk int not null,
Qty char (10) not null,
Total int not null,
foreign key (Kd_Transaksi) references Table_Transaksi (Kd_Transaksi),
foreign key (Kd_Produk) references Table_Produk (Kd_Produk)
);
desc Det_Transaksi;
select * from Table_Pelanggan;
select * from Table_Produk;