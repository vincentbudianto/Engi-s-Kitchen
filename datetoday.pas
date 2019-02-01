{Unit Kwaktu}
unit datetoday;

{Interface}
interface

	uses typedata;
	
	{Function Kwaktu}
	function Kwaktu (x : tanggal) : longint;
	{I.S. }
	{F.S. }

{Implementation}
implementation

	{Function Kwaktu}
	function Kwaktu (x : tanggal) : longint;
	
	{Kamus Lokal}
	var
		i    : integer;
		t, b : longint;
	
	{Algoritma Function}
	begin
		t := 0;
		b := 0;
		for i:=0 to (x.yy - 1) do
			begin
				if (x.yy mod 100 <> 0) and (x.yy mod 4 = 0) then
					begin
						t := t + 366;
					end 
				else
					begin
						t := t + 365;
					end;
			end;
		for i:=1 to (x.mm - 1) do 
			begin	
				case x.mm of
					1, 3, 5, 7, 8, 10, 12: begin
											   b := b + 31;
										   end;
					2                    : begin
											   if ( x.yy mod 100 <> 0) and (x.yy mod 4 = 0) then
												   begin
													   b := b + 29;
												   end
											   else
												   begin
													   b := b + 28;
												   end;
										   end;
					4, 6, 9, 11       	 : begin
											   b := b + 30;
										   end;
				end;
			end;		
		Kwaktu := t + b + x.dd;
	end;
	
end.	
	
