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
        scr_noLoadFound();
        break;
        }
case 2:
        {
        room_goto(room_credits);
        break;
        }
case 3: game_end(); break;
        default: break;
}

