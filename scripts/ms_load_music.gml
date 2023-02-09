///ms_load_music()

var dir = global.ms_music_directory;

ds_list_clear(global.ms_music_list)
ds_list_clear(global.ms_name_list)

var f = FS_file_find_first(dir+'*',0);

if f != '' {
    global.ms_system = true
    
    var i = 0;
    
    while(true) {
        global.ms_music_list[| i] = FMODSoundAdd(dir+f,0,1)
        global.ms_name_list[| i] = f
        i ++    
        
        var f = FS_file_find_next();  
              
        if (f == '') break
    }
}
else {
    global.ms_system = false
}
FS_file_find_close()
