--This is Ada Code
With Ada.Text_IO; Use Ada.Text_IO;
With Ada.Integer_Text_IO; Use Ada.Integer_Text_IO;

procedure Hanoi is
  procedure hanoi(n:integer; x:string; y:string; z:string) is
  begin
    if n>1 then hanoi(n-1,x,z,y); end if;
    Ada.Text_IO.Put_Line(x&"=>"&y);
    if n>1 then hanoi(n-1,z,y,x); end if;
  end;
n:integer;
begin
  Ada.Integer_Text_IO.Get(n);
  hanoi(n,"a","b","c");
end Hanoi;
