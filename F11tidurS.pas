{Unit F11tidur}
unit F11tidurS;

{Interface}
interface
	
	uses typedata;
	
	{Procedure F11tidur}
	procedure F11tidur (var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F11tidur}
	procedure F11tidur (var S : tabSimulasi; var N : integer);
	
	{Algoritma Procedure}
	begin
		Btidur         := false;
		S.FS[N].Energi := Emax;
		Kmakan		   := 0;
		Kistirahat	   := 0;
		S.FS[N].Hidup  := S.FS[N].Hidup + 1;
		if (S.FS[N].Waktu.yy mod 400 = 0) and (S.FS[N].Waktu.yy mod 100 <> 0) and (S.FS[N].Waktu.yy mod 4 = 0) then
			begin
				case (S.FS[N].Waktu.mm) of
					1, 3, 5, 7, 8, 10 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 31) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
						  4, 6, 9, 11 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 30) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
									2 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 29) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
								  12 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 31) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := 1;
													S.FS[N].Waktu.yy := S.FS[N].Waktu.yy + 1;
												end;
										end;
				end;
			end
		else {S.FS[N].Waktu.yy mod 400 <> 0) or (S.FS[N].Waktu.yy mod 100 = 0) or (S.FS[N].Waktu.yy mod 4 <> 0)}
			begin
				case (S.FS[N].Waktu.mm) of
					1, 3, 5, 7, 8, 10 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 31) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
						  4, 6, 9, 11 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 30) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
									2 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 28) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := S.FS[N].Waktu.mm + 1;
												end;
										end;
								  12 : begin
											S.FS[N].Waktu.dd := S.FS[N].Waktu.dd + 1;
											if (S.FS[N].Waktu.dd > 31) then
												begin
													S.FS[N].Waktu.dd := 1;
													S.FS[N].Waktu.mm := 1;
													S.FS[N].Waktu.yy := S.FS[N].Waktu.yy + 1;
												end;
										end;
				end;
		end;
	writeln (' // Berhasil tidur, energi kembali penuh. //');
	end;
	
end.
