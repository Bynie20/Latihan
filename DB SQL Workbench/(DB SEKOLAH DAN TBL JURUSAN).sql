Create Database db_sekolah
Use db_sekolah
Create table tbl_siswa
(
nis_siswa char (9)  not null primary key,
nm_siswa varchar (30) not null,
alamat_siswa varchar (50) not null,
no_hp_siswa char (15)
)

Create table tbl_jurusan
(
kd_jurusan char (20) not null primary key,
nm_jurusan varchar (40) not null,
prodi_jurusan varchar (40) not null
)

insert into tbl_pegawai values
('32451','Rapu','DKI Jakarta','2006-1-2','Laki-laki','Blok M','Wakil Ketua','Staf','Rapu12@gmail.com','087872859403');