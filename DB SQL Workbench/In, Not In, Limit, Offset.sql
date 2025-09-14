select * from Produk where Kd_Produk in (Harga);
select * from Produk where Kd_Produk not in (Harga);

select Nm_Produk from Produk limit 2 offset 1;

SELECT SUM(Total) as Total_Harga FROM Det_Transaksi Where Kd_Produk="2-001" and Kd_Transaksi="1609848925";


SELECT SUM(Harga*Qty) as Total_Harga FROM Det_Transaksi;