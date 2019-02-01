{Unit Check}
unit check;

{Interface}
interface
	
	uses typedata;
	
	{Function Total Barang Mentah}
	function totalBarangIBM (nama : string; IBM : fileInventoriBahanMentah; N : integer) : integer;
	{I.S. }
	{F.S. }
	
	{Function Total Barang Olahan}
	function totalBarangIBO (nama : string; IBO : fileInventoriBahanOlahan; N : integer) : integer;
	{I.S. }
	{F.S. }

{Implementation}
implementation

	{Function Total Barang Mentah}
	function totalBarangIBM (nama : string; IBM : fileInventoriBahanMentah; N : integer) : integer;
	
	{Kamus Lokal}
	var
		i     : integer;
		enter : string;
		F     : text;
		
	{Algoritma Function}
	begin
		totalBarangIBM := 0;
		case N of
			1  : begin
					assign (F, 'Inventori Bahan Mentah 1.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Mentah 2.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Mentah 3.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			4  : begin
					assign (F, 'Inventori Bahan Mentah 4.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			5  : begin
					assign (F, 'Inventori Bahan Mentah 5.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			6  : begin
					assign (F, 'Inventori Bahan Mentah 6.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			7  : begin
					assign (F, 'Inventori Bahan Mentah 7.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			8  : begin
					assign (F, 'Inventori Bahan Mentah 8.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			9  : begin
					assign (F, 'Inventori Bahan Mentah 9.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			10 : begin
					assign (F, 'Inventori Bahan Mentah 10.txt');
					reset (F);
						IBM.LFIBM[N].Neff := 0;
						while not(EOF) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
		end;
		for i:=1 to IBM.LFIBM[N].Neff do
			begin
				if (nama = IBM.LFIBM[N].FIBM[i].Nama) then
					begin
						totalBarangIBM := totalBarangIBM + IBM.LFIBM[N].FIBM[i].Jumlah;
					end;
			end;
	end;
	
	{Function Total Barang Olahan}
	function totalBarangIBO (nama : string; IBO : fileInventoriBahanOlahan; N : integer) : integer;
	
	{Kamus Lokal}
	var
		i     : integer;
		enter : string;
		F     : text;
		
	{Algoritma Function}
	begin
		totalBarangIBO := 0;
		case N of
			1  : begin
					assign (F, 'Inventori Bahan Olahan 1.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Olahan 2.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Olahan 3.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			4  : begin
					assign (F, 'Inventori Bahan Olahan 4.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			5  : begin
					assign (F, 'Inventori Bahan Olahan 5.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			6  : begin
					assign (F, 'Inventori Bahan Olahan 6.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			7  : begin
					assign (F, 'Inventori Bahan Olahan 7.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			8  : begin
					assign (F, 'Inventori Bahan Olahan 8.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			9  : begin
					assign (F, 'Inventori Bahan Olahan 9.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
			10 : begin
					assign (F, 'Inventori Bahan Olahan 10.txt');
					reset (F);
						IBO.LFIBO[N].Neff := 0;
						while not(EOF) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
				 end;
		end;
		for i:=1 to IBO.LFIBO[N].Neff do
			begin
				if (nama = IBO.LFIBO[N].FIBO[i].Nama) then
					begin
						totalBarangIBO := totalBarangIBO + IBO.LFIBO[N].FIBO[i].Jumlah;
					end;
			end;
	end;

end.
