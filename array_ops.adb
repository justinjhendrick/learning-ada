package body Array_Ops is
  -- Find the max element of an array
  function Max(A : Element_Array) return Element_Type is
    Result : Element_Type;
  begin
    Result := A(A'First);
    for I in Index_Type'Succ(A'First) .. A'Last loop
      if A(I) > Result then
        Result := A(I);
      end if;
    end loop;
    return Result;
  end Max;
end Array_Ops;
