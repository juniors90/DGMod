#! @Chapter Object of Yetter-Drinfeld categories over group algebras.
#! 
#! @Section Simple modules attached to an element 
#!
#! @BeginChunk Example_SimplesDGMod
#! @BeginExampleSession
#! gap> LoadPackage("DGMod", "0", false);
#! true
#! gap> simples:= [];;
#! gap> S3 := SymmetricGroup(3);
#! Sym( [ 1 .. 3 ] )
#! gap> repsCC:=List(ConjugacyClasses(S3), Representative);
#! [ (), (1,2), (1,2,3) ]
#! gap> g := repsCC[3];
#! (1,2,3)
#! gap> S3_g := Centralizer( S3, g );
#! Group([ (1,2,3) ])
#! gap> irrepsS3_g := Irr( S3_g  );;
#! gap> for chi in irrepsS3_g do
#! > rho := IrreducibleAffordingRepresentation( chi );
#! > weight := rec( g := g, rho := rho );
#! > Add( simples, SimplesDGMod( S3, weight) );
#! > od;
#! gap> simples;
#! [ <Simple D(G)-Module with Weight ( (1,2,3) , rho )>, 
#!   <Simple D(G)-Module with Weight ( (1,2,3) , rho )>, 
#!   <Simple D(G)-Module with Weight ( (1,2,3) , rho )> ]
#! gap> simples[1];
#! <Simple D(G)-Module with Weight ( (1,2,3) , rho )>
#! @EndExampleSession
#! @EndChunk