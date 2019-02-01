{Unit F3startSimulasi}
unit F3startS;

{Interface}
interface
	
	uses kadaluarsa, savedata, validasi, Fstart, F2exitS, F4stopS, F5beliB, F6olahB, F7jualO, F8jualR, F9makanS, F10istirahatS, F11tidurS, F12lihatS, F13lihatI, F14lihatR, F15cariR, F16tambahR, F17upgradeI, typedata;
	
	{Procedure F3startSimulasi}
	procedure F3startSimulasi (var BM : tabBahanMentah; var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	uses Fmulai;
	
	{Procedure F3startSimulasi}
	procedure F3startSimulasi (var BM : tabBahanMentah; var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi; var N : integer);
	
	{Kamus Lokal}
	var
		kondisi                  : boolean;
		a                        : char;
		i, j                     : integer;
		pilihan                  : string;
		
	{Algoritma Procedure}
	begin
		Kmakan     := 0;
		Kistirahat := 0;
		JmlI       := 0;
		JmlU       := S.FS[N].Kapasitas div 25;
		kondisi    := false;
		v          := false;
		writeln (' // Mulai simulasi ', N, ' //');
		for i:= 1 to IBM.LFIBM[N].Neff do
			begin
				JmlI := JmlI + IBM.LFIBM[N].FIBM[i].Jumlah;
			end;
		for j:=1 to IBO.LFIBO[N].Neff do
			begin
				JmlI := JmlI + IBO.LFIBO[N].FIBO[j].Jumlah;
			end;
		repeat
			writeln (' | -------------------------------------------------------------------------- |');
			writeln ('                                   Hari Ke-', (S.FS[N].Hidup + 1), '                                   ');
			writeln ('            Tanggal : ', S.FS[N].Waktu.dd, '/', S.FS[N].Waktu.mm, '/', S.FS[N].Waktu.yy);
			writeln ('             Energi : ', S.FS[N].Energi);
			writeln ('   Jumlah Inventori : ', JmlI);
			writeln ('              Saldo : ', S.FS[N].Saldo);
			start ();
			write (' >> '); readln (pilihan);
			
			case pilihan of
				'exit'             : begin
										 valid (v);
										 if (v = true) then
											 begin
												 save (TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
												 F2exit ();
											 end;
									 end;
				'start 1'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 2'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 3'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 4'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 5'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 6'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 7'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 8'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 9'          : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'start 10'         : begin
										 writeln (' // Sudah ada simulasi yang dimulai, silakan coba lagi. //');
									 end;
				'stopSimulasi'     : begin
										 valid (v);
										 if (v = true) then
											 begin
												 save (TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
												 writeln (' // Simulasi ', S.FS[N].Nomor, ' telah berhenti. //');
												 F4stopSimulasi (Tsimulasi, N);
												 N := 0;
												 mulai ();
											 end;
									 end;
				'beliBahan'        : begin
										 if (S.FS[N].Energi > 0) then
											 begin
												  F5beliBahan (TbahanMentah, TinventoriBahanMentah, Tsimulasi, N);
												  Btidur := true;
											 end
										 else {S.FS[N].Energi <= 0}
											 begin
												 writeln(' // Energi anda sudah habis, silakan makan, istirahat, atau tidur. //')
											 end;
									 end;
				'olahBahan'        : begin
										 if (S.FS[N].Energi > 0) then
											 begin
												 F6olahBahan (TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tsimulasi, N);
												 Btidur := true;
											 end
										 else {S.FS[N].Energi <= 0}
											 begin
												 writeln(' // Energi anda sudah habis, silakan makan, istirahat, atau tidur. //')
											 end;
									 end;
				'jualOlahan'       : begin
										 if (S.FS[N].Energi > 0) then
											 begin
												F7jualOlahan (TbahanOlahan, TinventoriBahanOlahan, Tsimulasi, N);
												Btidur := true;
											 end
										 else {S.FS[N].Energi <= 0}
											 begin
												 writeln(' // Energi anda sudah habis, silakan makan, istirahat, atau tidur. //')
											 end;
									 end;
				'jualResep'        : begin
										 if (S.FS[N].Energi > 0) then
											 begin
												F8jualResep (TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
												Btidur := true;
											 end
										 else {S.FS[N].Energi <= 0}
											 begin
												 writeln(' // Energi anda sudah habis, silakan makan, istirahat, atau tidur. //')
											 end;
									 end;
				'makan'            : begin
										 F9makan (Tsimulasi, N);
									 end;
				'istirahat'        : begin
										 F10istirahat (Tsimulasi, N);
									 end;
				'tidur'            : begin
										 if (Btidur = true) then
											 begin
												 valid (v);
												 if (v = true) then
													 begin
														 F11tidur (Tsimulasi, N);
														 Fkadaluarsa (TbahanMentah, TinventoriBahanMentah, TinventoriBahanOlahan, Tsimulasi, N);
													 end;
											 end
										 else {Btidur = false}
											 begin
												 writeln (' // Belum ada aksi dilakukan, silakan coba kembali. //');
											 end;
									 end;
				'lihatStatistik'   : begin
										 F12lihatStatistik (Tsimulasi, N);
									 end;
				'lihatInventori'   : begin
										 F13lihatInventori (TinventoriBahanMentah, TinventoriBahanOlahan, N);
									 end;
				'lihatResep'       : begin
										 F14lihatResep (Tresep);
									 end;
				'cariResep'        : begin
										 F15cariResep (Tresep);
									 end;
				'tambahResep'      : begin
										 F16tambahResep (TbahanMentah, TbahanOlahan, Tresep);
									 end;
				'upgradeInventori' : begin
										 valid (v);
										 if (v = true) then
											 begin
												 F17upgradeInventori (Tsimulasi, N);
												 JmlU := JmlU + 1;
											 end;
									 end;
				else
					begin
						writeln (' // Masukan anda salah, silakan masukkan pilihan menu kembali. //');
						writeln ();
						writeln ('  // Lanjutkan ke menu? Pilih "y" jika ya |  "n" jika tidak // ');
						writeln ();
						write (' > '); readln (a);
						if ((a = 'n') or (a = 'N')) then
							begin
								writeln ();
								save (TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
								F2exit ();
							end
						else {(a <> 'n') and (a <> 'N')}	
							begin
								while (kondisi = false) do
								begin
									if ((a = 'y') or (a = 'Y')) then
										begin
											kondisi := true;
											writeln ();
											F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
										end 
									else {(a <> 'y') and (a <> 'Y')}
										begin
											writeln (' // Masukan anda salah, silakan masukkan pilihan kembali. //');
											writeln ();
											writeln ('  // Lanjutkan ke menu? Pilih "y" jika ya |  "n" jika tidak // ');
											writeln ();
											write (' > '); readln (a);
										end;
								end;
							end;
					end;
			end;
					
		until (((pilihan = 'exit') and (v = true)) or ((pilihan = 'stopSimulasi') and (v = true)) or (a = 'n') or (a = 'N') or (S.FS[N].Hidup > 9));
		save (TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
		if (S.FS[N].Hidup >= 10) then
			begin
				writeln (' // Simulasi ', S.FS[N].Nomor, ' telah selesai. //');
				F4stopSimulasi (Tsimulasi, N);
				N := 0;
				writeln ();
				writeln ('  // Lanjutkan ke menu awal? Pilih "y" jika ya |  "n" jika tidak // ');
				writeln ();
				write (' > '); readln (a);
				if ((a = 'n') or (a = 'N')) then
					begin
						F2exit ();
					end
				else {(a <> 'n') and (a <> 'N')}
					begin
						while (kondisi = false) do
							begin
								if ((a = 'y') or (a = 'Y')) then
									begin
										kondisi := true;
										mulai ();
									end
								else {(a <> 'y') and (a <> 'Y')}
									begin
										writeln (' // Masukan anda salah, silakan masukkan pilihan kembali. //');
										writeln ();
										writeln ('  // Lanjutkan ke menu awal? Pilih "y" jika ya |  "n" jika tidak // ');
										writeln ();
										write (' > '); readln (a);
									end;
							end;	
					end;
			end;
	end;
	
end.
