#! @Chapter The Drinfeld double of a group algebra
#!
#! @Section Define a Delta Function for an element of G
#!
#! @BeginExample DeltaFunctionForElementOfG
LoadPackage("YDCatOverkG");
#! true
G:=SymmetricGroup(3);;
elmsG := Elements(G);
#! [ (), (2,3), (1,2), (1,2,3), (1,3,2), (1,3) ]
D_G2G2 := DeltaFunctionForElementOfG( G.2^2 , Rationals );;  # ()
D_G1G2 := DeltaFunctionForElementOfG( G.1*G.2, Rationals );; # (2,3)
D_G2   := DeltaFunctionForElementOfG( G.2, Rationals );;     # (1,2)
D_G1   := DeltaFunctionForElementOfG( G.1, Rationals );;     # (1,2,3)
D_G1G1 := DeltaFunctionForElementOfG( G.1^2, Rationals );;   # (1,3,2)
D_G2G1 := DeltaFunctionForElementOfG( G.2*G.1, Rationals );; # (1,3)
D_G1(G.1);
#! 1
D_G1(G.2);
#! 0
D_G2((1,3,2));
#! 0
D_G1G2((1,2));
#! 0
D_G1G1((1,2,3));
#! 0
D_G1G2((2,3));
#! 1
G.1;
#! (1,2,3)
simple1:=SimplesModAttachedToElement( G, G.1 )[1];
#! 
Print(simple1);
#! 
Print(simple1!.Base);
#! 
Print(simple1!.Base[1]);
#! 
ActionkGdualOnYDModule(D_G1, simple1, simple1!.Base[1] );
#! 
Print(simple1!.Base[2]);
#! 
ActionkGdualOnYDModule( D_G1, simple1, simple1!.Base[2] );
#! 
matrix_DG1 := StructureMatrixSimpleModule( D_G1, simple1 );
#! 
Display( matrix_DG1 );
#! 
Print(simple1);
for elmsG in Elements(G) do
    delta := DeltaFunctionForElementOfG( elmsG , Rationals );
    M := StructureMatrixSimpleModule( delta, simple1);
    Print("Matrix of Delta_", elmsG, ": ", M, " \n");
od;
#! 
#! @EndExample

