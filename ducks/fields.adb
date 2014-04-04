with Ada.Text_IO; use Ada.Text_IO;
package body Fields is
  -- Create a field from a file
  function Create(filename : String) return Field_Type is
    File : File_Type;
    F : Field_Type;
    Line : String(Width);
    Last : Width;
    r : Height;
  begin
    F := new Field;
    Open(File, In_File, filename);
    r := 1;
    loop
      -- Get line from file
      Get_Line(File, Line, Last);
      -- Fill in this row of Field
      for c in Width loop
        if c > Last then
          F.Chars(r, c) := ' '; -- any extra should be white space
        else
          F.Chars(r, c) := Line(c);
        end if;
      end loop;
      r := r + 1;
    end loop;
  exception
    when End_Error =>
      Close(File);
      return F;
    when others => raise;
  end Create;

  -- Clear screen and print new field
  -- Takes a field (2D array of Characters) and prints to console
  procedure Print(F : Field_Type) is
  begin
    Put(ASCII.ESC & "[2J"); -- clears screen, move cursor top left.
    Put(ASCII.ESC & "[0;0H");
    for I in F.Chars'Range(1) loop
      for J in F.Chars'Range(2) loop
        Put(F.Chars(I, J));
      end loop;
      New_Line;
    end loop;
  end Print;
end Fields;
