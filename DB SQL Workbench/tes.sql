create database buku_mapel;
use buku_mapel;
create table tb_buku
 (
 id_buku char(7) not null primary key,
 nama_buku varchar(30) not null,
 penerbit varchar(25) not null,
 no_isbn varchar(25) not null,
 harga int not null,
 pengarang varchar(25) not null
 );
 
 insert into tb_buku values
 ('BD11', 'Basis Data', 'Yudhistira', '978-602-445-393-0', '76000', 'Eka Mulya A'),
 ('PS10', 'Proyek IPAS', 'Erlangga', '978-623-266-740-2', '80000', 'Aji Aljauhari'),
 ('KM10', 'Kimia', 'Yudhistira', '978-602-445-337-4', '65000', 'Nurul Firdaus'),
 ('BI11', 'Bahasa Indonesia', 'Erlangga', '978-602-434-639-3', '70000', 'Aditya Ramadhan'),
 ('MT10', 'Matematika', 'Erlangga', '978-623-266-675-7', '79000', 'Pungky Lesmana'),
 ('EN12', 'English Forward', 'Erlangga', '978-602-241-901-3', '90000', 'Shyla K Lande');
 
 SELECT * from tb_buku;
 
 update tb_buku set harga='99000' where id_buku='MT10';
 
 delete from tb_buku where id_buku='BI11';