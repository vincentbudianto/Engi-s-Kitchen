{Unit Validasi}
unit validasi;

{Interface}
interface
	
	uses typedata;

	{Procedure Valid}
	procedure valid (var v : boolean);
	{I.S. }
	{F.S. }
	
{Implementation}
implementation

	{Procedure Valid}
	procedure valid (var v : boolean);
	
	{Kamus Lokal}
	var
		a : char;
		
	{Algoritma Procedure}
	begin
		writeln (' | -------------------------------------------------------------------------- |');
		writeln (' | ---------------                 KONFIRMASI                 --------------- |');
		writeln (' | ---------------                                            --------------- |');
		writeln (' | ---------------  "y" untuk lanjutkan | "n" untuk batalkan  --------------- |');
		writeln (' | -------------------------------------------------------------------------- |');
		repeat
		write (' >> '); readln (a);
		if ((a = 'y') or (a = 'Y')) then
			begin
				v := true;
			end
		else if ((a = 'n') or (a = 'N')) then
			begin
				v := false
			end
		else {(a <> 'y') and (a <> 'Y') and (a <> 'n') or (a <> 'N')}
			begin
				writeln (' | -------------------------------------------------------------------------- |');
				writeln (' | ---------------  MASUKAN ANDA SALAH SILAHKAN COBA KEMBALI  --------------- |');
				writeln (' | ---------------                                            --------------- |');
				writeln (' | ---------------  "y" untuk lanjutkan | "n" untuk batalkan  --------------- |');
				writeln (' | -------------------------------------------------------------------------- |');
			end;
		until ((a = 'y') or (a = 'Y') or (a = 'n') or (a = 'N'));
	end;
	
end.
