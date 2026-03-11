#! @Chapter Basis for Yetter-Drinfeld module
#!
#! @Section Finding a Simples Modules attached to Element
#!
#! This section illustrates the construction of 
#! Delta Function basis for an element
#! $h\in G = \mathbb{S}_{3}$
#!
#! @BeginChunk Example_TensorBasisForSimpleDGMod
#! @BeginExample DeltaFunctionForElementOfG
#! gap> LoadPackage("DGMod", "0", false);
#! true
#! gap> G:=SymmetricGroup(3);
#! Sym( [ 1 .. 3 ] )
#! gap> repsCC:=List(ConjugacyClasses(G), Representative);
#! [ (), (1,2), (1,2,3) ]
#! gap> g:= repsCC[2];
#! (1,2)
#! gap> centralizer := Centralizer(G, g);
#! Group([ (1,2) ])
#! gap> irrepsGamma_g  := Irr( centralizer );
#! [ Character( CharacterTable( Sym( [ 1 .. 2 ] ) ),
#!   [ 1, 1 ] ), Character( CharacterTable( Sym( [ 1 .. 2 ] ) ), [ 1, -1 ] ) ]
#! gap> chi := Irr( centralizer )[2];
#! Character( CharacterTable( Sym( [ 1 .. 2 ] ) ), [ 1, -1 ] )
#! gap> rho := IrreducibleAffordingRepresentation( chi );
#! [ (1,2) ] -> [ [ [ -1 ] ] ]
#! gap> TensorBasisForSimpleDGMod( G, g, rho );
#! [ ( () , [ 1 ] ), ( (1,3) , [ 1 ] ), ( (1,3,2) , [ 1 ] ) ]
#! @EndExample
#! @EndChunk