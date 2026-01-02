#
# YDCatOverkG: Compute simples object for the Yetter-Drinfeld Categories over Group Algebras.
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", "2018.02.14") then
    Error("AutoDoc version 2018.02.14 or newer is required.");
fi;

# AutoDoc( rec( scaffold := true, autodoc := true ) );
LoadPackage( "GAPDoc" );
SetGapDocLaTeXOptions( "utf8" );

bib := ParseBibFiles( "doc/YDCatOverkG.bib" );
WriteBibXMLextFile( "doc/YDCatOverkGBib.xml", bib );

AutoDoc( rec(
    autodoc := rec(
        files := [ "doc/Doc.autodoc" ],
        scan_dirs := [ "doc", "gap", "examples/gap", "examples/doc" ],
    ),
    extract_examples := rec(
        units := "Single",
    ),
    gapdoc := rec(
        LaTeXOptions := rec(
            LateExtraPreamble := """
                \usepackage{amsmath}
                \usepackage{amssymb}
                \usepackage[utf8]{inputenc}
                \DeclareUnicodeCharacter{2297}{otimes}
                \DeclareUnicodeCharacter{03C1}{rho}
            """,
        ),
    ),
    scaffold := rec(
        bib := "YDCatOverkGBib.xml",
    ),
) );

QUIT;