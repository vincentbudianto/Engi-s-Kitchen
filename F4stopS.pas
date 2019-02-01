{Unit F4stopSimulasi}
unit F4stopS;

{Interface}
interface
	
	uses F12lihatS, typedata;
	
	{Procedure F4stopSimulasi}
	procedure F4stopSimulasi (var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F4stopSimulasi}
	procedure F4stopSimulasi (var S : tabSimulasi; var N : integer);
	
	{Algoritma Procedure}
	begin
		writeln (' Statistik : ');
		F12lihatStatistik (S, N);
	end;
	
end.
