{Unit Save}
unit saveData;

{Interface}
interface
	
	uses typedata;
	
	{Procedure Save}
	procedure save (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure Save}
	procedure save (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		i, j : integer;
		F    : text;
		
	{Algoritma Procedure}
	begin
		
		{File Inventori Bahan Mentah}
		case N of
			1  : begin
					assign (F, 'Inventori Bahan Mentah 1.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Mentah 2.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Mentah 3.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
						writeln (F, '');
					close (F);
				 end;
			4  : begin
					assign (F, 'Inventori Bahan Mentah 4.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			5  :begin
					assign (F, 'Inventori Bahan Mentah 5.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			6  : begin
					assign (F, 'Inventori Bahan Mentah 6.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			7  : begin
					assign (F, 'Inventori Bahan Mentah 7.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			8  : begin
					assign (F, 'Inventori Bahan Mentah 8.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			9  : begin
					assign (F, 'Inventori Bahan Mentah 9.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close(F);
				 end;
			10 : begin
					assign (F, 'Inventori Bahan Mentah 10.txt');
					rewrite (F);
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
		end;
		
		{File Inventori Bahan Olahan}
		case N of
			1  : begin
					assign (F, 'Inventori Bahan Olahan 1.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Olahan 2.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Olahan 3.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			4  : begin
					assign (F, 'Inventori Bahan Olahan 4.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			5  :begin
					assign (F, 'Inventori Bahan Olahan 5.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			6  : begin
					assign (F, 'Inventori Bahan Olahan 6.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			7  : begin
					assign (F, 'Inventori Bahan Olahan 7.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			8  : begin
					assign (F, 'Inventori Bahan Olahan 8.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			9  : begin
					assign (F, 'Inventori Bahan Olahan 9.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
			10 : begin
					assign (F, 'Inventori Bahan Olahan 10.txt');
					rewrite (F);
						for i:=1 to IBO.LFIBO[N].Neff do
							begin
								writeln (F, IBO.LFIBO[N].FIBO[i].Nama);
								writeln (F, IBO.LFIBO[N].FIBO[i].Waktu.dd, ' ', IBO.LFIBO[N].FIBO[i].Waktu.mm, ' ', IBO.LFIBO[N].FIBO[i].Waktu.yy);
								writeln (F, IBO.LFIBO[N].FIBO[i].Jumlah);
								writeln (F, '');
							end;
					close (F);
				 end;
		end;
		
		{File Resep}
		assign (F, 'Resep.txt');
		rewrite (F);
			for i:=1 to R.Neff do
				begin
					writeln (F, R.FR[i].Nama);
					writeln (F, R.FR[i].Harga);
					writeln (F, R.FR[i].Jumlah);
					for j:=1 to (R.FR[i].Jumlah) do
						begin
							writeln (F, R.FR[i].Bahan[j]);
						end;
					writeln (F, '');
				end;
		close(F);
		
		{File Simulasi}
		assign (F, 'Simulasi.txt');
		rewrite (F);
			for i:=1 to S.Neff do
				begin
					writeln (F, S.FS[i].Nomor);
					writeln (F, S.FS[i].Waktu.dd, ' ', S.FS[i].Waktu.mm, ' ', S.FS[i].Waktu.yy);
					writeln (F, S.FS[i].Hidup);
					writeln (F, S.FS[i].Energi);
					writeln (F, S.FS[i].Kapasitas);
					writeln (F, S.FS[i].BeliMentah);
					writeln (F, S.FS[i].BuatOlahan);
					writeln (F, S.FS[i].JualOlahan);
					writeln (F, S.FS[i].JualResep);
					writeln (F, S.FS[i].Pemasukan);
					writeln (F, S.FS[i].Pengeluaran);
					writeln (F, S.FS[i].Saldo);
					writeln (F, '');
				end;
		close(F);
		
		writeln (' // Save file berhasil. //');
	end;

end.
