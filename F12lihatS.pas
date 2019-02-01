{Unit F12lihatStatistik}
unit F12lihatS;

{Interface}
interface

	uses typedata;
	
	{Procedure F12lihatStatistik}
	procedure F12lihatStatistik (var S : tabSimulasi; var N : integer);
	{Fitur lihatStatistik yang dapat menampilkan progress dalam simulasi yang sedang berjalan}
	
{Implementation}
implementation
	
	{Procedure F12lihatStatistik}
	procedure F12lihatStatistik (var S : tabsimulasi; var N : integer);
	
	{Algoritma Procedure}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' |                                 STATISTIK                                  |');
		writeln (' | -------------------------------------------------------------------------- |');
		writeln ('               Nomor Simulasi : ', S.FS[N].Nomor);
		writeln ('                      Tanggal : ', S.FS[N].Waktu.dd, '/', S.FS[N].Waktu.mm, '/', S.FS[N].Waktu.yy);
		writeln ('            Jumlah Hari Hidup : ', S.FS[N].Hidup);
		writeln ('                Jumlah Energi : ', S.FS[N].Energi);
		writeln ('             Jumlah Inventori : ', JmlI);
		writeln (' Kapasitas Maksimum Inventori : ', S.FS[N].Kapasitas);
		writeln ('    Total Bahan Mentah Dibeli : ', S.FS[N].BeliMentah);
		writeln ('    Total Bahan Olahan Dibuat : ', S.FS[N].BuatOlahan);
		writeln ('    Total Bahan Olahan Dijual : ', S.FS[N].JualOlahan);
		writeln ('           Total Resep Dijual : ', S.FS[N].JualResep);
		writeln ('              Total Pemasukan : ', S.FS[N].Pemasukan);
		writeln ('            Total Pengeluaran : ', S.FS[N].Pengeluaran);
		writeln ('                   Total Uang : ', S.FS[N].Saldo);
	end;
	
end.
