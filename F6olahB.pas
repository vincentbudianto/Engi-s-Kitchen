{Unit F6olahBahan}
unit F6olahB;

{Interface}
interface
	
	uses check, delete, validasi, typedata;
	
	{Procedure F6olahBahan}
	procedure F6olahBahan (var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }

{Implementation}
implementation
	
	{Procedure F6olahBahan}
	procedure F6olahBahan (var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		
		ada, ketemu    : boolean;
		count, i, j, k : integer;
		item           : string;
		F              : text;
		
	{Algoritma Procedure}
	begin
		count := 0;
		write ('   Nama bahan olahan : '); readln (item);
		while (item <> 'Selesai') do
			begin
				i   := 1;
				k   := 1;
				ada := false;
				v   := false;
				while (i <= BO.Neff) and (ada = false) do
					begin
						if (item = BO.FBO[i].Nama) then
							begin
								ada := true;
							end
						else
							i := i + 1;
					end;
				if (ada = true) then
					begin
						 valid (v);
						 if (v = true) then
							begin
								for j:=1 to (BO.FBO[i].Jumlah) do
									begin
										ketemu := false;
										while (k <= IBM.LFIBM[N].Neff) and (not(ketemu)) do
											begin
												if (BO.FBO[i].Bahan[j] = IBM.LFIBM[N].FIBM[k].Nama) then
													begin
														if (IBM.LFIBM[N].FIBM[k].Jumlah > 0) then
															begin
																IBM.LFIBM[N].FIBM[k].Jumlah := IBM.LFIBM[N].FIBM[k].Jumlah - 1;
																ketemu                      := true;
															end
														else {IBM.LFIBM[N].FIBM[k].Jumlah <= 0}
															begin
																k := k + 1;
															end;
													end
												else {BO.FBO[i].Bahan[n] <> IBM.LFIBM[N].FIBM[j].Nama}
													begin
														k := k + 1;
													end;
											end;
									end;
								JmlI               := JmlI - ((BO.FBO[i].Jumlah) - 1);
								S.FS[i].BuatOlahan := S.FS[i].BuatOlahan + 1;
								IBO.LFIBO[N].Neff  := IBO.LFIBO[N].Neff + 1;
								count              := count + 1;
								writeln (' // Pengolahan ', item, ' berhasil. //');
								
								case N of
									1  : begin
											assign(F, 'Inventori Bahan Olahan 1.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									2  : begin
											assign(F, 'Inventori Bahan Olahan 2.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									3  : begin
											assign(F, 'Inventori Bahan Olahan 3.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									4  : begin
											assign(F, 'Inventori Bahan Olahan 4.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									5  :begin
											assign(F, 'Inventori Bahan Olahan 5.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									6  : begin
											assign(F, 'Inventori Bahan Olahan 6.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										end;
									7  : begin
											assign(F, 'Inventori Bahan Olahan 7.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									8  : begin
											assign(F, 'Inventori Bahan Olahan 8.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									9  : begin
											assign(F, 'Inventori Bahan Olahan 9.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
									10 : begin
											assign(F, 'Inventori Bahan Olahan 10.txt');
											append(F);
												writeln (F, BO.FBO[i].Nama);
												writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
												writeln (F, '1');
												writeln (F, '');
											close(F);
										 end;
								end;
			
							end
						else {v = false}
							begin
								writeln (' // Pengolahan ', item, ' dibatalkan, silakan coba kembali. //');
							end;
					end
				else {ada = false}
					begin
						writeln (' // ', item, ' tidak tersedia. silakan coba kembali. //');
					end;
				write ('   Nama bahan olahan : '); readln (item);
			end;
			
			
								
		S.FS[N].Energi := S.FS[N].Energi - 1;
		writeln (' // Pengolahan ', count, ' bahan olahan berhasil. //');
		deleteIBM (IBM, N);
	end;
	
end.
