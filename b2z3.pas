program b2z3;
const
  n = 7;
  m = 7;
var
  matrix : array[0..n, 0..m] of integer;
  answer : array[0..n] of integer;
begin
  for i:integer:=0 to n do
  begin
    answer[i] := -1;
    for j:integer:=0 to m do
      matrix[i, j] := random(11) - 6;
  end;
    
  for i:integer:=0 to n do
    for j:integer:=0 to m - 1 do
      if matrix[i, j] + matrix[i, j + 1] = 7 then 
        answer[i] := 1;
      
      
  writeln('Матрица:');
  for i:integer:=0 to n do
    writeln(matrix[i]);
  
  writeln;
  writeln('Результат:');
  writeln(answer);
end.