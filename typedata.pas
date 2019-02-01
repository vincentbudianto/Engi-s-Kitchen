{Unit Type Data}
unit typedata;

{Interface}
interface

	{Constant}
	const
		Nmax = 1000;
		Emax = 10; {Jumlah Energi Maksimum}
		
	{Type Data}
	type
		{Tanggal}
		tanggal = record
			dd : integer; {Hari}
			mm : integer; {Bulan}
			yy : integer; {Tahun}
		end;
		
		{Bahan Mentah}
		bahanMentah = record
			Nama   : string; {Nama Bahan Mentah}
			Harga  : longint; {Harga Beli Bahan Mentah}
			Durasi : integer; {Durasi Kadaluarsa Bahan Mentah (Hari)}
		end;
		
		{File Bahan Mentah}
		tabBahanMentah = record
			FBM  : array [1..Nmax] of bahanMentah;
			Neff : integer;
		end;
		
		{Bahan Olahan}
		bahanOlahan = record
			Nama    : string; {Nama Bahan Olahan}
			Harga   : longint; {Harga Jual Bahan Olahan}
			Jumlah  : integer; {Jumlah Bahan Mentah Yang Menyusun Bahan Olahan}
			Bahan   : array [1..Nmax] of string; {Bahan Mentah Yang Digunakan Untuk Membuat Bahan Olahan}
		end;
		
		{File Bahan Olahan}
		tabBahanOlahan = record
			FBO  : array [1..Nmax] of bahanOlahan;
			Neff : integer;
		end;
		
		{Inventori Bahan Mentah}
		inventoriBahanMentah = record
			Nama   : string; {Nama Bahan Mentah Di Inventori}
			Waktu  : tanggal; {Tanggal Bahan Mentah Dibeli}
			Jumlah : integer; {Jumlah Bahan Mentah Di Inventori}
		end;
		
		{File Inventori Bahan Mentah}
		tabInventoriBahanMentah = record
			FIBM : array [1..Nmax] of inventoriBahanMentah;
			Neff : integer;
		end;
		
		{List File Inventori Bahan Mentah}
		fileInventoriBahanMentah = record
			LFIBM : array [1..10] of tabInventoriBahanMentah;
		end;
		
		{Inventori Bahan Olahan}
		inventoriBahanOlahan = record
			Nama   : string; {Nama Bahan Olahan Di Inventori}
			Waktu  : tanggal; {Tanggal Bahan Olahan Dibuat}
			Jumlah : integer; {Jumlah Bahan Olahan Di Inventori}
		end;
		
		{File Inventori Bahan Olahan}
		tabInventoriBahanOlahan = record
			FIBO : array [1..Nmax] of inventoriBahanOlahan;
			Neff : integer;
		end;
		
		{List File Inventori Bahan Olahan}
		fileInventoriBahanOlahan = record
			LFIBO : array [1..10] of tabInventoriBahanOlahan;
		end;
		
		{Resep}
		resep = record
			Nama   : string; {Nama Resep}
			Harga  : longint; {Harga Jual Resep}
			Jumlah : integer; {Jumlah Bahan Yang Digunakan Untuk Membuat Resep}
			Bahan  : array [1..Nmax] of string; {Bahan Yang Digunakan Untuk Membuat Resep}
		end;
		
		{File Resep}
		tabResep = record
			FR   : array [1..Nmax] of resep;
			Neff : integer;
		end;
		
		{Simulasi}
		simulasi = record
			Nomor		: integer; {Nomor Simulasi}
			Waktu		: tanggal; {Tanggal Mulai Simulasi}
			Hidup		: integer; {Waktu Bermain}
			Energi		: integer; {Energi}
			Kapasitas	: integer; {Kapasitas Maksimum Inventori}
			BeliMentah	: integer; {Jumlah Bahan Mentah Yang Dibeli}
			BuatOlahan	: integer; {Jumlah Bahan Olahan Yang Dibuat}
			JualOlahan  : integer; {Jumlah Bahan Olahan Yang Dijual}
			JualResep   : integer; {Jumlah Resep Yang Dijual}
			Pemasukan   : longint; {Total Pemasukan}
			Pengeluaran : longint; {Total Pengeluaran}
			Saldo       : longint; {Jumlah Saldo Tersisa}
		end;
		
		{File Simulasi}
		tabSimulasi = record
			FS   : array [1..10] of simulasi;
			Neff : integer;
		end;
	
	var
		Btidur					: boolean; {Boleh tidur atau tidak}
		v						: boolean; {Validasi}
		JmlI 				    : integer; {Jumlah item di inventori}
		JmlU					: integer; {Jumlah Upgrade Inventori dilakukan}
		Kistirahat			    : integer; {Kesempatan istirahat tersisa}
		Kmakan				    : integer; {Kesempatan makan tersisa}
		TbahanMentah 		    : tabBahanMentah;
		TbahanOlahan 		    : tabBahanOlahan;
		TinventoriBahanMentah   : fileInventoriBahanMentah;
		TinventoriBahanOlahan   : fileInventoriBahanOlahan;
		Tresep 				    : tabResep;
		Tsimulasi 			    : tabSimulasi;
		
{Implementation}	
implementation

end.
