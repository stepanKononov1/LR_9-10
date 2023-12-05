program z1;
var 
  k: integer;
  c: array of integer;
  function inn (a: array of integer) : integer;
  var b: integer;
  begin
    b:=1;
    for i:integer:=0 to length(a) - 1 do
      b:=b*a[i];
    inn := b;
  end;
begin
  for i:integer:=0 to 4 do begin setlength(c, i + 1);
  writeln('Введите число: ');
  read(k);
  c[i]:=k;
  end;
  print(inn(c));
end.