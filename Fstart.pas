{Unit Start}
unit Fstart;

{Interface}
interface

	{Procedure Start}
	procedure start ();
	{I.S. Tidak ad variabel input}
	{F.S. Menampilkan pilihan menu dilayar} 

{Implementation}
implementation

	{Procedure Start}
	procedure start ();

	{Algoritma Procedure Start}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' |                      Selamat datang di Engis Kitchen                       |');
		writeln (' | -------------------------------------------------------------------------- |');
		writeln ('                     load : Membaca semua data dari file');
		writeln ('                     exit : Keluar dari Engis Kitchen');
		writeln ('            startSimulasi : Memulai simulasi ke-N');
		writeln ('             stopSimulasi : Menghentikan simulasi');
		writeln ('                beliBahan : Membeli bahan mentah dari supermarket');
		writeln ('                olahBahan : Mengolah bahan mentah menjadi bahan olahan');
		writeln ('               jualOlahan : Menjual bahan olahan');
		writeln ('                jualResep : Membuat dan menjual hidangan berdasarkan resep');
		writeln ('                    makan : Melakukan aktivitas makan');
		writeln ('                istirahat : Melakukan aktivitas istirahat');
		writeln ('                    tidur : Melakukan aktivitas tidur');
		writeln ('           lihatStatistik : Menampilkan statistik');
		writeln ('           lihatInventori : Menampilkan barang di inventori');
		writeln ('               lihatResep : Melihat daftar resep');
		writeln ('                cariResep : Mencari resep');
		writeln ('              tambahResep : Menambahkan resep baru');
		writeln ('         upgradeInventori : Menambah kapasitas inventori');
		writeln (' | -------------------------------------------------------------------------- |');
	end;

end.
