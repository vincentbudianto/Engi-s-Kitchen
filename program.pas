{Program}
program EngisResto;

{Sebuah program simulasi permainan restoran dimana kita diberikan modal awal untuk berbelanja bahan-bahan di supermarket. Bahan-bahan ini memiliki harga
 tertentu per piece dan durasi kadaluarsa (hari). Saat dibeli, bahan-bahan ini akan masuk ke dalam inventori restoran. Inventori bisa terbatas dan kita bisa
 mengupgradenya untuk menambah ruang. Bahan-bahan yang telah dibeli bisa diolah menjadi suatu produk baru yang lebih tinggi harga jualnya. Permainan ini
 menggunakan sistem energi dimana setiap aktivitas akan menggunakan 1 energi. Ketika habis, pengguna harus makan, istirahat, atau tidur. Makan dapat dilakukan
 sebanyak 3x sehari dan memberikan 3 energi, istirahat dapat dilakukan sebanyak 6x dan memberikan 1 energi, tidur memulihkan energi menjadi 10 energi, dan 
 setelah tidur dilakukan, akan terjadi pergantian hari.}

{---------------------------------------------------------------------------------------------------------------------------------------------------------------}

{Unit}
uses Fmenu;

{---------------------------------------------------------------------------------------------------------------------------------------------------------------}

{Algroritma}
begin
	menu ();
end.
