package Positions is

  type Position is tagged private;

  type Position_Type is access Position;

  function Create(X : Integer; Y : Integer) return Position_Type;
  
  function Get_X(this : Position_Type) return Integer;
  function Get_Y(this : Position_Type) return Integer;

private

  type Position is tagged
    record
      X : Integer;
      Y : Integer;
    end record;
end Positions;
