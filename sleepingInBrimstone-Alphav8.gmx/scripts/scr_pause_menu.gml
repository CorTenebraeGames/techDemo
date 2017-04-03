//script for the pause menu
switch mpos
{
case 0:
        {
        audio_resume_all();
        global.pause = 0
        with(obj_pause_selection)
        {
            instance_destroy();
        }
        break;
        }
case 1:
        {
        game_restart();
        break;
        }
case 2: game_end(); break;
        default: break;
}

