with Ada.Text_IO; use Ada.Text_IO;
with Positions; use Positions;
with Array_Ops; use Array_Ops;
procedure Hello_World is 
  type Int_Array is array(Integer range <>) of Integer;
  zero : Position_Type;
  Nats : Int_Array(0 .. 2);
  function gt(l, r : Integer) return Boolean is begin
    return l > r;
  end gt;
  function Max_Nats is new Max(Integer, Integer, Int_Array, gt);
begin
  zero := Create(0, 0);
  Put_Line("Hello, World!");
  Put_Line("I created a point at" 
           & Integer'Image(get_X(zero)) 
           & "," 
           & Integer'Image(Get_Y(zero)));
  Nats := (0, 1, 2);
  Put_Line("the max of 0, 1, 2 is" & Integer'Image(Max_Nats(Nats)));
end Hello_World;
