LoadPackage("PackageManager");
InstallPackage("https://github.com/gap-packages/MathInTheMiddle.git");
LoadPackage("MathInTheMiddle");
MitM_TypesToJson("/data/types.json");;
json := JsonStreamToGap(InputTextFile("/data/types.json"));;

# Quit gap several times
QUIT_GAP(0);
QUIT_GAP(0);
