Uses GraphABC;
Var
sec, win_x, win_y : Integer;
info_x, info_y, ship_start_x, ship_start_y, ship_y: Integer;
start_info, secS: String;
fship, fbackground: String;
ship, background : Picture;
Begin

//MaximizeWindow;
SetWindowSize(800, 600);

Writeln('Введите время до старта ракеты, от 1 до 10 секунд: '); Readln(sec);

if((sec > 0) AND (sec < 10)) then
begin
  Writeln('Время до запуска: ', sec, ' секунд(ы)');
  Writeln('Нажмите Enter (Ввод) для продолжения...');
  Readln();

  //ClearWindow;
  
  LockDrawing;
  
  win_x := WindowWidth;
  win_y := WindowHeight;
  
  fbackground := 'd:\background.jpg';
  fship := 'd:\moreover-clipart-1.jpg';
  
  info_x := 400;
  info_y := 400;
  SetFontSize(20);
  SetFontColor(clDarkRed);
  SetBrushStyle(bsClear);
      
  background := Picture.Create(fbackground);
  
  ship := Picture.Create(fship);
  ship.Transparent := false;
  ship_start_x := 100;
  ship_start_y := 500;  

  start_info := 'До запуска осталось: ';
  
  for var i:= sec downto 0 do
  begin  
    background.Draw(0,0, win_x, win_y);
    ship.Draw(ship_start_x, ship_start_y, 40, 55);
        
    if i = 0 then
    begin
      TextOut(info_x, info_y, 'Поехали!!!!');      
    end
      else
    begin
      str(i, secS);
      TextOut(info_x, info_y, start_info + secS);        
    end;
       
    Redraw;    
    Sleep(1000);
  end;

  ship_y := ship_start_y;

  while ship_y > -55 do
  begin
    ship_y := ship_y - 10;
    
    background.Draw(0,0, win_x, win_y);  
    ship.Draw(ship_start_x, ship_y, 40, 55);

    Redraw; 
    Sleep(100);    
  end;
     
     
  TextOut(info_x, info_y, 'Запуск прошел успешно!');
  Redraw;
end
else
  Writeln('Время до старта задано не верно. Запуск не возможен.');
End.