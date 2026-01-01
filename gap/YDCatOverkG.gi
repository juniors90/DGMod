#
# YDCatOverkG: Compute simples object for the Yetter-Drinfeld Categories over Group Algebras.
#
# Implementations
#
SimplesModYD := function( G, weight, M_g_rho, base)
    local obj;
    # Comprobamos que los argumentos son de tipo correcto
    #if not(f in Elements(GF(ConfigSDP.p))) then
    #    Error(Concatenation("fiel part must be an element of GF(p), with p:=", String(ConfigSDP.p), "."));
    #fi;
    obj := Objectify( SimplesModYDType, rec( ) );
	SetSimple( obj, M_g_rho);
    SetWeight( obj, weight );
    SetBase( obj, base );
    SetGeneratorsOfG( obj, GeneratorsOfGroup(G) );
    SetGeneratorsOfImages( obj, GeneratorsOfGroup( Image( M_g_rho ) ) );
    SetStructureDescriptionOfG( obj, StructureDescription(G) );
    SetG_g(obj, StructureDescription(Source(weight.rho)));
    return obj;
end;

