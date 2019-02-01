{Unit Menu}
unit Fmenu;

{Interface}
interface

	uses Fmulai, Fstart, F1loadS, F2exitS, F3startS, F14lihatR, F15cariR, F16tambahR, typedata;

	{Procedure Menu}
	procedure menu ();
	{I.S. }
	{F.S. }

{Implementation}
implementation
	
	{Procedure Menu}
	procedure menu ();
	
	{Kamus Lokal}
	var
		kondisi : boolean;
		pilihan : string;
	
	{Algoritma Procedure}
	begin
		kondisi := false;
		Btidur  := false;
		start ();
		writeln (' Silahkan pilih fitur diatas : ');
		write (' > '); readln (pilihan);
		if (pilihan = 'exit') then
			begin
				F2exit ();
			end
		else {pilihan <> 'exit'}
			begin
				while (kondisi = false) do
					begin
						if (pilihan = 'load') then
							begin
								kondisi := true;
								F1load (TbahanMentah, TbahanOlahan, TinventoriBahanMentah, TinventoriBahanOlahan, Tresep, Tsimulasi);
							end
						else {((pilihan <> ‘load’) and (pilihan <> 'exit'))}
							begin
								writeln (' // Maaf, belum ada data yang terbuka, silakan pilih menu load. //');
								write (' > '); readln (pilihan);
							end
					end;
			end;
		if (kondisi = true) then
			begin
				mulai ();
			end;
	end;

end.
