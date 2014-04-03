with Ada.Text_IO; use Ada.Text_IO;
procedure clears_screen is
begin
  for i in 1 .. 10 loop
    Put(ASCII.ESC & "[2J");
    for j in 1 .. 10 loop
      Put_Line(Integer'Image(j));
      delay 0.1;
    end loop;
  end loop;
end clears_screen;
