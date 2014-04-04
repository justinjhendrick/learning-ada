with Ada.Text_IO; use Ada.Text_IO;
package body Fields is
  -- Clear screen and print new field
  -- Takes a field (2D array of Characters) and prints to console
  procedure Print(Chars : Field) is
  begin
    Put(ASCII.ESC & "[2J"); -- clears screen, move cursor top left.
    for I in Chars'Range(1) loop
      for J in Chars'Range(2) loop
        Put(Chars(I, J));
      end loop;
      New_Line;
    end loop;
  end Print;
end Fields;
