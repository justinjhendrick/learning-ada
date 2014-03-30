package body Positions is
  function Create(X : Integer; Y : Integer) return Position_Type is
    result : Position_Type;
  begin
    result := new Position;
    result.X := X;
    result.Y := Y;
    return result;
  end Create;

  function Get_X(this : Position_Type) return Integer is begin
    return this.X;
  end Get_X;

  function Get_Y(this : Position_Type) return Integer is begin
    return this.Y;
  end Get_Y;
end Positions;
