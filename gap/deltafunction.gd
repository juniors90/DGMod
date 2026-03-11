#! @Chapter Object of Yetter-Drinfeld categories over group algebras.
#!
#! @Section Define a Delta Function for an element of G
#!
#! @Arguments elem1, field
#!
#! @Returns A callable function <A>delta_elem1(elem2)</A> that
#! returns field one if <A>elem1 = elem2</A> and field zero otherwise.
#! 
#! @Description
DeclareGlobalFunction( "DeltaFunctionForElementOfG" );