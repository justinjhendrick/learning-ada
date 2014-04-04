package Fields is
  type Field is array (Positive range <>, Positive range <>) of Character;
  procedure Print(Chars : Field);
end Fields;
