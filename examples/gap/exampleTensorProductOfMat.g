#! @Chapter Utilities
#!
#! @Section Kronecker Product
#! 
#! @BeginExampleSession
#! gap> LoadPackage("YDCatOverkG", "0", false);
#! true
#! gap> G := SymmetricGroup(3);
#! Sym( [ 1 .. 3 ] )
#! gap> irreps := IrreducibleRepresentations(G);
#! [ Pcgs([ (2,3), (1,2,3) ]) -> [ [ [ 1 ] ], [ [ 1 ] ] ], 
#!   Pcgs([ (2,3), (1,2,3) ]) -> [ [ [ -1 ] ], [ [ 1 ] ] ], 
#!   Pcgs([ (2,3), (1,2,3) ]) -> 
#!     [ [ [ 0, 1 ], [ 1, 0 ] ], [ [ E(3), 0 ], [ 0, E(3)^2 ] ] ] ]
#! gap> rho := irreps[3];
#! Pcgs([ (2,3), (1,2,3) ]) -> 
#! [ [ [ 0, 1 ], [ 1, 0 ] ], [ [ E(3), 0 ], [ 0, E(3)^2 ] ] ]
#! gap> A := rho(G.1);
#! [ [ E(3), 0 ], [ 0, E(3)^2 ] ]
#! gap> B := rho(G.2);
#! [ [ 0, E(3)^2 ], [ E(3), 0 ] ]
#! gap> AtensorB := TensorProductOfMat( A, B );
#! [ [ 0, 1, 0, 0 ], [ E(3)^2, 0, 0, 0 ], [ 0, 0, 0, E(3) ], [ 0, 0, 1, 0 ] ]
#! gap> AtensorB = KroneckerProduct(A, B);
#! true
#! @EndExampleSession
