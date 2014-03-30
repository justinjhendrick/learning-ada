with Ada.Text_IO; use Ada.Text_IO;
with Positions; use Positions;
procedure Hello_World is 
  zero : Position_Type;
begin
  zero := Create(0, 0);
  Put_Line("Hello, World!");
  Put_Line("I created a point at" 
           & Integer'Image(get_X(zero)) 
           & "," 
           & Integer'Image(Get_Y(zero)));
end Hello_World;
