{Unit F17upgradeInventori}
unit F17upgradeI;

{Interface}
interface
	
	uses typedata;
	
	{Procedure F17upgradeInventori}
	procedure F17upgradeInventori (var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F17upgradeInventori}
	procedure F17upgradeInventori (var S : tabSimulasi; var N : integer);
	
	{Algoritma Procedure}
	begin
		if (S.FS[N].Saldo >= 15000) then
			begin
				S.FS[N].Saldo       := S.FS[N].Saldo - (15000 * JmlU);
				S.FS[N].Kapasitas   := S.FS[N].Kapasitas + 25;
				S.FS[N].Pengeluaran := S.FS[N].Pengeluaran + (15000 * JmlU);
				writeln (' // Upgrade inventori berhasil, kapasitas maksimum inventori bertambah menjadi ', S.FS[N].Kapasitas, '. //');
				writeln (' Saldo : ', S.FS[N].Saldo);
			end
		else
			begin
				writeln (' // Upgrade inventori gagal, silakan coba lagi. //');
			end;
	end;
	
end.
