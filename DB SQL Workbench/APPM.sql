CREATE DATABASE APPM;
USE APPM;

CREATE TABLE pelapor (
    id_pelapor INT PRIMARY KEY,
    nama_pelapor VARCHAR(50) NOT NULL,
    alamat_pelapor VARCHAR(70) NOT NULL,
    nomor_telepon VARCHAR(15) NOT NULL
);

CREATE TABLE Pengaduan (
    id_pengaduan INT PRIMARY KEY,
    id_pelapor INT,
    judul VARCHAR(100) NOT NULL,
    isi_pengaduan TEXT,
    tanggal_pengaduan DATE,
    status_pengaduan VARCHAR(30),
    FOREIGN KEY (id_pelapor) REFERENCES Pelapor(id_pelapor)
);

CREATE TABLE Tanggapan (
    id_tanggapan INT PRIMARY KEY,
    id_pengaduan INT,
    isi_tanggapan TEXT,
    tanggal_tanggapan DATE,
    FOREIGN KEY (id_pengaduan) REFERENCES Pengaduan(id_pengaduan)
);

INSERT INTO Pelapor VALUES
(1,'Wisenu','Pedongkelan','+6287892811123');





INSERT INTO Pengaduan VALUES
(101, 1, 'Sampah Berserakan', 'Tempat sampah di taman kota penuh, sampah berserakan ke jalan.', '2024-01-23', 'Belum Ditanggapi');



INSERT INTO Tanggapan VALUES
(202, 101, 'Kami akan mengirim petugas ke lokasi untuk membersihkan sampah tersebut.', '2024-01-23');


SELECT * FROM Pelapor;
SELECT * FROM Pengaduan;
SELECT * FROM Tanggapan;

