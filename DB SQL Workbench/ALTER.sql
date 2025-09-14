create database sekolah;

use sekolah;

create table guru
(
nip int not null primary key auto_increment,
nama varchar(50) not null,
jenis_kelamin varchar (20) not null,
alamat text
);

select * from guru;

ALTER TABLE guru ADD COLUMN status VARCHAR(20) NULL;
-- Menambahkan Field uMUR Setelah Field Jenis Kelamin
ALTER TABLE guru ADD COLUMN umur INT NULL AFTER jenis_kelamin;
-- Menambahkan Field Hobi Setelah Field Alamat
ALTER TABLE guru ADD COLUMN hobi varchar (50) NULL AFTER alamat;

-- Menghapus Field Status Pada Tabel Guru
ALTER TABLE guru DROP status;
ALTER TABLE guru DROP hobi;

-- Memindahkan Filed Umur Setelah Field Alamat
ALTER TABLE guru MODIFY umur INT NULL AFTER alamat;

-- Mengubah Field Alamat Menjadi Field Gaji
ALTER TABLE guru CHANGE alamat gaji VARCHAR(20) NOT NULL;

-- Mengganti Nama Table 
ALTER TABLE karyawan RENAME guru;





