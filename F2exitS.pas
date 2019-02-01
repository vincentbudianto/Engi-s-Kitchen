{Unit F2exit}
unit F2exitS;

{Interface}
interface

	uses typedata;
	
	{Procedure Exit}
	procedure F2exit ();
	{I.S. Tidak ada variabel input}
	{F.S. Keluar dari program & menyimpan semua perubahan data ke file eksternal}

{Implementation}
implementation
	
	{Procedure Exit}
	procedure F2exit ();
	
	{Algoritma Procedure Exit}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln ('                 Terimakasih sudah menggunakan aplikasi kami!                   ');
		writeln (' | -------------------------------------------------------------------------- |');
		writeln ('                       David Petra Natanael 16517168                           ');
		writeln ('                  Muhammad Hanindya Budi Pratama 16517175                      ');
		writeln ('                             Leonardo 16517182                                 ');
		writeln ('                         Vincent Budianto 16517189                             ');
		writeln ('                       Abiel Putra Dimyati 16517196                            ');
		writeln (' | -------------------------------------------------------------------------- |');
		exit ();
	end;
	
end.
