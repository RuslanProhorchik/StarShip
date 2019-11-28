Uses GraphABC;
Var
sec, win_x, win_y : Integer;
start_info, secS: String;
emptyS, fris, ris: String;
ship, background : Picture;
Begin

//MaximizeWindow;
SetWindowSize(800, 600);

Writeln('Введите время до старта ракеты, от 1 до 10 секунд: '); Readln(sec);

if((sec > 0) AND (sec < 10)) then
begin
  LockDrawing;
  
  win_x := WindowWidth;
  win_y := WindowHeight;
  
  //Writeln('Время до запуска: ', sec, ' секунд(ы)');
  //Writeln('Нажмите Enter (Ввод) для продолжения...');
  //Readln();
  
  //start_info := 'До запуска осталось: ';
  //emptyS := '                                              ';
  //for var i:= sec downto 1 do
  //begin
  //  str(i, secS);
  //  TextOut(10, 100, start_info + secS);
  //  Sleep(1000);
  //  TextOut(10, 100, emptyS);
  //end;
  
  //TextOut(10, 100, 'Поехали!!!!');
  //ClearWindow;
  //SetPenColor (clred);
  //Rectangle (0,0,120,400);
  
  
  
  
  background := Picture.Create('d:\background.jpg');
  background.Draw(0,0, win_x, win_y);

  fris := 'd:\moreover-clipart-1.jpg';
  ship := Picture.Create(fris);
  ship.Transparent := false;  
  ship.Draw(10,50, 80,100);


  SetFontSize(20);
  SetFontColor(clDarkRed);
  SetBrushStyle(bsClear);
 
  TextOut(50, 400, 'Поехали!!!!');
  
  Redraw;
  
  //Writeln('Поехали!!!!');

end
else
  Writeln('Время до старта задано не верно. Запуск не возможен.');
  
  //Writeln('Выход');
End.