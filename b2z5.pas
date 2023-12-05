program b2z5;
const
  n = 7;
  m = 7;
var
  matrix : array[0..n, 0..m] of integer;
  answer : array[0..n] of integer;
  max : integer;
  count : integer;
begin
  for i:integer:=0 to n do
  begin
    answer[i] := -1;
    for j:integer:=0 to m do
      matrix[i, j] := random(11) - 6;
  end;
    
  for i:integer:=0 to n do
  begin
    count := 0;
    max := max.MinValue;
    for j:integer:=0 to m do
      if max < matrix[i, j] then max := matrix[i, j];
    for j:integer:=0 to m do
      if matrix[i, j] = max then count := count + 1;
    if count > 1 then answer[i] := 1;
  end;
      
  writeln('Матрица:');
  for i:integer:=0 to n do
    writeln(matrix[i]);
  
  writeln;
  writeln('Результат:');
  writeln(answer);
end.