package Printer is
  type Field is array (Positive range <>, Positive range <>) of Character;
  procedure Print_Field(Chars : Field);
end Printer;
