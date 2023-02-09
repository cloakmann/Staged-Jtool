///saveMapToStorage(currentMapKey)
var filename = argument0


if not global.BackupFailSafe{
    //echo(1)
    oEdit.undo_nochanges = true
}

//oEdit.undo_nochanges = true
global.BackupFailSafe = false



// header and info
var f = FS_file_text_open_write(filename)
var delim = '|'

var map = "";


map += 'jtool'
map += delim
map += global.version_string
map += delim
map += 'inf:'+string(global.infinitejump)
map += delim
map += 'dot:'+string(global.dotkid)
map += delim
map += 'sav:'+string(global.savetype)
map += delim
map += 'bor:'+string(global.bordertype)
map += delim
map += 'px:'+floatToBase32String(global.savePlayerX)
map += delim
map += 'py:'+floatToBase32String(global.savePlayerY)
map += delim
map += 'ps:'+string(global.savePlayerXScale)
map += delim
map += 'pg:'+string(global.saveGrav)
map += delim
map += 'objects:'

// objects
var objects_out_of_range = false
var objects_unrecognized = false
with all {
    if not objectInPalette(object_index) continue
    saved = false
}
with all {
    if not objectInPalette(object_index) continue
    if saved continue
    var maxpos = 896
    var minpos = -128
    if x >= maxpos or y >= maxpos or x < minpos or y < minpos {
        objects_out_of_range = true
        continue
    }
    
    var yy = y;
    map += '-' + padStringLeft(intToBase32String(y+128),2,'0')
    with all {
        if not objectInPalette(object_index) or y != yy or saved continue
        if x >= maxpos or y >= maxpos or x < minpos or y < minpos {
            objects_out_of_range = true
            continue
        }
        var saveid = objectToSaveID(object_index)
        if saveid != -1 {
            map += intToBase32String(saveid)
                +padStringLeft(intToBase32String(x+128),2,'0')
            saved = true
        }
        else {
            objects_unrecognized = true
        }
    }
}

map += chr(10)
map += chr(10)
// secondary data
//map += chr(10)
//map += chr(10)
map += 'data repeated below for easy parsing by other tools'
map += chr(10)
map += 'objects: (x, y, type'
map += chr(10)
with all {
    if not objectInPalette(object_index) continue
    var maxpos = 896
    var minpos = -128
    if x >= maxpos or y >= maxpos or x < minpos or y < minpos {
        objects_out_of_range = true
        continue
    }
    map += string(x)+' '+string(y)+' '+string(objectToSaveID(object_index))+' '
}
map += chr(10)
map +=  'version:'+global.version_string
map += chr(10)
map +=  'infinitejump:'+string(global.infinitejump)
map += chr(10)
map +=  'dotkid:'+string(global.dotkid)
map += chr(10)
map +=  'savetype:'+string(global.savetype)
map += chr(10)
map +=  'bordertype:'+string(global.bordertype)
map += chr(10)
map +=  'playersavex:'+string(global.savePlayerX)
map += chr(10)
map +=  'playersavey:'+string_format(global.savePlayerY,3,16)
map += chr(10)
map +=  'playersavexscale:'+string(global.savePlayerXScale)
map += chr(10)

//FS_file_text_close(f

// warning messages for oob or unrecognized objects
var warning_message = ''
if objects_unrecognized {
    warning_message += "Warning: Some objects were not official and weren't saved."
}
if objects_out_of_range {
    warning_message = "Warning: Some objects were out of range and weren't saved."
        +'#(x or y < '+string(minpos)+' or >= '+string(maxpos)+''
}
if warning_message != '' {
    inputOverlay(input_info,false,warning_message)
}

objStageStackMenu.mapStorage[?objStageStackMenu.currentMapKey] = map;

return true
