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
        with(obj_pause_selection)
        {
            instance_destroy();
        }
        instance_create(0,0,obj_pause_audio_menu);
        break;
        }
case 2:
        {
        game_restart();
        break;
        }
case 3: game_end(); break;
        default: break;
}

