///ms_save_config()

if !global.ms_system
    exit
    
var filename = prefix_project_path_if_needed('config.ini');
FS_ini_open(filename)
FS_ini_write_string('music','lastmusic',ms_get_name())
FS_ini_write_real('music','musicpos',FMODInstanceGetPosition(global.ms_cur_music))
FS_ini_write_real('music','loopmusic',global.ms_loop_music)
//FS_ini_write_real('music','pausemusic',global.ms_pause)
FS_ini_close()
