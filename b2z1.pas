program b2z1;
const
  n = 5
  m = 7
var
  matrix : array[0..n, 0..m] of integer;
  answer : array[0..n] of string;
  ans : string;
begin
  for i:integer:=0 to n do
    for j:integer:=0 to m do
      matrix[i, j] := random(51) - 25;
    
  for i:integer:=0 to n do
    for j:integer:=0 to m do
      if abs(matrix[i, j]) > 4 then 
      begin
        str(matrix[i, j], ans);
        answer[i]:=ans;
        break;
      end;
      
      
  writeln('Матрица:');
  for i:integer:=0 to n do
    writeln(matrix[i]);
  
  for i:integer:=0 to n do
    if answer[i]='' then answer[i]:='*';
  
  writeln;
  writeln('Результат:');
  writeln(answer);
end.