program b2z4;
const
  n = 7;
  m = 7;
var
  matrix : array[0..n, 0..m] of integer;
  answer : array[0..n] of integer;
  min : integer;
  flag : boolean;
begin
  for i:integer:=0 to n do
    for j:integer:=0 to m do
      matrix[i, j] := random(101) - 50;
    
  for i:integer:=0 to n do
  begin
    min := min.MaxValue;
    for j:integer:=0 to m do
      if min > matrix[i, j] then min := matrix[i, j];
    answer[i] := min;
  end;
  
  min:=0;
  flag:=False;
  for i:integer:=0 to n do
    min:=min+answer[i];
  min:=round(min/n);
  for i:integer:=0 to n do
    if answer[i] = min then begin flag := True; break end;
      
  writeln('Матрица:');
  for i:integer:=0 to n do
    writeln(matrix[i]);
    
  writeln;
  writeln('Результат:');
  writeln(answer);
  if flag = True then
    writeln('Существует число в массиве, равное своему среднему арифметическому')
  else
    writeln('Число равное своему среднему арифметическому в массиве не существует');
end.