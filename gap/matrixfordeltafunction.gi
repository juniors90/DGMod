InstallGlobalFunction( ActionkGdualOnYDModule, function( delta_h, simple, base_elm )
    local x, g, conj;
    x := base_elm!.GrpElement;
    g := simple!.Weight.g;
    conj := x * g * x ^ (-1);
    if delta_h(conj) <> 0 then
       return base_elm;
    else
        return 0;
    fi;
end);


InstallGlobalFunction(StructureMatrixSimpleModule, function( delta_h, simple )
    local  base_elm, BaseMod, degreeMod, M, action, i, j;
    BaseMod := simple!.Base;
    degreeMod := Length( BaseMod );
    M := NullMat( degreeMod, degreeMod, Rationals );
    for j in [1..degreeMod] do
        base_elm := BaseMod[j];
        action := ActionkGdualOnYDModule( delta_h, simple, base_elm);
        if action <> 0 then
            i := Position( BaseMod, action );
            M[i][j] := 1;
        fi;
    od;
    return M;
end);
