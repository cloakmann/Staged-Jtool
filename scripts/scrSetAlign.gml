///scrSetAlign(align)
/*
1   2   3
4   5   6
7   8   9
*/

//set halign
switch argument0 {
    case 1:
    case 4:
    case 7:
        draw_set_halign(fa_left);
        break;
    
    case 2:
    case 5:
    case 8:
        draw_set_halign(fa_center);
        break;
        
    case 3:
    case 6:
    case 9:
        draw_set_halign(fa_right);
        break;
        
    default:
        draw_set_halign(fa_left);
        break;
}

//set valign
switch argument0 {
    case 1:
    case 2:
    case 3:
        draw_set_valign(fa_top);
        break;
    
    case 4:
    case 5:
    case 6:
        draw_set_valign(fa_center);
        break;
        
    case 7:
    case 8:
    case 9:
        draw_set_valign(fa_bottom);
        break;
        
    default:
        draw_set_valign(fa_top);
        break;
}
