package Fields is
  type Field is tagged private;
  type Field_Type is access Field;
  subtype Width is Natural range 1 .. 80; -- TODO: indefinite size
  subtype Height is Natural range 1 .. 25;
  function Create(filename : String) return Field_Type;
  procedure Print(F : Field_Type);
private
  type Field_Array is array (Height, Width) of Character;
  type Field is tagged record
    Chars : Field_Array;
  end record;
end Fields;
