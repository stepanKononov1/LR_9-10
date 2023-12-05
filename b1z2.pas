var 
  a: array of integer;
  y: integer;
procedure magic (var x: array of integer);
var 
  mn, mx: integer;
  begin
    mx := mx.MinValue;
    mn := x[0];
    for i:integer:=1 to length(x) - 1 do
    begin
      if abs(x[i]) < abs(mn) then mn:=x[i];
      if (x[i] < 0) and (x[i] > mx) then mx := x[i];
    end;
    setlength(x, 2);
    x[0]:=mn;
    x[1]:=mx;
  end;
begin
  write('Введите массив чисел: ');
  setlength(a, 9);
  for i:integer:=0 to length(a) - 1 do begin readln(y); a[i]:=y; end;
  magic(a);
  writeln('Минимальный по модулю элемент: ', a[0]);
  if a[1] = y.MinValue then writeln('Нет отрицательных чисел')
  else writeln('Максимальный отрицательный элемент: ', a[1]);
end.