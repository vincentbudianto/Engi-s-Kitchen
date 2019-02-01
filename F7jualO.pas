{Unit F7jualOlahan}
unit F7jualO;

{Interface}
interface

	uses check, delete, validasi, typedata;
	
	procedure F7jualOlahan (var BO : tabBahanOlahan; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	{I.S. Mengassign inventori olahan dan mengambil bahan olahan yang akan dijual(yang blom kadaluarsa)}
	{F.S. Jumlah Bahan yang ada di inventori berkurang dan uang bertambah}

{Implementation}
implementation

	{Procedure F7jualOlahan}
	procedure F7jualOlahan (var BO : tabBahanOlahan; var IBO : fileInventoriBahanOlahan; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		ada1, ada2, ketemu                 : boolean;
		jumlah, tIBO, count, i, j, k, l, m : integer;
		total, subtotal                    : longint;
		item                               : string;
	
	{Algoritma Procedure}
	begin
		total := 0;
		count := 0;
		write ('   Nama bahan olahan : '); readln (item);
		while (item <> 'Selesai') do
			begin
				i    := 1;
				j    := 1;
				m    := 1;
				ada1 := false;
				ada2 := false;
				v := false;
				write (' Jumlah bahan olahan : '); readln (jumlah);
				while (i <= IBO.LFIBO[N].Neff) and (ada1 = false) do
					begin
						if (item = IBO.LFIBO[N].FIBO[i].Nama) then
							begin
								ada1 := true;
							end
						else
							i := i + 1;
					end;
				while (j <= BO.Neff) and (ada2 = false) do
					begin
						if (item = BO.FBO[j].Nama) then
							begin
								ada2 := true;
							end
						else
							j := j + 1;
					end;
				if (ada1 = true) then
					begin
						for k:=1 to IBO.LFIBO[N].Neff do
							begin
								if (item = IBO.LFIBO[N].FIBO[k].Nama) then
									begin
										tIBO := totalBarangIBO (item, IBO, N);
									end
								else
							end;
						if (jumlah <= tIBO) then
							begin
								valid (v);
								if (v = true) then
									begin
										for l:=1 to jumlah do
											begin
												ketemu := false;
												while (m <= IBO.LFIBO[N].Neff) and (ketemu = false) do
													begin
														if (item = IBO.LFIBO[N].FIBO[m].Nama) then
															begin
																if (IBO.LFIBO[N].FIBO[m].Jumlah > 0) then
																	begin
																		IBO.LFIBO[N].FIBO[m].Jumlah := IBO.LFIBO[N].FIBO[m].Jumlah - 1;
																		ketemu := true;
																	end
																else {IBO.LFIBO[N].FIBO[m].Jumlah <= 0}
																	begin
																		m := m + 1;
																	end;
															end
														else {item <> IBO.LFIBO[N].FIBO[m].Nama}
															begin
																m := m + 1;
															end;
													end;
											end;
										JmlI               := JmlI - jumlah;
										S.FS[N].JualOlahan := S.FS[N].JualOlahan + jumlah;
										subtotal           := jumlah * BO.FBO[j].Harga;
										total              := total + subtotal;
										count              := count + jumlah;
										writeln('           Subtotal : ', subtotal);
										writeln (' // Penjualan ', jumlah , ' ', item, ' berhasil. //');
									end
								else
									begin
										writeln (' // Penjualan ', jumlah , ' ', item, ' dibatalkan, silakan coba kembali. //');
									end;
							end
						else {jumlah > tIBO}
							begin
								writeln (' // ', item, ' tidak mencukupi, silakan coba kembali. //');
							end;
					end
				else {ada = false}
					begin
						writeln (' // ', item, ' tidak tersedia. silakan coba kembali. //');
					end;
				write ('   Nama bahan olahan : '); readln (item);
			end;
		S.FS[N].Energi    := S.FS[N].Energi - 1;
		S.FS[N].Saldo     := S.FS[N].Saldo + total;
		S.FS[N].Pemasukan := S.FS[N].Pemasukan + total;
		writeln('    Total penjualan : ', total);
		writeln (' // Penjualan ', count ,' bahan olahan berhasil. //');
		writeln ('             Saldo : ', S.FS[N].Saldo);
		deleteIBO (IBO, N);
	end;
	
end.
