program z1;
// Глобальные
var 
  k: integer;
  c: array of integer;
  
function first (a: array of integer) : integer; // Фактические
// Локальные, формальные
var b: integer;
begin
  b:=0;
  for i:integer:=0 to length(a) - 1 do
    if a[i] > 0 then begin b:=i + 1; break; end;
  first:=b;
end;
begin
  for i:integer:=0 to 4 do
  begin 
    setlength(c, i + 1);
    writeln('Введите число: ');
    read(k);
    c[i]:=k;
  end;
  writeln(c);
  writeln('Результат: ');
  writeln('Индекс первого положительного числа: ', first(c));
end.