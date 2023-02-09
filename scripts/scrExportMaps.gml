///scrExportMaps(outputMainDir)

with objStageStackMenu {
    var outputMainDir = argument0;
    //echo("start export maps",ds_map_size(mapStorage))
    var mapDir = outputMainDir + "\maps";

    var curKey,f;
    for (
        curKey = ds_map_find_first(mapStorage);
        ds_map_exists(mapStorage,curKey);
        curKey = ds_map_find_next(mapStorage,curKey)
    ){
        //save all maps to files
        if !string_pos(".jmap",curKey) curKey += ".jmap";
        f = file_text_open_write_ns(mapDir + "\" + curKey,-1);
        
        //echo(mapDir + "\" + curKey)
        file_text_write_line_ns(f,mapStorage[?curKey]);
        
        file_text_close_ns(f)
        
        if curKey == ds_map_find_last(mapStorage) break;
    }
}


