if global.input_cancel exit

var should_load = true
if global.input_bool {
    //should_load = saveMap()
    should_load = saveMapToStorage(objStageStackMenu.currentMapKey);
}

if should_load {
    //loadStartupMap()
    scrSetPrevStorageKey();
}

eraserRecord()
