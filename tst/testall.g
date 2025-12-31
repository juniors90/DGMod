#
# YDCatOverkG: Compute simples object for the Yetter-Drinfeld Categories over Group Algebras.
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "YDCatOverkG" );

TestDirectory(DirectoriesPackageLibrary( "YDCatOverkG", "tst" ),
  rec(exitGAP := true));

FORCE_QUIT_GAP(1); # if we ever get here, there was an error
