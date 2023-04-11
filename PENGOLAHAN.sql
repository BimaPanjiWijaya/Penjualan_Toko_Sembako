/* penggunaaan schema */
use penjualan_mysql;

/* penggantian nama kolom */
ALTER TABLE penjualan RENAME COLUMN kuantum TO jumlah_barang;
ALTER TABLE penjualan RENAME COLUMN nominal TO total_pembelian;

/* melihat semua kolom pada tabel */
select * from penjualan;

/* melihat kolom tertentu pada tabel */
select * from penjualan
where barang = 'beras';

select * from penjualan
where barang = 'daging';

select * from penjualan
where barang = 'tepung';

select * from penjualan
where barang = 'gula';

select * from penjualan
where barang = 'migor';

/* Untuk mengetahui jumlah total penjulan barang berdasarkan jenis barang */
select count(*) from penjualan
where barang = 'beras';

select count(*) from penjualan
where barang = 'daging';

select count(*) from penjualan
where barang = 'tepung';

select count(*) from penjualan
where barang = 'gula';

select count(*) from penjualan
where barang = 'migor';

/* Untuk mengetahui jumlah seluruh penjualan barang secara berulang pada setiap pembeli */
select tanggal,pembeli,barang as jenis_barang, count(*) as jumlah_barang from penjualan group by tanggal,pembeli,barang;

/* Untuk mengetahui jumlah seluruh total barang terjual */
select barang, sum(jumlah_barang) as jumlah from penjualan group by barang;

/* total seluruh barang */
select SUM(jumlah_barang) as total_barang from penjualan;

