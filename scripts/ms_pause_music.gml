///ms_pause_music()

global.ms_pause = !global.ms_pause
FMODInstanceSetPaused(global.ms_cur_music,global.ms_pause)
