{Unit Mulai}
unit Fmulai;

{Interface}
interface

	uses Fstart, F1loadS, F2exitS, F3startS, F4stopS, F14lihatR, F15cariR, F16tambahR, typedata;

	{Procedure Mulai}
	procedure mulai ();
	{I.S. }
	{F.S. }

{Implementation}
implementation
	
	{Procedure Menu}
	procedure mulai ();
	
	{Kamus Lokal}
	var
		kondisi1, kondisi2 : boolean;
		a                  : char;
		N                  : integer;
		pilihan            : string;
	
	{Algoritma Procedure}
	begin
		kondisi1 := false;
		kondisi2 := false;
		repeat
			start ();
			writeln (' Silahkan pilih fitur diatas : ');
			write (' > '); readln (pilihan);
			
			case pilihan of
				'exit'             : begin
										 F2exit ();
									 end;
				'start 1'          : begin
										 N := 1;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
												 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 2'          : begin
										 N := 2;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
												 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 3'          : begin
										 N := 3;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 4'          : begin
										 N := 4;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 5'          : begin
										 N := 5;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 6'          : begin
										 N := 6;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 7'          : begin
										 N := 7;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 8'          : begin
										 N := 8;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 9'          : begin
										 N := 9;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'start 10'         : begin
										 N := 10;
										 if (Tsimulasi.FS[N].Hidup < 10) then
											 begin
												 F3startSimulasi (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi, N);
											 	 kondisi1 := true;
											 end
										 else {Tsimulasi.FS[N].Hidup >= 10}
											 begin
												 writeln (' // Simulasi ', N, ' telah selesai. //');
												 F4stopSimulasi (Tsimulasi, N);
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
														 while (kondisi2 = false) do
															 begin
																 if ((a = 'y') or (a = 'Y')) then
																	 begin
																		 kondisi2 := true;
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
				'stopSimulasi'     : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'beliBahan'        : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'olahBahan'        : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'jualOlahan'       : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'jualResep'        : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'makan'            : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'istirahat'        : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'tidur'            : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'lihatStatistik'   : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
									 end;
				'lihatInventori'   : begin
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
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
										 writeln (' // Simulasi belum dimulai, silakan mulai simulasi. //');
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
								F2exit ();
							end
						else {(a <> 'n') and (a <> 'N')}	
							begin
								while (kondisi2 = false) do
								begin
									if ((a = 'y') or (a = 'Y')) then
										begin
											kondisi2 := true;
											writeln ();
											mulai ();
										end 
									else {(a <> 'y') and (a <> 'Y')}
										begin
											writeln (' // Masukan anda salah, silakan masukkan pilihan menu kembali. //');
											writeln ();
											writeln ('  // Lanjutkan ke menu? Pilih "y" jika ya |  "n" jika tidak // ');
											writeln ();
											write (' > '); readln (a);
										end;
								end;
							end;
					end;
			end;
			
		until ((pilihan = 'exit') or (kondisi1 = true) or (kondisi2 = true) or (a = 'n') or (a = 'N'));
	end;

end.
