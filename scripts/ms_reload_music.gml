///ms_reload_music()

var name = global.ms_name_list[| global.ms_cur_num];
var pos = FMODInstanceGetPosition(global.ms_cur_music);

UnloadFMOD()
FMODfree()

LoadFMOD()
FMODinit(global.ms_max_music,0)

ms_load_music()

if !global.ms_system
    exit

var ind = ds_list_find_index(global.ms_name_list,name);
if (ind != -1) {
    global.ms_cur_num = ind
    ms_play_music(ms_get_index(),global.ms_loop_music)
    FMODInstanceSetPosition(global.ms_cur_music,pos)
}
else
    ms_play_music(ms_get_index(),global.ms_loop_music)


