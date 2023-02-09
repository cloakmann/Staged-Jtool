///ms_prev_music()
global.ms_cur_num--
if global.ms_cur_num < 0 {
    global.ms_cur_num = ds_list_size(global.ms_music_list)-1
}
ms_play_music(ms_get_index(),global.ms_loop_music)
