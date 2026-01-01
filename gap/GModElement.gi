###########################################################
# Constructor implementation
###########################################################

GModElement := function(x, v)
    local r;
    r := Objectify(GModElementType, rec());
    SetGrpElement(r, x);
    SetVSpaceElement(r, v);
    return r;
end;

###########################################################
# Print methods installation
###########################################################

InstallMethod(ViewString, "show G-Module element", [IsGModElementObj],
    function(t)
        return Concatenation(
            "(", ViewString(GrpElement(t)), ") ⊗ ",
            ViewString(VSpaceElement(t))
        );
end);

InstallMethod(String, "convert G-Module element to string", [IsGModElementObj],
    function(t)
        return Concatenation(
            "(", String(GrpElement(t)), ") ⊗ ",
            String(VSpaceElement(t))
        );
end);

InstallMethod(\=, "equiality for GModuleElement elements", [IsGModElementObj, IsGModElementObj],
    function(x,y)
        return GrpElement(x) = GrpElement(y) and VSpaceElement(x) = VSpaceElement(y); 
end);