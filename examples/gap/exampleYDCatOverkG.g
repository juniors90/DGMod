#! @Chapter Object of Yetter-Drinfeld categories over group algebras.
#!
#! @Section example for SimplesModYD object
#!
#! This section illustrates the construction of simple Yetter--Drinfeld
#! modules over the group algebra $kG$ for $G = S_4$
#!
#! @Example
LoadPackage("YDCatOverkG", "0", false);
#! true
simples:= [];;
S4 := SymmetricGroup(4);
#! Sym( [ 1 .. 4 ] )
repsCC:=List(ConjugacyClasses(S4), Representative);
#! [ (), (1,2), (1,2)(3,4), (1,2,3), (1,2,3,4) ]
g := repsCC[3];
#! (1,2)(3,4)
S4_g := Centralizer( S4, g );
#! Group([ (1,2), (1,3)(2,4), (3,4) ])
irrepsS4_g := Irr( S4_g  );;
for chi in irrepsS4_g do
     rho := IrreducibleAffordingRepresentation( chi );;
     weight := rec( g := g, rho := rho );
     Add( simples, SimplesModYD( S4, weight) );
od;
simples;
#! [ <Simple D(G)-Module with weight ( g := (1,2)
#!   (3,4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1 ] ], [ [ 1 ] ], [ [ 1 ] ] ] )>, 
#!   <Simple D(G)-Module with weight ( g := (1,2)
#!   (3,4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ -1 ] ], [ [ -1 ] ], [ [ -1 ] ] ] )>, 
#!   <Simple D(G)-Module with weight ( g := (1,2)
#!   (3,4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ -1 ] ], [ [ 1 ] ], [ [ -1 ] ] ] )>, 
#!   <Simple D(G)-Module with weight ( g := (1,2)
#!   (3,4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1 ] ], [ [ -1 ] ], [ [ 1 ] ] ] )>, 
#!   <Simple D(G)-Module with weight ( g := (1,2)
#!   (3,
#!    4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1, 0 ], [ 0, -1 ] ], [ [ 0, 1 ], [ 1, 0 ] ], [ [ -1, 0\
#!  ], [ 0, 1 ] ] ] )> ]
simples[1];
#! <Simple D(G)-Module with weight ( g := (1,2)
(3,4), rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1 ] ], [ [ 1 ] ], [ [ 1 ] ] ] )>
Print(simples[5]);
#! Weight := 
#!  g := (1,2)(3,4), 
#!  rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1, 0 ], [ 0, -1 ] ], [ [ 0, 1 ], [ 1, 0 ] ], [ [ -1, 0 ], [ \
#! 0, 1 ] ] ]
#! M(g, rho) := [ (1,2,3,4), (1,2) ] -> [ [ [ 0, 0, 0, 0, 0, -1 ], [ 0, 0, 0, 0, 1, 0 ], [ 0, 0, 0, -1, 0, 0 \
#! ], [ 0, 0, 1, 0, 0, 0 ], [ 1, 0, 0, 0, 0, 0 ], [ 0, -1, 0, 0, 0, 0 ] ], [ [ 1, 0, 0, 0, 0, 0 ], [ 0, -1, 0\
#! , 0, 0, 0 ], [ 0, 0, 0, 0, 0, 1 ], [ 0, 0, 0, 0, 1, 0 ], [ 0, 0, 0, 1, 0, 0 ], [ 0, 0, 1, 0, 0, 0 ] ] ]
#! Base := [ ( () , [ 1, 0 ] ), ( () , [ 0, 1 ] ), ( (2,3) , [ 1, 0 ] ), ( (2,3) , [ 0, 1 ] ), 
#!   ( (2,4,3) , [ 1, 0 ] ), ( (2,4,3) , [ 0, 1 ] ) ]
#! G := Sym( [ 1 .. 4 ] )
#! Structure Description of G := S4
#! G_g := Group([ (1,2), (1,3)(2,4), (3,4) ])
#! Structure Description of G_g := D8
Display(simples[1]);
#! Weight := 
#!  g := (1,2)(3,4), 
#!  rho := [ (1,2), (1,3)(2,4), (3,4) ] -> [ [ [ 1 ] ], [ [ 1 ] ], [ [ 1 ] ] ]
#! M(g, rho) := [ (1,2,3,4), (1,2) ] -> [ [ [ 0, 0, 1 ], [ 0, 1, 0 ], [ 1, 0, 0 ] ], [ [ 1, 0, 0 ], [ 0, 0, 1\
#!  ], [ 0, 1, 0 ] ] ]
#! Base := [ ( () , [ 1 ] ), ( (2,3) , [ 1 ] ), ( (2,4,3) , [ 1 ] ) ]
#! G := Sym( [ 1 .. 4 ] )
#! Structure Description of G := S4
#! G_g := Group([ (1,2), (1,3)(2,4), (3,4) ])
#! Structure Description of G_g := D8
#! @EndExample
