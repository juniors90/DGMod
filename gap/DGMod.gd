#!
#! DGMod: Compute simples object for the Yetter-Drinfeld Categories over Group Algebras.
#!
#! @Chapter Introduction
#!
#! DGMod is a package which does some
#! interesting and cool things
#!
#! @Chapter Object of Yetter–Drinfeld categories over group algebras.
#!
#! @Section Definition of SimplesModYD Object
#!
#! @Arguments SimplesModYDObj
DeclareRepresentation("IsSimplesModYDRep", IsAttributeStoringRep, []);
#! @Arguments SimplesModYDObj
DeclareCategory("IsSimplesModYDObj", IsSimplesModYDRep and IsMultiplicativeElement);
SimplesModYDType := NewType(NewFamily("YDkGFamily"), IsSimplesModYDObj);
#!
#! @BeginGroup SimplesModYDGroup
#! @Arguments SimplesModYDObj
DeclareAttribute("Simple", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("Weight", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("Base", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("GeneratorsOfG", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("GeneratorsOfImages", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("GroupAttachedToMod", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("StructureDescriptionOfG", IsSimplesModYDObj);
#! @Arguments SimplesModYDObj
DeclareAttribute("G_g", IsSimplesModYDObj);
#! @EndGroup 