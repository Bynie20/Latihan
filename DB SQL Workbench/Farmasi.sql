create database farmasi;
use farmasi;
create table obat
(
kode int primary key not null,
nama varchar (50) not null,
jenis varchar (30) not null,
tgl_kadaluarsa date not null,
deskripsi text not null,
harga int not null
);

insert into obat values
(101,'Panadol','Tablet','2022-12-12','Obat Sakit Kepala',3500),
(102,'Bodrex','Tablet','2023-11-30','Obat Sakit Kepala',4000),
(103,'Laserin','Cair','2025-09-08','Obat Batuk',1300),
(104,'FG Troces','Tablet','2022-11-10','Obat Sakit Tenggorokan',10000),
(105,'Kombantrin','Cair','2022-12-18','Obat Cacing',7600);
insert into obat values
(106,'Pagoda','Kapsul','2023-01-10','Obat Gatal',2400),
(107,'Sanadri','Kapsul','2024-11-14','Obat Batuk',7000),
(108,'Paramex','Cair','2023-12-23','Obat Sakit Kepala',9000),
(109,'Tablet','Tablet','2022-09-12','Obat Pilek',150);

SELECT * FROM farmasi.obat;
select sum(harga) as "Total Harga Obat" from obat;
select sum(harga) as "Total_Harga_Obat_Berjenis_Tablet" from obat where jenis="Tablet";
select sum(harga) as "Total_Harga_Obat" from obat where tgl_kadaluarsa between "2022-11-10" and "2022-11-30";
select count(*) as "Jumlah_Data" from obat;
select avg(harga) as "Harga_rata-rata" from obat;
select min(harga) as "Harga_Terkecil" from obat;
select max(harga) as "Harga_Terbesar" from obat;

select jenis, sum(harga) as "Total_Harga"from obat group by jenis;











