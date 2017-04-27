//script for the menu
switch mpos
{
case 0:
        {
        script_execute(scr_newgame);
        break;
        }
case 1:
        {
        room_goto(room_pressStart);
        break;
        }
        default: break;
}

