{Unit F16tambahResep}
unit F16tambahR;

{Interface}
interface
	
	uses typedata;
	
	{Procedure F16tambahResep}
	procedure F16tambahResep (var BM : tabBahanMentah; var BO : tabBahanOlahan; var R : tabResep);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F16tambahResep}
	procedure F16tambahResep (var BM : tabBahanMentah; var BO : tabBahanOlahan; var R : tabResep);
	
	{Kamus Lokal}
	var
		ada        : boolean;
		i, j, k    : integer;
		harga, net : real;
		F          : text;
	
	{Algoritma Procedure}
	begin
		i      := 1;
		j      := 1;
		k      := 1;
		ada    := false;
		net    := 0;
		R.Neff := R.Neff + 1;
		write ('                   Nama resep : '); readln (R.FR[R.Neff].Nama);
		write (' Jumlah bahan yang dibutuhkan : '); readln (R.FR[R.Neff].Jumlah);
		while (R.FR[R.Neff].Jumlah < 2) or (R.FR[R.Neff].Jumlah > 20) do
			begin
				writeln (' // Jumlah bahan yang dipakai tidak memenuhi syarat. //');
				write (' Jumlah bahan yang dibutuhkan : '); readln (R.FR[R.Neff].Jumlah);
			end;
		writeln ('   Nama bahan yang dibutuhkan : ');
		while (i <= R.FR[R.Neff].Jumlah) do
			begin
				write (' '); readln (R.FR[R.Neff].Bahan[i]);
				while (j <= BM.Neff) and (ada = false) do
					begin
						if (R.FR[R.Neff].Bahan[i] = BM.FBM[j].Nama) then
							begin
								ada := true;
								net := net + BM.FBM[j].Harga;
							end
						else {R.FR[R.Neff].Bahan[i] <> BM.FBM[j].Nama}
							begin
								j := j + 1;
							end;
					end;
				while (k <= BO.Neff) and (ada = false) do
					begin
						if (R.FR[R.Neff].Bahan[i] = BO.FBO[k].Nama) then
							begin
								ada := true;
								net := net + BO.FBO[k].Harga;
							end
						else {R.FR[R.Neff].Bahan[i] <> BO.FBO[k].Nama}
							begin
								k := k + 1;
							end;
					end;
				if (ada = true) then
					begin
						i := i + 1;
					end
				else
					begin
						writeln (' // Bahan tidak ada, silakan coba lagi. // ');
					end;
			end;
		harga := net * (9 / 8);
		write ('                        Harga : '); readln (R.FR[R.Neff].Harga);
		while (R.FR[R.Neff].Harga <= harga) do
			begin
				write (' // Harga tidak valid, silakan coba lagi. //');
				write ('                        Harga : '); readln (R.FR[R.Neff].Harga);
			end;
		assign (F, 'Resep.txt');
		append (F);
			writeln (F, R.FR[R.Neff].Nama);
			writeln (F, R.FR[R.Neff].Harga);
			writeln (F, R.FR[R.Neff].Jumlah);
			for i:=1 to (R.FR[R.Neff].Jumlah) do
				begin
					writeln (F, R.FR[R.Neff].Bahan[i]);
				end;
			writeln (F, '');
		close (F);
	end;
	
end.
