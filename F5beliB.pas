{Unit F5beliBahan}
unit F5beliB;

{Interface}
interface
	
	uses validasi, typedata;
	
	{Procedure F5beliBahan}
	procedure F5beliBahan (var BM : tabBahanMentah; var IBM : fileInventoriBahanMentah; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F5beliBahan}
	procedure F5beliBahan (var BM : tabBahanMentah; var IBM : fileInventoriBahanMentah; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		ada              : boolean;
		jumlah, count, i : integer;
		total, subtotal  : longint;
		item             : string;
		F                : text;
	
	{Algoritma Procedure}
	begin
		total := 0;
		count := 0;
		write ('    Nama bahan mentah : '); readln (item);
		while (item <> 'Selesai') do 
			begin
				i   := 1;
				ada := false;
				v   := false;
				write ('  Jumlah bahan mentah : '); readln (jumlah);
				while (i <= BM.Neff) and (ada = false) do
					begin
						if (item = BM.FBM[i].Nama) then
							begin
								ada := true;
							end
						else
							i := i + 1;
					end;
				if (ada = true) then
					begin
						if (total < (S.FS[N].Saldo)) and (jumlah <= (S.FS[N].Kapasitas - JmlI)) and ((S.FS[N].Kapasitas - JmlI) <> 0) and (jumlah <> 0) then
							begin
								valid (v);
								if (v = true) then
									begin
										JmlI               := JmlI + jumlah;
										subtotal           := jumlah * (BM.FBM[i].Harga);
										total              := total + subtotal;
										count              := count + 1;
										S.FS[N].BeliMentah := S.FS[N].BeliMentah + jumlah;
										IBM.LFIBM[N].Neff  := IBM.LFIBM[N].Neff + 1;
										write ('             Subtotal : ', subtotal);
										writeln (' // Pembelian ', jumlah, ' ', item, ' berhasil. //');
										
										case N of
											1  : begin
													assign (F, 'Inventori Bahan Mentah 1.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											2  : begin
													assign (F, 'Inventori Bahan Mentah 2.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											3  : begin
													assign (F, 'Inventori Bahan Mentah 3.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											4  : begin
													assign (F, 'Inventori Bahan Mentah 4.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											5  :begin
													assign (F, 'Inventori Bahan Mentah 5.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											6  : begin
													assign (F, 'Inventori Bahan Mentah 6.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											7  : begin
													assign (F, 'Inventori Bahan Mentah 7.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											8  : begin
													assign (F, 'Inventori Bahan Mentah 8.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											9  : begin
													assign (F, 'Inventori Bahan Mentah 9.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
											10 : begin
													assign (F, 'Inventori Bahan Mentah 10.txt');
													append (F);
														writeln (F, item);
														writeln (F, S.FS[N].Waktu.dd, ' ', S.FS[N].Waktu.mm, ' ', S.FS[N].Waktu.yy);
														writeln (F, jumlah);
														writeln (F, '');
													close (F);
												 end;
										end;
										
									end
								else {v = false}
									begin
										writeln (' // Pembelian ', jumlah, ' ', item, ' dibatalkan, silakan coba kembali. //');
									end;
							end
						else {(total >= (S.FS[N].Saldo)) or (jumlah > (S.FS[N].Kapasitas - JmlI)) or ((S.FS[N].Kapasitas - JmlI) = 0) or (jumlah = 0)}
							begin
								writeln (' // Pembelian ', jumlah, ' ', item, ' gagal, silakan coba kembali. //');
							end;
					end
				else {ada = false}
					begin
						writeln (' // ', item, ' tidak tersedia, silakan coba kembali. //');
					end;
				write ('    Nama bahan mentah : '); readln (item);
			end; {EndWhile}
		S.FS[N].Energi      := S.FS[N].Energi - 1;
		S.FS[N].Saldo       := (S.FS[N].Saldo) - total;
		S.FS[N].Pengeluaran := S.FS[N].Pengeluaran + total;
		writeln ('                Total : ', total);
		writeln (' // Pembelian ', count, ' bahan mentah berhasil. //');
		writeln ('                Saldo : ', S.FS[N].Saldo);
	end;
	
end.
