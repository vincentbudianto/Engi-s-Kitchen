{Unit Sort}
unit sort;

{Interface}
interface
	
	uses typedata;
	
	{Procedure Tukar Nama}
	procedure tNama (var a : string; var b : string);
	{I.S. }
	{F.S. }
	
	{Procedure Tukar Waktu}
	procedure tWaktu (var d : tanggal; var e : tanggal);
	{I.S. }
	{F.S. }
	
	{Procedure Tukar Jumlah}
	procedure tJumlah (var g : integer; var h : integer);
	{I.S. }
	{F.S. }
	
	{Procedure Tukar Harga}
	procedure tHarga (var x : longint; var y : longint);
	{I.S. }
	{F.S. }
	
	{Procedure Sort Inventori Bahan Mentah}
	procedure sortIBM (var IBM : fileInventoriBahanMentah; var N : integer);
	{I.S. }
	{F.S. }
	
	{Procedure Sort Inventori Bahan Olahan}
	procedure sortIBO (var IBO : fileInventoriBahanOlahan; var N : integer);
	{I.S. }
	{F.S. }
	
	{Procedure Sort Resep}
	procedure sortR (var R : tabResep);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure Tukar Nama}
	procedure tNama (var a : string; var b : string);
	
	{Kamus Lokal}
	var
		c : string;
	
	{Algoritma Procedure}
	begin
		c := a;
		a := b;
		b := c;
	end;
	
	{Procedure Tukar Waktu}
	procedure tWaktu (var d : tanggal; var e : tanggal);
	
	{Kamus Lokal}
	var
		f : tanggal;
	
	{Algoritma Procedure}
	begin
		f := d;
		d := e;
		e := f;
	end;
	
	
	{Procedure Tukar Jumlah}
	procedure tJumlah (var g : integer; var h : integer);
	
	{Kamus Lokal}
	var
		i : integer;
	
	{Algoritma Procedure}
	begin
		i := g;
		g := h;
		h := i;
	end;
	
	{Procedure Tukar Harga}
	procedure tHarga (var x : longint; var y : longint);
	
	{Kamus Lokal}
	var
		z : longint;
	
	{Algoritma Procedure}
	begin
		z := x;
		x := y;
		y := z;
	end;
	
	{Procedure Sort Inventori Bahan Mentah}
	procedure sortIBM (var IBM : fileInventoriBahanMentah; var N : integer);
	
	{Kamus Lokal}
	var
		i, j : integer;
		
	{Algoritma Procedure}
	begin
		for j:=(IBM.LFIBM[N].Neff) downto 2 do
			begin
				for i:=1 to (j-1) do
				begin
					if ((IBM.LFIBM[N].FIBM[i].Nama) > (IBM.LFIBM[N].FIBM[i+1].Nama)) then
					begin
						tNama (IBM.LFIBM[N].FIBM[i].Nama , IBM.LFIBM[N].FIBM[i+1].Nama);
						tWaktu (IBM.LFIBM[N].FIBM[i].Waktu , IBM.LFIBM[N].FIBM[i+1].Waktu);
						tJumlah (IBM.LFIBM[N].FIBM[i].Jumlah , IBM.LFIBM[N].FIBM[i+1].Jumlah);
					end;
				end;
			end;
	end;
	
	{Procedure Sort Inventori Bahan Olahan}
	procedure sortIBO (var IBO : fileInventoriBahanOlahan; var N : integer);
	
	{Kamus Lokal}
	var
		i, j : integer;
		
	{Algoritma Procedure}
	begin
		for j:=(IBO.LFIBO[N].Neff) downto 2 do
			begin
				for i:=1 to (j-1) do
				begin
					if ((IBO.LFIBO[N].FIBO[i].Nama) > (IBO.LFIBO[N].FIBO[i+1].Nama)) then
					begin
						tNama (IBO.LFIBO[N].FIBO[i].Nama , IBO.LFIBO[N].FIBO[i+1].Nama);
						tWaktu (IBO.LFIBO[N].FIBO[i].Waktu , IBO.LFIBO[N].FIBO[i+1].Waktu);
						tJumlah (IBO.LFIBO[N].FIBO[i].Jumlah , IBO.LFIBO[N].FIBO[i+1].Jumlah);
					end;
				end;
			end;
	end;
	
	{Procedure Sort Resep}
	procedure sortR (var R : tabResep);
	
	{Kamus Lokal}
	var
		i, j, k : integer;
		
	{Algoritma Procedure}
	begin
		for j:=(R.Neff) downto 2 do
			begin
				for i:=1 to (j-1) do
				begin
					if ((R.FR[i].Nama) > (R.FR[i+1].Nama)) then
					begin
						tNama (R.FR[i].Nama , R.FR[i+1].Nama);
						tHarga (R.FR[i].Harga , R.FR[i+1].Harga);
						tJumlah (R.FR[i].Jumlah , R.FR[i+1].Jumlah);
						for k:=1 to Nmax do
							begin
								tNama (R.FR[i].Bahan[k] , R.FR[i+1].Bahan[k]);
							end;
					end;
				end;
			end;
	end;
	
end.
