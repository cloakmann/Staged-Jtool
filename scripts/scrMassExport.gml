//var directory = get_save_filename("*.*",working_directory);
var directory = get_save_filename_ext('*.*','',game_save_id,'Mass Export')


var fileDir = filename_dir(parameter_string(0))

var skinDir = fileDir + "\skins\" + global.skinName;

//if there is only one startup map, do not mass export
with objStageStackMenu {
    if ds_map_size(mapStorage) == 1 
        and ds_map_exists(mapStorage,"startup.jmap") {
            inputOverlay(input_info,false,"There is no map to export.")
            exit;
        }
    else if !directory_exists_ns(fileDir + "\music\") {
        inputOverlay(input_info,false,"There is no music file to export.")
    }
    
}





var exportSrc = skinDir;
//var exportDest = directory + "\skins\";
var exportDest = directory;
//echo(exportSrc,exportDest)
//deep copy skin from folder to stage folder

//scrExportSound(exportDest)
//exit


scrInitFolders(exportDest);

scrExportSkins(skinDir,exportDest);
scrExportMaps(exportDest);
scrExportSound(exportDest);

