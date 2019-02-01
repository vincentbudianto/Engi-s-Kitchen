{Unit F1load}
unit F1loadS;

{Interface}
interface
	uses typedata;
	
	{Procedure Load}
	procedure F1load (var BM : tabBahanMentah; var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi);
	{I.S. Program utama dijalankan dan user menginput load}
	{F.S. Semua file eksternal dikonversi kedalam array yang dapat digunakan selanjutnya}
	
{Implementation}
implementation
	
	{Procedure Load}
	procedure F1load (var BM : tabBahanMentah; var BO : tabBahanOlahan; var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var R : tabResep; var S : tabSimulasi);
	
	{Kamus Lokal}
	var
		i     : integer;
		enter : string;
		F     : text;
		
	{Algoritma Procedure}
	begin
		
		{File Bahan Mentah}
		assign (F, 'Bahan Mentah.txt');
		reset (F);
			BM.Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Bahan Mentah.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							BM.Neff := BM.Neff + 1;
							readln (F, BM.FBM[BM.Neff].Nama);
							readln (F, BM.FBM[BM.Neff].Harga);
							readln (F, BM.FBM[BM.Neff].Durasi);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Bahan Olahan}
		assign (F, 'Bahan Olahan.txt');
		reset (F);
			BO.Neff := 0;
			i := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Bahan Olahan.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							BO.Neff := BO.Neff + 1;
							readln (F, BO.FBO[BO.Neff].Nama);
							readln (F, BO.FBO[BO.Neff].Harga);
							readln (F, BO.FBO[BO.Neff].Jumlah);
							for i:=1 to (BO.FBO[BO.Neff].Jumlah) do
								begin
									readln (F, BO.FBO[BO.Neff].Bahan[i]);
								end;
							readln (F, enter);
						end;
				end;
		close(F);		
		
		{File Inventori Bahan Mentah 1}
		assign (F, 'Inventori Bahan Mentah 1.txt');
		reset (F);
			IBM.LFIBM[1].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 1.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[1].Neff := IBM.LFIBM[1].Neff + 1;
							readln (F, IBM.LFIBM[1].FIBM[IBM.LFIBM[1].Neff].Nama);
							readln (F, IBM.LFIBM[1].FIBM[IBM.LFIBM[1].Neff].Waktu.dd, IBM.LFIBM[1].FIBM[IBM.LFIBM[1].Neff].Waktu.mm, IBM.LFIBM[1].FIBM[IBM.LFIBM[1].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[1].FIBM[IBM.LFIBM[1].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 2}
		assign (F, 'Inventori Bahan Mentah 2.txt');
		reset (F);
			IBM.LFIBM[2].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 2.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[2].Neff := IBM.LFIBM[2].Neff + 1;
							readln (F, IBM.LFIBM[2].FIBM[IBM.LFIBM[2].Neff].Nama);
							readln (F, IBM.LFIBM[2].FIBM[IBM.LFIBM[2].Neff].Waktu.dd, IBM.LFIBM[2].FIBM[IBM.LFIBM[2].Neff].Waktu.mm, IBM.LFIBM[2].FIBM[IBM.LFIBM[2].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[2].FIBM[IBM.LFIBM[2].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 3}
		assign (F, 'Inventori Bahan Mentah 3.txt');
		reset (F);
			IBM.LFIBM[3].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 3.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[3].Neff := IBM.LFIBM[3].Neff + 1;
							readln (F, IBM.LFIBM[3].FIBM[IBM.LFIBM[3].Neff].Nama);
							readln (F, IBM.LFIBM[3].FIBM[IBM.LFIBM[3].Neff].Waktu.dd, IBM.LFIBM[3].FIBM[IBM.LFIBM[3].Neff].Waktu.mm, IBM.LFIBM[3].FIBM[IBM.LFIBM[3].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[3].FIBM[IBM.LFIBM[3].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 4}
		assign (F, 'Inventori Bahan Mentah 4.txt');
		reset (F);
			IBM.LFIBM[4].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 4.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[4].Neff := IBM.LFIBM[4].Neff + 1;
							readln (F, IBM.LFIBM[4].FIBM[IBM.LFIBM[4].Neff].Nama);
							readln (F, IBM.LFIBM[4].FIBM[IBM.LFIBM[4].Neff].Waktu.dd, IBM.LFIBM[4].FIBM[IBM.LFIBM[4].Neff].Waktu.mm, IBM.LFIBM[4].FIBM[IBM.LFIBM[4].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[4].FIBM[IBM.LFIBM[4].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 5}
		assign (F, 'Inventori Bahan Mentah 5.txt');
		reset (F);
			IBM.LFIBM[5].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 5.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[5].Neff := IBM.LFIBM[5].Neff + 1;
							readln (F, IBM.LFIBM[5].FIBM[IBM.LFIBM[5].Neff].Nama);
							readln (F, IBM.LFIBM[5].FIBM[IBM.LFIBM[5].Neff].Waktu.dd, IBM.LFIBM[5].FIBM[IBM.LFIBM[5].Neff].Waktu.mm, IBM.LFIBM[5].FIBM[IBM.LFIBM[5].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[5].FIBM[IBM.LFIBM[5].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 6}
		assign (F, 'Inventori Bahan Mentah 6.txt');
		reset (F);
			IBM.LFIBM[6].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 6.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[6].Neff := IBM.LFIBM[6].Neff + 1;
							readln (F, IBM.LFIBM[6].FIBM[IBM.LFIBM[6].Neff].Nama);
							readln (F, IBM.LFIBM[6].FIBM[IBM.LFIBM[6].Neff].Waktu.dd, IBM.LFIBM[6].FIBM[IBM.LFIBM[6].Neff].Waktu.mm, IBM.LFIBM[6].FIBM[IBM.LFIBM[6].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[6].FIBM[IBM.LFIBM[6].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 7}
		assign (F, 'Inventori Bahan Mentah 7.txt');
		reset (F);
			IBM.LFIBM[7].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 7.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[7].Neff := IBM.LFIBM[7].Neff + 1;
							readln (F, IBM.LFIBM[7].FIBM[IBM.LFIBM[7].Neff].Nama);
							readln (F, IBM.LFIBM[7].FIBM[IBM.LFIBM[7].Neff].Waktu.dd, IBM.LFIBM[7].FIBM[IBM.LFIBM[7].Neff].Waktu.mm, IBM.LFIBM[7].FIBM[IBM.LFIBM[7].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[7].FIBM[IBM.LFIBM[7].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 8}
		assign (F, 'Inventori Bahan Mentah 8.txt');
		reset (F);
			IBM.LFIBM[8].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 8.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[8].Neff := IBM.LFIBM[8].Neff + 1;
							readln (F, IBM.LFIBM[8].FIBM[IBM.LFIBM[8].Neff].Nama);
							readln (F, IBM.LFIBM[8].FIBM[IBM.LFIBM[8].Neff].Waktu.dd, IBM.LFIBM[8].FIBM[IBM.LFIBM[8].Neff].Waktu.mm, IBM.LFIBM[8].FIBM[IBM.LFIBM[8].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[8].FIBM[IBM.LFIBM[8].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 9}
		assign (F, 'Inventori Bahan Mentah 9.txt');
		reset (F);
			IBM.LFIBM[9].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 9.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[9].Neff := IBM.LFIBM[9].Neff + 1;
							readln (F, IBM.LFIBM[9].FIBM[IBM.LFIBM[9].Neff].Nama);
							readln (F, IBM.LFIBM[9].FIBM[IBM.LFIBM[9].Neff].Waktu.dd, IBM.LFIBM[9].FIBM[IBM.LFIBM[9].Neff].Waktu.mm, IBM.LFIBM[9].FIBM[IBM.LFIBM[9].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[9].FIBM[IBM.LFIBM[9].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Mentah 10}
		assign (F, 'Inventori Bahan Mentah 10.txt');
		reset (F);
			IBM.LFIBM[10].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Mentah 10.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBM.LFIBM[10].Neff := IBM.LFIBM[10].Neff + 1;
							readln (F, IBM.LFIBM[10].FIBM[IBM.LFIBM[10].Neff].Nama);
							readln (F, IBM.LFIBM[10].FIBM[IBM.LFIBM[10].Neff].Waktu.dd, IBM.LFIBM[10].FIBM[IBM.LFIBM[10].Neff].Waktu.mm, IBM.LFIBM[10].FIBM[IBM.LFIBM[10].Neff].Waktu.yy);
							readln (F, IBM.LFIBM[10].FIBM[IBM.LFIBM[10].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 1}
		assign (F, 'Inventori Bahan Olahan 1.txt');
		reset (F);
			IBO.LFIBO[1].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 1.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[1].Neff := IBO.LFIBO[1].Neff + 1;
							readln (F, IBO.LFIBO[1].FIBO[IBO.LFIBO[1].Neff].Nama);
							readln (F, IBO.LFIBO[1].FIBO[IBO.LFIBO[1].Neff].Waktu.dd, IBO.LFIBO[1].FIBO[IBO.LFIBO[1].Neff].Waktu.mm, IBO.LFIBO[1].FIBO[IBO.LFIBO[1].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[1].FIBO[IBO.LFIBO[1].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 2}
		assign (F, 'Inventori Bahan Olahan 2.txt');
		reset (F);
			IBO.LFIBO[2].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 2.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[2].Neff := IBO.LFIBO[2].Neff + 1;
							readln (F, IBO.LFIBO[2].FIBO[IBO.LFIBO[2].Neff].Nama);
							readln (F, IBO.LFIBO[2].FIBO[IBO.LFIBO[2].Neff].Waktu.dd, IBO.LFIBO[2].FIBO[IBO.LFIBO[2].Neff].Waktu.mm, IBO.LFIBO[2].FIBO[IBO.LFIBO[2].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[2].FIBO[IBO.LFIBO[2].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 3}
		assign (F, 'Inventori Bahan Olahan 3.txt');
		reset (F);
			IBO.LFIBO[3].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 3.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[3].Neff := IBO.LFIBO[3].Neff + 1;
							readln (F, IBO.LFIBO[3].FIBO[IBO.LFIBO[3].Neff].Nama);
							readln (F, IBO.LFIBO[3].FIBO[IBO.LFIBO[3].Neff].Waktu.dd, IBO.LFIBO[3].FIBO[IBO.LFIBO[3].Neff].Waktu.mm, IBO.LFIBO[3].FIBO[IBO.LFIBO[3].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[3].FIBO[IBO.LFIBO[3].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 4}
		assign (F, 'Inventori Bahan Olahan 4.txt');
		reset (F);
			IBO.LFIBO[4].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 4.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[4].Neff := IBO.LFIBO[4].Neff + 1;
							readln (F, IBO.LFIBO[4].FIBO[IBO.LFIBO[4].Neff].Nama);
							readln (F, IBO.LFIBO[4].FIBO[IBO.LFIBO[4].Neff].Waktu.dd, IBO.LFIBO[4].FIBO[IBO.LFIBO[4].Neff].Waktu.mm, IBO.LFIBO[4].FIBO[IBO.LFIBO[4].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[4].FIBO[IBO.LFIBO[4].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 5}
		assign (F, 'Inventori Bahan Olahan 5.txt');
		reset (F);
			IBO.LFIBO[5].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 5.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[5].Neff := IBO.LFIBO[5].Neff + 1;
							readln (F, IBO.LFIBO[5].FIBO[IBO.LFIBO[5].Neff].Nama);
							readln (F, IBO.LFIBO[5].FIBO[IBO.LFIBO[5].Neff].Waktu.dd, IBO.LFIBO[5].FIBO[IBO.LFIBO[5].Neff].Waktu.mm, IBO.LFIBO[5].FIBO[IBO.LFIBO[5].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[5].FIBO[IBO.LFIBO[5].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 6}
		assign (F, 'Inventori Bahan Olahan 6.txt');
		reset (F);
			IBO.LFIBO[6].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 6.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[6].Neff := IBO.LFIBO[6].Neff + 1;
							readln (F, IBO.LFIBO[6].FIBO[IBO.LFIBO[6].Neff].Nama);
							readln (F, IBO.LFIBO[6].FIBO[IBO.LFIBO[6].Neff].Waktu.dd, IBO.LFIBO[6].FIBO[IBO.LFIBO[6].Neff].Waktu.mm, IBO.LFIBO[6].FIBO[IBO.LFIBO[6].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[6].FIBO[IBO.LFIBO[6].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 7}
		assign (F, 'Inventori Bahan Olahan 7.txt');
		reset (F);
			IBO.LFIBO[7].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 7.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[7].Neff := IBO.LFIBO[7].Neff + 1;
							readln (F, IBO.LFIBO[7].FIBO[IBO.LFIBO[7].Neff].Nama);
							readln (F, IBO.LFIBO[7].FIBO[IBO.LFIBO[7].Neff].Waktu.dd, IBO.LFIBO[7].FIBO[IBO.LFIBO[7].Neff].Waktu.mm, IBO.LFIBO[7].FIBO[IBO.LFIBO[7].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[7].FIBO[IBO.LFIBO[7].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 8}
		assign (F, 'Inventori Bahan Olahan 8.txt');
		reset (F);
			IBO.LFIBO[8].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 8.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[8].Neff := IBO.LFIBO[8].Neff + 1;
							readln (F, IBO.LFIBO[8].FIBO[IBO.LFIBO[8].Neff].Nama);
							readln (F, IBO.LFIBO[8].FIBO[IBO.LFIBO[8].Neff].Waktu.dd, IBO.LFIBO[8].FIBO[IBO.LFIBO[8].Neff].Waktu.mm, IBO.LFIBO[8].FIBO[IBO.LFIBO[8].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[8].FIBO[IBO.LFIBO[8].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 9}
		assign (F, 'Inventori Bahan Olahan 9.txt');
		reset (F);
			IBO.LFIBO[9].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 9.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[9].Neff := IBO.LFIBO[9].Neff + 1;
							readln (F, IBO.LFIBO[9].FIBO[IBO.LFIBO[9].Neff].Nama);
							readln (F, IBO.LFIBO[9].FIBO[IBO.LFIBO[9].Neff].Waktu.dd, IBO.LFIBO[9].FIBO[IBO.LFIBO[9].Neff].Waktu.mm, IBO.LFIBO[9].FIBO[IBO.LFIBO[9].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[9].FIBO[IBO.LFIBO[9].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Inventori Bahan Olahan 10}
		assign (F, 'Inventori Bahan Olahan 10.txt');
		reset (F);
			IBO.LFIBO[10].Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Inventori Bahan Olahan 10.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							IBO.LFIBO[10].Neff := IBO.LFIBO[10].Neff + 1;
							readln (F, IBO.LFIBO[10].FIBO[IBO.LFIBO[10].Neff].Nama);
							readln (F, IBO.LFIBO[10].FIBO[IBO.LFIBO[10].Neff].Waktu.dd, IBO.LFIBO[10].FIBO[IBO.LFIBO[10].Neff].Waktu.mm, IBO.LFIBO[10].FIBO[IBO.LFIBO[10].Neff].Waktu.yy);
							readln (F, IBO.LFIBO[10].FIBO[IBO.LFIBO[10].Neff].Jumlah);
							readln (F, enter);
						end;
				end;
		close(F);
		
		{File Resep}
		assign (F, 'Resep.txt');
		reset (F);
			R.Neff := 0;
			i := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Resep.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							R.Neff := R.Neff + 1;
							readln (F, R.FR[R.Neff].Nama);
							readln (F, R.FR[R.Neff].Harga);
							readln (F, R.FR[R.Neff].Jumlah);
							for i:=1 to (R.FR[R.Neff].Jumlah) do
								begin
									readln (F, R.FR[R.Neff].Bahan[i]);
								end;
							readln (F, enter);
						end;
				end;
		close(F);		
		
		{File Simulasi}
		assign (F, 'Simulasi.txt');
		reset (F);
			S.Neff := 0;
			if (EOF(F)) then
				begin
					writeln (' // File "Simulasi.txt" Kosong. //');
				end
			else
				begin
					while not (EOF(F)) do
						begin
							S.Neff := S.Neff + 1;
							readln (F, S.FS[S.Neff].Nomor);
							readln (F, S.FS[S.Neff].Waktu.dd, S.FS[S.Neff].Waktu.mm, S.FS[S.Neff].Waktu.yy);
							readln (F, S.FS[S.Neff].Hidup);
							readln (F, S.FS[S.Neff].Energi);
							readln (F, S.FS[S.Neff].Kapasitas);
							readln (F, S.FS[S.Neff].BeliMentah);
							readln (F, S.FS[S.Neff].BuatOlahan);
							readln (F, S.FS[S.Neff].JualOlahan);
							readln (F, S.FS[S.Neff].JualResep);
							readln (F, S.FS[S.Neff].Pemasukan);
							readln (F, S.FS[S.Neff].Pengeluaran);
							readln (F, S.FS[S.Neff].Saldo);
							readln (F, enter);
						end;
				end;
		close(F);
	
		writeln (' // Loading file berhasil. //');
	end;
	
end.
