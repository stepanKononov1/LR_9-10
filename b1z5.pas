program b1zd5;
var
  arr1, arr2: Array of integer;
  
  
function answer (arr1, arr2 : array of integer) : array of integer;
var mx, mxc, mn, mnc, dif1, dif2 : integer;
begin
  for i:integer:=0 to 19 do
    if arr1[i] mod 5 = 0 then begin dif1:=i; break end;
  for i:integer:=0 to 19 do
    if arr2[i] mod 5 = 0 then begin dif2:=i; break end;
  
  if dif1 < dif2 then
  begin
    mx := mx.MinValue;
    mn := mn.MaxValue;
    for j:integer:=0 to 19 do
    begin
      if mx < arr1[j] then begin mx:=arr1[j]; mxc:=j; end;
      if mn > arr2[j] then begin mn:=arr2[j]; mnc:=j; end;
    end;
    for j:integer:=mnc + 1 to 19 do
      arr2[j]:=arr2[j]*2;
    arr1[mxc]:=0;
  end;
  
  if dif1 > dif2 then
  begin
    mx := mx.MinValue;
    mn := mn.MaxValue;
    for j:integer:=0 to 19 do
    begin
      if mx < arr2[j] then begin mx:=arr2[j]; mxc:=j; end;
      if mn > arr1[j] then begin mn:=arr1[j]; mnc:=j; end;
    end;
    for j:integer:=mnc + 1 to 19 do
      arr1[j]:=arr1[j]*2;
    arr2[mxc]:=0;
  end;
  
  writeln('Первый массив: ');
  writeln(arr1);
  writeln('Второй массив: ');
  writeln(arr2);
end;


begin
  setlength(arr1, 20);
  setlength(arr2, 20);
  for i:integer:= 0 to 19 do
  begin
    arr1[i]:=random(51) - 25;
    arr2[i]:=random(51) - 25;
  end;
  writeln('Первый массив: ');
  writeln(arr1);
  writeln('Второй массив: ');
  writeln(arr2);
  writeln;
  writeln('Результаты: ');
  answer(arr1, arr2);
end.