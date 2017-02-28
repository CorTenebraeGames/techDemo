//script for the menu
switch mpos
{
case 0:
        {
        room_goto_next();
        break;
        }
case 1:
        {
        scr_Loadfile();
        break;
        }
case 2:
        {
        break;
        }
case 3: game_end(); break;
        default: break;
}

