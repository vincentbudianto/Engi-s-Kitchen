{Unit F10istirahat}
unit F10istirahatS;

{Interface}
interface
	
	uses typedata;
	
	{Procedure F10istirahat}
	procedure F10istirahat (var S : tabSimulasi; var N : integer);
	{I.S. user menginput 'istirahat'}
	{F.S. energi Chef bertambah 1 dan kesempatan berkurang 1}
	
{Implementation}
implementation
	
	{Procedure F10istirahat}
	procedure F10istirahat (var S : tabSimulasi; var N : integer);
	
	{Algoritma Procedure}
	begin
		if (Kistirahat < 6) then
			begin
				Kistirahat := Kistirahat + 1;
				if (S.FS[N].Energi < Emax) then
					begin
						S.FS[N].Energi := S.FS[N].Energi + 1;
						writeln(' // Berhasil istirahat, memulihkan 1 energi. //');
					end
				else {S.FS[N].Energi < Emax}
					begin
						writeln(' // Berhasil istirahat, memulihkan 0 energi. //');
					end;
			end
		else {Kistirahat >= 6}
			begin
				writeln (' // Kesempatan istirahat sudah habis, silakan coba kembali. //');
			end;
	end;
	
end.
