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
        scr_noLoadFound();
        break;
        }
case 2:
        {
        audio_stop_all();
        break;
        }
case 3: game_end(); break;
        default: break;
}

