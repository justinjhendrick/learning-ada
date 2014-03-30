package Array_Ops is
  generic
    type Index_Type is (<>);
    type Element_Type is private;
    type Element_Array is array (Index_Type range <>) of Element_Type;
    with function ">"(l, r : element_type) return Boolean;
  function Max(A : Element_Array) return Element_Type;
end Array_Ops;
