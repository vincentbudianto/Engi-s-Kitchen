{Unit F8jualResep}
unit F8jualR;

{Interface}
interface
	
	uses check, delete, validasi, typedata;
	
	{Procedure F8jualResep}
	procedure F8jualResep (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F8jualResep}
	procedure F8jualResep (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		tIB                                      : array [1..10] of integer;
		ada, cukup, ketemu                       : boolean;
		jumlah, count, i, j, k, l, m, o, p, q, t : integer;
		total, subtotal                          : longint;
		resep                                    : string;
		
	{Algoritma Procedure}
	begin
		total := 0;
		count := 0;
		write (' Pilih resep yang ingin dijual : '); readln (resep);
		while (resep <> 'Selesai') do
			begin
				i     := 1;
				m     := 1;
				q     := 1;
				t     := 1;
				ada   := false;
				cukup := true;
				v     := false;
				write ('                  Jumlah resep : '); readln (jumlah);
				while (i <= R.Neff) and (ada = false) do
					begin
						if (resep = R.FR[i].Nama) then
							ada := true
						else
							i := i + 1;
					end;
				if (ada = true) then
					begin
						for j:=1 to (R.FR[i].Jumlah) do
							begin
								for k:=1 to (IBM.LFIBM[N].Neff) do
									begin
										for l:=1 to (IBO.LFIBO[N].Neff) do
											begin
												if (R.FR[i].Bahan[j] = IBM.LFIBM[N].FIBM[k].Nama) then
													begin
														tIB[j] := totalBarangIBM (R.FR[i].Bahan[j], IBM, N);
													end
												else {R.FR[i].Bahan[j] <> IBM.LFIBM[N].FIBM[k].Nama}
													begin
														if (R.FR[i].Bahan[j] = IBO.LFIBO[N].FIBO[k].Nama) then
															begin
																tIB[j] := totalBarangIBO (R.FR[i].Bahan[j], IBO, N);
															end;
													end;
											end;
									end;
							end;
						while (m <= R.FR[i].Jumlah) and (cukup = true) do
							begin
								if (jumlah <= tIB[m]) then
									begin
										m := m + 1;
									end
								else {jumlah > tIB[m]}
									begin
										cukup := false;
									end;
							end;
						if (cukup = true) then
							begin
								valid (v);
								if (v = true) then
									begin
										for o:=1 to jumlah do
											begin
												for p:=1 to (R.FR[i].Jumlah) do
													begin
														ketemu := false;
														while ((q <= IBM.LFIBM[N].Neff) or (t <= IBO.LFIBO[N].Neff)) and (ketemu = false) do
															begin
																if (R.FR[i].Bahan[p] = IBM.LFIBM[N].FIBM[q].Nama) then
																	begin
																		if (IBM.LFIBM[N].FIBM[q].Jumlah > 0) then
																			begin
																				IBM.LFIBM[N].FIBM[q].Jumlah := IBM.LFIBM[N].FIBM[q].Jumlah - 1;
																				ketemu                      := true;
																			end
																		else {IBM.LFIBM[N].FIBM[q].Jumlah <= 0}
																			begin
																				q := q + 1;
																			end;
																	end
																else {R.FR[i].Bahan[p] <> IBM.LFIBM[N].FIBM[q].Nama}
																	begin
																		q := q + 1;
																	end;
																if (R.FR[i].Bahan[p] = IBO.LFIBO[N].FIBO[t].Nama) then
																	begin
																		if (IBO.LFIBO[N].FIBO[t].Jumlah > 0) then
																			begin
																				IBO.LFIBO[N].FIBO[t].Jumlah := IBO.LFIBO[N].FIBO[t].Jumlah - 1;
																				ketemu                      := true;
																			end
																		else {IBO.LFIBO[N].FIBO[t].Jumlah <= 0}
																			begin
																				t := t + 1;
																			end;
																	end
																else {R.FR[i].Bahan[p] = IBO.LFIBO[N].FIBO[t].Nama}
																	begin
																		t := t + 1;
																	end;
															end;
													end;
											end;
										JmlI              := JmlI - ((R.FR[i].Jumlah) *jumlah);
										S.FS[N].JualResep := S.FS[N].JualResep + jumlah;
										subtotal          := (R.FR[i].Harga) * jumlah;
										total             := total + subtotal;
										count             := count + jumlah;
										writeln ('                    Subtotal : ', subtotal);
										writeln (' // Penjualan ', jumlah, ' ', resep, ' berhasil. //');
										writeln ('                       Saldo : ', S.FS[N].Saldo);
									end
								else {v = false}
									begin
										writeln (' // Penjualan ', jumlah, ' ', resep, ' dibatalkan, silakan coba kembali. //');
									end;
							end
						else {cukup = false}
							begin
								writeln(' // Bahan yang dibutuhkan tidak mencukupi, silakan coba kembali. //');
							end
					end
				else {ada = false}
					begin
						writeln (' // ', resep, ' tidak tersedia, silakan coba kembali. //');
					end ;
				write (' Pilih resep yang ingin dijual : '); readln (resep);
			end;
		writeln ('             Total penjualan : ', total);
		writeln (' // Penjualan ', count, ' resep berhasil. //');
		S.FS[N].Energi    := S.FS[N].Energi - 1;
		S.FS[N].Saldo     := S.FS[N].Saldo + total;
		S.FS[N].Pemasukan := S.FS[N].Pemasukan + total;
		deleteIBM (IBM, N);
		deleteIBO (IBO, N);
	end;
	
end.
