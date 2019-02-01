{Unit F14lihatResep}
unit F14lihatR;

{Interface}
interface
	
	uses sort, typedata;
	
	{Procedure F14lihatResep}
	procedure F14lihatResep (var R : tabResep);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F14lihatResep}
	procedure F14lihatResep (var R : tabResep);
	
	{Kamus Lokal}
	var
		i, j  : integer;
		enter : string;
		F     : text;
		
	{Algoritma Procedure}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' |                              Daftar Resep                                  |');
		writeln (' | -------------------------------------------------------------------------- |');
		R.Neff := 0;
		assign (F, 'Resep.txt');
		reset (F);
			while not (EOF(F)) do
				begin
					R.Neff := R.Neff + 1;
					readln (F, R.FR[R.Neff].Nama);
					readln (F, R.FR[R.Neff].Harga);
					readln (F, R.FR[R.Neff].Jumlah);
					for j:=1 to (R.FR[R.Neff].Jumlah) do
					begin
						readln (F, R.FR[R.Neff].Bahan[j]);
					end;
					readln (F, enter);
				end;
		close (F);
		sortR (R);
		for i:=1 to (R.Neff) do
			begin
				write ('  ', R.FR[i].Nama);write (' | ');
				write (R.FR[i].Harga); write (' | ');
				write (R.FR[i].Jumlah); write (' | ');
				write (R.FR[i].Bahan[1]);
				for j:=2 to (R.FR[R.Neff].Jumlah) do
					begin
						write (' | '); write (R.FR[i].Bahan[j]);
					end;
				writeln ();
			end;
	end;
	
end.
