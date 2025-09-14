#Membuat User Dengan Nama 'Fully' dan Password '1234'
CREATE USER 'Fully'@'localhost' IDENTIFIED BY '1234';

#Memberikan Akses Select Kepada User 'Fully'
GRANT SELECT ON db_klinik.tbl_obat TO 'Fully'@'localhost';

#Menghapus Akses Select Kepada User 'Fully'
REVOKE SELECT ON db_klinik.tbl_obat FROM 'Fully'@'localhost';

#Cek Hak Akses User
SHOW GRANTS FOR 'Fully'@'localhost';