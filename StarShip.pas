Uses GraphABC;
Var
sec: Integer;
start_info, secS: String;
emptyS: String;
Begin
Writeln('Введите время до старта ракеты, от 1 до 10 секунд: '); Readln(sec);

if((sec > 0) AND (sec < 10)) then
begin
  
  Writeln('Время до запуска: ', sec, ' секунд(ы)');
  Writeln('Нажмите Enter (Ввод) для продолжения...');
  Readln();
  
  start_info := 'До запуска осталось: ';
  emptyS := '                                              ';
  for var i:= sec downto 1 do
  begin
    str(i, secS);
    TextOut(10, 100, start_info + secS);
    Sleep(1000);
    TextOut(10, 100, emptyS);
  end;
  
  TextOut(10, 100, 'Поехали!!!!');
  //Writeln('Поехали!!!!');

end
else
  Writeln('Время до старта задано не верно. Запуск не возможен.');
  
  Writeln('Выход');
End.