program ideone;
procedure hanoi(n:integer; x:string; y:string; z:string);
begin
	if n>1 then hanoi(n-1,x,z,y);
	writeln(x+'=>'+y);
	if n>1 then	hanoi(n-1,z,y,x);
end;

var n:integer;
begin
	read(n);
	hanoi(n,'a','b','c');
end.
