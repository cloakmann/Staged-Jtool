///ms_step()
if !global.ms_system
    exit

if !global.ms_loop_music {
    if FMODInstanceGetPosition(global.ms_cur_music) >= 1 {
        ms_next_music()
    }
}
