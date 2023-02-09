///ms_load_config()

if !global.ms_system
    exit
    
var filename = prefix_project_path_if_needed('config.ini')
FS_ini_open(filename)

global.ms_loop_music = FS_ini_read_real('music','loopmusic',false)

var pos = FS_ini_read_real('music','musicpos',0);

var name = FS_ini_read_string('music','lastmusic','');

FS_ini_close()

var ind = ds_list_find_index(global.ms_name_list,name);

//global.ms_pause = FS_ini_read_real('music','pausemusic',0);

if (ind != -1) {
    global.ms_cur_num = ind
    ms_play_music(ms_get_index(),global.ms_loop_music)
    FMODInstanceSetPosition(global.ms_cur_music,pos)
}
else {
    ms_play_music(ms_get_index(),global.ms_loop_music)
}

FMODInstanceSetPaused(global.ms_cur_music,global.ms_pause)
