
#
# YDCatOverkG: Compute simples object for the Yetter-Drinfeld Categories over Group Algebras.
#
# Implementations
#


# Diccionario de letras griegas para GAP
GreekLetter := rec(
    alpha := "α",   Alpha := "Α",
    beta  := "β",   Beta  := "Β",
    gamma := "γ",   Gamma := "Γ",
    delta := "δ",   Delta := "Δ",
    epsilon := "ε", Epsilon := "Ε",
    zeta := "ζ",    Zeta := "Ζ",
    eta := "η",     Eta := "Η",
    theta := "θ",   Theta := "Θ",
    iota := "ι",    Iota := "Ι",
    kappa := "κ",   Kappa := "Κ",
    lambda := "λ",  Lambda := "Λ",
    mu := "μ",      Mu := "Μ",
    nu := "ν",      Nu := "Ν",
    xi := "ξ",      Xi := "Ξ",
    omicron := "ο", Omicron := "Ο",
    pi := "π",      Pi := "Π",
    rho := "ρ",     Rho := "Ρ",
    sigma := "σ",   Sigma := "Σ",
    tau := "τ",     TauGL := "Τ",
    upsilon := "υ", Upsilon := "Υ",
    phi := "φ",     PhiGL := "Φ",
    chi := "χ",     Chi := "Χ",
    psi := "ψ",     Psi := "Ψ",
    omega := "ω",   Omega := "Ω"
);

SimplesModYD := function( G, weight)
    local obj, M_g_rho, base;
    M_g_rho := InducedSubgroupRepresentation( G, weight.rho );;
    base := TensorBasisForSimpleMod( G, weight.g, weight.rho );;
    obj := Objectify( SimplesModYDType, rec( ) );
	SetSimple( obj, M_g_rho);
    SetWeight( obj, weight );
    SetBase( obj, base );
    SetGeneratorsOfG( obj, GeneratorsOfGroup(G) );
    SetGeneratorsOfImages( obj, GeneratorsOfGroup( Image( M_g_rho ) ) );
    SetGroupAttachedToMod( obj, G );
    SetStructureDescriptionOfG( obj, StructureDescription(G) );
    SetG_g(obj, Source(weight.rho));
    return obj;
end;

###########################################################
# Print methods installation
###########################################################

InstallMethod(ViewString, "show D(G)-Module", [IsSimplesModYDObj],
    function(s)
        return Concatenation(
            "< Simple D(G)-Module with weight ( g := ", ViewString(Weight(s).g), ", ", GreekLetter.rho, " := ", String(Weight(s).rho), " )>"
        );
end);

InstallMethod(String, "show D(G)-Module to string", [IsSimplesModYDObj],
    function(s)
        return Concatenation(
            "Weight := \n g := ", ViewString( Weight( s ).g ),
                    ", \n ", GreekLetter.rho, " := ", String( Weight( s ).rho ), "\n",
            "M(g, rho) := ", String( Simple( s ) ), "\n",
            "Base := ", ViewString( Base( s ) ), "\n",
            "G := ", ViewString( GroupAttachedToMod(s)), "\n",
            "Structure Description of G := ", StructureDescription(GroupAttachedToMod(s)), "\n",
            "G_g := ", ViewString( G_g(s) ), "\n",
            "Structure Description of G_g := ", StructureDescription(G_g(s)), "\n"
        );
end);

InstallMethod( Display, "for D(G)-Module object", [ IsSimplesModYDObj],
  function( s )

    Print(
        Concatenation(
            "Weight := \n g := ", ViewString( Weight( s ).g ),
                    ", \n ", GreekLetter.rho, " := ", String( Weight( s ).rho ), "\n",
            "M(g, rho) := ", String( Simple( s ) ), "\n",
            "Base := ", ViewString( Base( s ) ), "\n",
            "G := ", ViewString( GroupAttachedToMod(s)), "\n",
            "Structure Description of G := ", StructureDescription(GroupAttachedToMod(s)), "\n",
            "G_g := ", ViewString( G_g(s) ), "\n",
            "Structure Description of G_g := ", StructureDescription(G_g(s)), "\n"
        )
    );
  end );

