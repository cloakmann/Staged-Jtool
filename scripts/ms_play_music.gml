///ms_play_music(index,loop)
var ind = argument0;
var loop = argument1;

FMODInstanceStop(global.ms_cur_music)

if (!loop) global.ms_cur_music = FMODSoundPlay(ind,global.ms_pause)
else global.ms_cur_music = FMODSoundLoop(ind,global.ms_pause)
