///ms_initialize() 
//全局变量初始化
LoadFMOD();
global.ms_max_music = 100;
FMODinit(global.ms_max_music,0);
global.ms_system = true
global.ms_cur_music = -1
global.ms_cur_num = 0

global.ms_loop_music = false
global.ms_pause = true

global.ms_music_list = ds_list_create() //音乐用list
global.ms_name_list = ds_list_create() //储存音乐名称用list

if global.run_from_editor
    global.ms_music_directory = prefix_project_path_if_needed('music\');
else
    global.ms_music_directory = (working_directory+'music\');

ms_load_music()
ms_load_config()
