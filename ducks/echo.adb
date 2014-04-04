with Fields; use Fields;
procedure echo is
  F : Field_Type;
  G : Field_Type;
begin
  F := Create("echo.adb");
  G := Create("fields.ads");
  Print(F);
  delay 1.0;
  Print(G);
end echo;
