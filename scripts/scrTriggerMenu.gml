//return keyboard_check(vk_control) and keyboard_check(vk_alt);
if global.state == globalstate_menu {
    global.showStorageMenu = false;
    return false;
}

if keyboard_check_pressed(vk_f3) 
    global.showStorageMenu = !global.showStorageMenu;
    
return global.showStorageMenu;
