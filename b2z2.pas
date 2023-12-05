program b2z2;
const
  n = 7;
  m = 5;
var
  matrix : array[0..n, 0..m] of integer;
  answer : array[0..n] of integer;
begin
  writeln('Вероятность генерации хотя бы одного отрицательного числа примерно равна 31%');
  for i:integer:=0 to n do
  begin
    answer[i] := 1;
    for j:integer:=0 to m do
      matrix[i, j] := random(101) - 6;
  end;
  
  for i:integer:=0 to n do
    for j:integer:=0 to m do
      if matrix[i, j] < 0 then 
        begin answer[i] := -1; break; end;
      
  writeln('Матрица:');
  for i:integer:=0 to n do
    writeln(matrix[i]);
  
  writeln;
  writeln('Результат:');
  writeln(answer);
end.