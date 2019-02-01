{Unit Delete}
unit delete;

{Interface}
interface
	
	uses typedata;
	
	{Procedure Delete Inventori Bahan Mentah}
	procedure deleteIBM (var IBM : fileInventoriBahanMentah; var N : integer);
	{I.S. }
	{F.S. }
	
	{Procedure Delete Inventori Bahan Olahan}
	procedure deleteIBO (var IBO : fileInventoriBahanOlahan; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure Delete Inventori Bahan Mentah}
	procedure deleteIBM (var IBM : fileInventoriBahanMentah; var N : integer);
	
	{Kamus Lokal}
	var
		i : integer;
		F : text;
	
	{Algoritma Procedure}
	begin
		for i:=1 to (IBM.LFIBM[N].Neff) do
			begin
				if (IBM.LFIBM[N].FIBM[i].Jumlah = 0) then
					begin
						IBM.LFIBM[N].FIBM[i].Nama   := IBM.LFIBM[N].FIBM[i+1].Nama;
						IBM.LFIBM[N].FIBM[i].Waktu  := IBM.LFIBM[N].FIBM[i+1].Waktu;
						IBM.LFIBM[N].FIBM[i].Jumlah := IBM.LFIBM[N].FIBM[i+1].Jumlah;
						IBM.LFIBM[N].Neff           := IBM.LFIBM[N].Neff - 1;
					end;
			end;
		
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
						for i:=1 to IBM.LFIBM[N].Neff do
							begin
								writeln (F, IBM.LFIBM[N].FIBM[i].Nama);
								writeln (F, IBM.LFIBM[N].FIBM[i].Waktu.dd, ' ', IBM.LFIBM[N].FIBM[i].Waktu.mm, ' ', IBM.LFIBM[N].FIBM[i].Waktu.yy);
								writeln (F, IBM.LFIBM[N].FIBM[i].Jumlah);
								writeln (F, '');
							end;
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
	end;
	
	{Procedure Delete Inventori Bahan Olahan}
	procedure deleteIBO (var IBO : fileInventoriBahanOlahan; var N : integer);
	
	{Kamus Lokal}
	var
		i : integer;
		F : text;
	
	{Algoritma Procedure}
	begin
		for i:=1 to (IBO.LFIBO[N].Neff) do
			begin
				if (IBO.LFIBO[N].FIBO[i].Jumlah = 0) then
					begin
						IBO.LFIBO[N].FIBO[i].Nama   := IBO.LFIBO[N].FIBO[i+1].Nama;
						IBO.LFIBO[N].FIBO[i].Waktu  := IBO.LFIBO[N].FIBO[i+1].Waktu;
						IBO.LFIBO[N].FIBO[i].Jumlah := IBO.LFIBO[N].FIBO[i+1].Jumlah;
						IBO.LFIBO[N].Neff           := IBO.LFIBO[N].Neff - 1;
					end;
			end;
		
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
	end;
	
end.
