///scrFindNextStorageKey()
with objStageStackMenu {
//if currently the first map, load last map in storage
    if currentMapKey == ds_map_find_last(mapStorage) {
        currentMapKey = ds_map_find_first(mapStorage);
        loadMapFromStorage(mapStorage[?currentMapKey],currentMapKey);
    }
    //otherwise load previous map
    else {
        currentMapKey = ds_map_find_next(mapStorage,currentMapKey);
        loadMapFromStorage(mapStorage[?currentMapKey],currentMapKey);
    }
}
