with Ada.Text_IO; use Ada.Text_IO;
procedure Inplace_Print is
begin
  for i in 1 .. 10 loop
    Put("count" & Integer'Image(i) & ASCII.CR);
    delay 1.0;
  end loop;
end Inplace_Print;
