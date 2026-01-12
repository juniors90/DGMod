###########################################################
# Constructor implementation
###########################################################

BasisElement := function(x, v)
    local r;
    r := Objectify(BasisElementType, rec());
    SetGrpElement(r, x);
    SetVSpaceElement(r, v);
    return r;
end;

###########################################################
# Print methods installation
##########################################################

InstallMethod(ViewString, "show G-Module element", [IsBasisElementObj],
    function(t)
        return Concatenation(
            "( ", ViewString(GrpElement(t)), " , ", ViewString(VSpaceElement(t)), " )"
        );
end);


InstallMethod(String, "convert G-Module element to string", [IsBasisElementObj],
    function(t)
        return Concatenation(
            "( ", String(GrpElement(t)), " , ", String(VSpaceElement(t)), " )"
        );
end);

InstallMethod( PrintObj, "for G-Module element", [ IsBasisElementObj ],
  function( t )
    Print(String(t));
end );

InstallMethod(\=, "equiality for GModuleElement elements", [IsBasisElementObj, IsBasisElementObj],
    function(x,y)
        return GrpElement(x) = GrpElement(y) and VSpaceElement(x) = VSpaceElement(y); 
end);