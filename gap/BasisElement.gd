#! @Chapter G-mod Element
#!
#! @Section Definition of G-mod
#!
DeclareRepresentation("IsBasisElementRep", IsAttributeStoringRep, []);
#!
DeclareCategory("IsBasisElementObj", IsBasisElementRep and IsMultiplicativeElement);
#!
BasisElementType := NewType(NewFamily("BasisElementFamily"), IsBasisElementObj);

#!
#! @BeginGroup IsGModuleElementGroup
#! 
#! @Arguments IsGModuleElementObj
#!
DeclareAttribute("GrpElement", IsBasisElementObj);
#!
#! @Arguments IsGModuleElementObj
#!
DeclareAttribute("VSpaceElement", IsBasisElementObj);
#!
#! @EndGroup