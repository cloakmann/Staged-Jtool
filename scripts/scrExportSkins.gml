///scrExportSkins(skinDir,outputMainDir)

//directory_create_ns(argument0 + "\skins")

var skinDir = argument0;
var outputMainDir = argument1;

global.totalFolders = 0
global.totalFiles = 0
scrDeepCopy(skinDir,outputMainDir + "\skins");
global.totalFolders = 0
global.totalFiles = 0
