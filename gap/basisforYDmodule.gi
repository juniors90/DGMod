
###############################################################
## Function to compute the k-basis for M(g, rho) as D(G)-mod
###############################################################

InstallGlobalFunction( TensorBasisForSimpleMod, function( G, g, rho )
    local rec_rho, Vbase, cosets, E_g, TensorBase, idxs, Gamma_g;

    # Computamos la representación usando Serre
    rec_rho := REPN_ComputeUsingSerre(rho);

    # Base de la representación irreducible
    Vbase := rec_rho.basis;

    # Lista de cosets derechos de Gamma_g en G
    Gamma_g := Centralizer(G, g);
    cosets := RightCosets(G, Gamma_g);

    # Tomamos un representante de cada coset
    E_g := List( cosets, c -> Representative( c ) );
    
    # Armamos la base del tensor kG ⊗ V como pares formales
    TensorBase := List(Cartesian(E_g, Vbase), x -> BasisElement( x[1], x[2] ));

    return TensorBase;
end);


###############################################################
## Function to compute 
###############################################################

InstallGlobalFunction( GetCentralizers, function( G )
    local conjClass, conjClasses, rep, size, ratio, centralizer, centralizers, centralizer_and_rep;
    
    centralizers := [];
    
    conjClasses:= ConjugacyClasses( G );
    
    for conjClass in conjClasses do
        rep := Representative(conjClass);
        size := Size(conjClass);
        centralizer := Centralizer(G, rep);
        # Verificación de la fórmula |clase| = |G| / |centralizador|
        ratio := Size(G) / Size(centralizer);
        if ratio = size then
            centralizer_and_rep:=rec(centralizer := centralizer, g := rep);
            Add( centralizers, centralizer_and_rep );;
        else
            Error("¡Verification error!\n");
        fi;
    od;
    return centralizers;
end);

###############################################################
## Function to compute 
###############################################################

InstallGlobalFunction(GetCentralizerOfElement, function(G, g )
    local repElementsCC, centralizer, sizeG, sizeGg, ratio, conjClass, size;

    repElementsCC := List( ConjugacyClasses( G ), Representative );

    if not ( g in repElementsCC ) then
        Error("The element g is not a representative of the conjugation class of G.\n");
    fi;

    centralizer := Centralizer( G, g );
    sizeG := Order( G );
    sizeGg := Order( centralizer );
    ratio := sizeG / sizeGg;
    conjClass := Filtered( ConjugacyClasses( G ), x -> g in x )[1];
    size := Size( conjClass );

    if ratio = size then
        return rec(
            G := G,
            g := g,
            centralizer := centralizer,
        );
    else
        Error("¡Verification error!\n");
    fi;
end);

###############################################################
## Function to compute 
###############################################################

ComputeSimples@:=function(G, g, irrepsGamma_g )
    local chi, rho, weight, simples;
    simples := [];
    for chi in irrepsGamma_g do
        rho := IrreducibleAffordingRepresentation( chi );;
        weight := rec( g := g, rho := rho );
        Add( simples, SimplesModYD( G, weight ) );
    od;
    return simples;
end;

###############################################################
## Function to compute 
###############################################################

InstallGlobalFunction( SimplesModByCentralizer, function( G_g )
    local irrepsGamma_g, simples, G, g;
    if not IsRecord(G_g) then
        Error("Expected a record");
    fi;

    if not ( IsBound(G_g.G) and IsBound(G_g.g) and IsBound(G_g.centralizer) ) then
        Error("Record must have keys G, g, centralizer");
    fi;

    irrepsGamma_g := Irr( G_g.centralizer );
    G := G_g.G;
    g := G_g.g;
    simples := ComputeSimples@(G, g, irrepsGamma_g);
    
    return simples;
end );

###############################################################
## Function to compute 
###############################################################

InstallGlobalFunction(SimplesMod, function(G)
    local c, irrepsGamma_g, simples, centralizers;
    simples := [];
    centralizers := GetCentralizers(G);
    for c in centralizers do
        irrepsGamma_g := Irr(c.centralizer);
        Append(simples, ComputeSimples@(G, c.g, irrepsGamma_g));
    od;
    return simples;
end);

###############################################################
## Function to compute 
###############################################################

InstallGlobalFunction( SimplesModAttachedToElement, function(G, g )
    local irrepsGamma_g, simples, centralizer;
    centralizer:=Centralizer(G, g);
    irrepsGamma_g := Irr( centralizer );
    simples := ComputeSimples@(G, g, irrepsGamma_g);
    return simples;
end );
