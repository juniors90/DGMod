# %%
LoadPackage("DGMod", "0", false);

# %%
G:=SymmetricGroup(3);
repsCC:=List(ConjugacyClasses(G), Representative);
g:= repsCC[2];
centralizer := Centralizer(G, g);
irrepsGamma_g  := Irr( centralizer );
chi := Irr( centralizer )[1];
rho := IrreducibleAffordingRepresentation( chi );;

# %%
TensorBasisForSimpleMod( G, g, rho );


