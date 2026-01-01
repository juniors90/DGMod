#! @Chapter G-mod Element
#!
#! @Section Definition of G-mod
#!
DeclareRepresentation("IsGModElementRep", IsAttributeStoringRep, []);
#!
DeclareCategory("IsGModElementObj", IsGModElementRep and IsAdditiveElement);
#!
GModElementType := NewType(NewFamily("GModElementFamily"), IsGModElementObj);

#!
#! @BeginGroup IsGModuleElementGroup
#! 
#! @Arguments IsGModuleElementObj
#!
DeclareAttribute("GrpElement", IsGModElementObj);
#!
#! @Arguments IsGModuleElementObj
#!
DeclareAttribute("VSpaceElement", IsGModElementObj);
#!
#! @EndGroup