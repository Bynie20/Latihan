create database toko38;
use toko38;
create table Pelanggan(
Kd_Pelanggan varchar(10) not null primary key,
Nama_Pelanggan varchar(50) not null,
No_Telp varchar(13),
Alamat text,
Email varchar(50)
);

insert into Pelanggan values
("1-001","Moh Ali Aljauhari","087867459009","Jl. Kliningan Lengkong Kota Bandung","alijauhari@gmail.com");

select * from Pelanggan;


create table Produk(
Kd_Produk varchar(10) not null primary key,
Nm_Produk varchar(80) not null,
Harga varchar(10)
);

insert into Produk values
("2-001","Knowledge Zenith Case Earphone Kulit","6.900"),
("2-002","SKEI Children Sport LED Watch - DG1097","21.000");

select * from Produk;


create table Transaksi(
Kd_Transaksi int(10) primary key,
Kd_Pelanggan varchar(10) not null,
Kd_Pesan varchar(20) not null,
Tgl_Transaksi datetime not null,
Status_bayar varchar(10) not null,
foreign key (Kd_Pelanggan) references Pelanggan (Kd_Pelanggan)
);

insert into Transaksi values
("1609848925","1-001","21648060339","2017-02-22;15:16","Lunas");

select * from Transaksi;
create table Det_Transaksi(
Kd_Det varchar(5) primary key,
Kd_Transaksi int(10) not null,
Kd_Produk varchar(10) not null,
Qty int(3) not null,
Total varchar(15) not null,
foreign key (Kd_Transaksi) references Transaksi (Kd_Transaksi),
foreign key (Kd_Produk) references Produk (Kd_Produk)
);

insert into Det_Transaksi values
("3-001","1609848925","2-001","2","13.800"),
("3-002","1609848925","2-002","1","21.000");

select * from Det_Transaksi;



SELECT Transaksi.Kd_Transaksi, Transaksi.Kd_Pelanggan, Det_Transaksi.Kd_Produk, Det_Transaksi.Total 
FROM Transaksi INNER JOIN Det_Transaksi ON Transaksi.Kd_Transaksi=Det_Transaksi.Kd_Transaksi;


	