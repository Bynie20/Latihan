CREATE DATABASE perhotelan;
use perhotelan;

CREATE TABLE hotel (
    id_hotel INT PRIMARY KEY,
    nama_hotel VARCHAR(100) NOT NULL,
    alamat_hotel VARCHAR(100) NOT NULL,
    bintang INT,
    UNIQUE (nama_hotel)
);

-- Tabel untuk informasi kamar
CREATE TABLE kamar (
    id_kamar INT PRIMARY KEY,
    nomor_kamar VARCHAR(5) NOT NULL,
    jenis_kamar VARCHAR(50) NOT NULL,
    harga DECIMAL(10, 2),
    id_hotel INT,
    FOREIGN KEY (id_hotel) REFERENCES hotel(id_hotel)
);
-- Tabel untuk informasi tamu
CREATE TABLE tamu (
    id_tamu INT PRIMARY KEY,
    nama_tamu VARCHAR(50) NOT NULL,
    alamat_tamu VARCHAR(100) NOT NULL,
    email_tamu VARCHAR(50) NOT NULL,
    telepon_tamu VARCHAR(20) NOT NULL
);

-- Tabel untuk informasi pemesanan
CREATE TABLE pemesanan (
    id_pemesanan INT PRIMARY KEY,
    tanggal_pemesanan DATE,
    jumlah_orang INT NOT NULL,
    id_kamar INT,
    id_tamu INT,
    FOREIGN KEY (id_kamar) REFERENCES kamar(id_kamar),
    FOREIGN KEY (id_tamu) REFERENCES tamu(id_tamu)
);

INSERT INTO hotel VALUES
(1, 'Hotel XYZ', 'Jalan ABC No. 123', 4);

-- Insert data ke tabel kamar
INSERT INTO kamar VALUES
(1, '101', 'Suite', 150.00, 1);



-- Insert data ke tabel tamu
INSERT INTO tamu VALUES
(1, 'John Doe', 'Jalan DEF No. 456', 'john.doe@example.com', '123-456-7890');

-- Insert data ke tabel pemesanan
INSERT INTO pemesanan VALUES
(1, '2024-01-12', 2, 1, 1);



SELECT * FROM hotel;
SELECT * FROM kamar;
SELECT * FROM tamu;
SELECT * FROM pemesanan;