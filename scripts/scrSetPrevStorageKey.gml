///scrFindPrevStorageKey()
with objStageStackMenu {
//if currently the first map, load last map in storage
    if currentMapKey == ds_map_find_first(mapStorage) {
        currentMapKey = ds_map_find_last(mapStorage);
        loadMapFromStorage(mapStorage[?currentMapKey],currentMapKey);
    }
    //otherwise load previous map
    else {
        currentMapKey = ds_map_find_previous(mapStorage,currentMapKey);
        loadMapFromStorage(mapStorage[?currentMapKey],currentMapKey);
    }
}
