#! @Chapter Utilities
#!
#! @Section Define a Delta Function for an element of G
#!
#! This section illustrates the construction of 
#! Delta Function $\delta_h$ for an element
#! $h\in G = \mathbb{S}_{3}$
#!
#! @BeginExample DeltaFunctionForElementOfG
LoadPackage("DGMod", "0", false);
#! true
G := SymmetricGroup(3);
#! Sym( [ 1 .. 3 ] )
delta_g1:=DeltaFunctionForElementOfG(G.1, Rationals);
#! function( elem2 ) ... end
delta_g1(G.1);
#! 1
delta_g1(G.2);
#! 0
delta_g1((1,3,2));
#! 0
delta_g1((1,2));
#! 0
delta_g1((1,2,3));
#! 1
delta_g1((2,3));
#! 0
G.1;
#! (1,2,3)
#! @EndExample