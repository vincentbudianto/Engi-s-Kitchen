{Unit Fkadaluarsa}
unit kadaluarsa;

{Interface}
interface
	
	uses datetoday, delete, typedata;
	
	{Procedure Fkadaluarsa}
	procedure Fkadaluarsa (var BM : tabBahanMentah; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure Fkadaluarsa}
	procedure Fkadaluarsa (var BM : tabBahanMentah; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		i, j : integer;
		x    : longint;
		
	{Algoritma Procedure}
	begin
		for i:=1 to (IBM.LFIBM[N].Neff) do
			begin
				x := Kwaktu(S.FS[N].Waktu) - Kwaktu(IBM.LFIBM[N].FIBM[i].Waktu);
				if (x > BM.FBM[i].Durasi) then
					begin
						IBM.LFIBM[N].FIBM[i].Jumlah := 0;
						JmlI := JmlI - 1;
					end;
			end;
		for j:=1 to (IBO.LFIBO[N].Neff) do
			begin
				x := Kwaktu(S.FS[N].Waktu) - Kwaktu(IBO.LFIBO[N].FIBO[j].Waktu);
				if (x > 3) then
					begin
						IBO.LFIBO[N].FIBO[j].Jumlah := 0;
						JmlI := JmlI - 1;
					end;
			end;
		deleteIBM (IBM, N);
		deleteIBO (IBO, N);
	end;
	
end.

