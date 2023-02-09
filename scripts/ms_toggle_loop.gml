///ms_toggle_loop

global.ms_loop_music = not global.ms_loop_music

var pos = FMODInstanceGetPosition(global.ms_cur_music);

ms_play_music(ms_get_index(),global.ms_loop_music)

FMODInstanceSetPosition(global.ms_cur_music,pos)


