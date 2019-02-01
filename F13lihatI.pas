{Unit F13lihatInventori}
unit F13lihatI;

{Interface}
interface
	
	uses sort, typedata;
	
	{Procedure F13lihatInventori}
	procedure F13lihatInventori (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var N : integer);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation
	
	{Procedure F13lihatInventori}
	procedure F13lihatInventori (var IBM : fileInventoriBahanMentah; var IBO : fileInventoriBahanOlahan; var N : integer);
	
	{Kamus Lokal}
	var
		i     : integer;
		enter : string;
		F     : text;
		
	{Algoritma Procedure}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' |                         Inventori Bahan Mentah                             |');
		writeln (' | -------------------------------------------------------------------------- |');
		IBM.LFIBM[N].Neff := 0;
		case N of 
			1  : begin
					assign (F, 'Inventori Bahan Mentah 1.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Mentah 2.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Mentah 3.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			4  : begin 
					assign (F, 'Inventori Bahan Mentah 4.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			5  : begin 
					assign (F, 'Inventori Bahan Mentah 5.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			6  : begin 
					assign (F, 'Inventori Bahan Mentah 6.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			7  : begin 
					assign (F, 'Inventori Bahan Mentah 7.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			8  : begin 
					assign (F, 'Inventori Bahan Mentah 8.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			9  : begin 
					assign (F, 'Inventori Bahan Mentah 9.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
			10 : begin 
					assign (F, 'Inventori Bahan Mentah 10.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBM.LFIBM[N].Neff := IBM.LFIBM[N].Neff + 1;
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Nama);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.dd, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.mm, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Waktu.yy);
								readln (F, IBM.LFIBM[N].FIBM[IBM.LFIBM[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBM (IBM, N);
					for i:=1 to (IBM.LFIBM[N].Neff) do
						begin
							write ('  ', IBM.LFIBM[N].FIBM[i].Nama); write (' | ');
							write (IBM.LFIBM[N].FIBM[i].Waktu.dd); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.mm); write ('/');
							write (IBM.LFIBM[N].FIBM[i].Waktu.yy); write (' | ');
							writeln (IBM.LFIBM[N].FIBM[i].Jumlah);
						end;
				 end;
		end;
		writeln ();
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' |                         Inventori Bahan Olahan                             |');
		writeln (' | -------------------------------------------------------------------------- |');
		IBO.LFIBO[N].Neff := 0;
		case N of 
			1  : begin
					assign (F, 'Inventori Bahan Olahan 1.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			2  : begin
					assign (F, 'Inventori Bahan Olahan 2.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			3  : begin
					assign (F, 'Inventori Bahan Olahan 3.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			4  : begin 
					assign (F, 'Inventori Bahan Olahan 4.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			5  : begin 
					assign (F, 'Inventori Bahan Olahan 5.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			6  : begin 
					assign (F, 'Inventori Bahan Olahan 6.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			7  : begin 
					assign (F, 'Inventori Bahan Olahan 7.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			8  : begin 
					assign (F, 'Inventori Bahan Olahan 8.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			9  : begin 
					assign (F, 'Inventori Bahan Olahan 9.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
			10 : begin 
					assign (F, 'Inventori Bahan Olahan 10.txt');
					reset (F);
						while not (EOF(F)) do
							begin
								IBO.LFIBO[N].Neff := IBO.LFIBO[N].Neff + 1;
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Nama);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.dd, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.mm, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Waktu.yy);
								readln (F, IBO.LFIBO[N].FIBO[IBO.LFIBO[N].Neff].Jumlah);
								readln (F, enter);
							end;
					close (F);
					sortIBO (IBO, N);
					for i:=1 to (IBO.LFIBO[N].Neff) do
						begin
							write ('  ', IBO.LFIBO[N].FIBO[i].Nama); write (' | ');
							write (IBO.LFIBO[N].FIBO[i].Waktu.dd); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.mm); write ('/');
							write (IBO.LFIBO[N].FIBO[i].Waktu.yy); write (' | ');
							writeln (IBO.LFIBO[N].FIBO[i].Jumlah);
						end;
				 end;
		end;
		
	end;
	
end.
	
