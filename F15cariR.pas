{Unit F15cariResep}
unit F15cariR;

{Interface}
interface

	uses typedata;
	
	{Procedure F15cariResep}
	procedure F15cariResep (var R : tabResep);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F15cariResep}
	procedure F15cariResep (var R : tabResep);
	
	{Kamus Lokal}
	var
		k    : boolean;
		i, j : integer;
		nama : string;
	
	{Algoritma Procedure}
	begin
		i := 1;
		k := false;
		write (' Masukkan nama resep yang ingin dicari : '); readln (nama);
		while (i <= R.Neff) and (k = false) do
			begin
				if (R.FR[i].Nama = nama) then
					begin
						k := true;
					end
				else
					begin
						i := i + 1;
					end;
			end;
		if (k = true) then
			begin
				write('            Nama resep : '); writeln(R.FR[i].Nama);
				write(' Bahan yang diperlukan : ');
				write(R.FR[i].Bahan[1]);
				for j := 2 to (R.FR[i].Jumlah)do
					begin
						write (' | '); write (R.FR[i].Bahan[j]);
					end;
				writeln();
				write('                 Harga : '); writeln(R.FR[i].Harga);
			end
		else
			begin
				writeln (' // Resep tidak ditemukan. Silahkan coba kembali. //');
			end;
	end;
	
end.
