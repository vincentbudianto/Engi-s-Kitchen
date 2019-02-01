{Unit F9makan}
unit F9makanS;

{Interface}
interface
	
	uses typedata;
	
	{Procedure F9makan}
	procedure F9makan (var S : tabSimulasi; var N : integer);
	{I.S. user menginput 'makan'}
	{F.S. energi Chef bertamabah 3 dan kesempatan berkurang 1}
	
{Implementation}
implementation
	
	{Procedure F9makan}
	procedure F9makan (var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		count, i : integer;
	
	{Algoritma Procedure}
	begin
		i      := 1;
		count  := 0;
		if (Kmakan < 3) then
			begin
				Kmakan := Kmakan + 1;
				while (i <= 3) do
					begin
						if (S.FS[N].Energi < Emax) then
							begin
								S.FS[N].Energi := S.FS[N].Energi + 1;
								i              := i + 1;
								count          := count + 1;
							end
						else {S.FS[N].Energi < Emax}
							begin
								i := i + 1;
							end;
					end;
				writeln(' // Berhasil makan, memulihkan ', count, ' energi. //');
			end
		else {Kmakan >= 3}
			begin
				writeln (' // Kesempatan makan sudah habis, silakan coba kembali. //');
			end;
	end;
	
end.
