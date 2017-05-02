var musVolume;
switch(global.musicVolumeSetting)
{
    case 11:
    {
        musVolume = 1;
        break;
    }
    case 10:
    {
        musVolume = 1;
        break;
    }
    case 9:
    {
        musVolume = 0.9;
        break;
    }
    case 8:
    {
        musVolume = 0.8;
        break
    }
    case 7:
    {
        musVolume = 0.7;
        break;
    }
    case 6:
    {
        musVolume = 0.6;
        break;
    }
    case 5:
    {
        musVolume = 0.5;
        break;
    }
    case 4:
    {
        musVolume = 0.4;
        break;
    }
    case 3:
    {
        musVolume = 0.3;
        break;
    }
    case 2:
    {
        musVolume = 0.2;
        break;
    }
    case 1:
    {
        musVolume = 0.1;
        break;
    }
    case 0:
    {
        musVolume = 0;
        break;
    }
    default:
    {
        musVolume = 0;
        break;
    }
}

// DEFINING ALL MUSIC
        // Menu
        audio_sound_gain(menu_song, musVolume, 0);
        audio_sound_gain(dark_chill, musVolume, 0);
        audio_sound_gain(level_song, musVolume, 0);
        audio_sound_gain(level_xploration, musVolume, 0)
        //Save and Death
        audio_sound_gain(mus_sleeping, musVolume, 0)
        // Gluttony
        audio_sound_gain(wakeUpToybox, musVolume, 0);
        audio_sound_gain(wakeUp, musVolume, 0);
        audio_sound_gain(mus_Gluttony, musVolume, 0);
        // Sloth Music
        audio_sound_gain(mus_Sloth, musVolume, 0);
        audio_sound_gain(mus_SlothMain, musVolume, 0);
        // Greed Music
        audio_sound_gain(mus_greed, musVolume, 0);
        // Envy Music
        audio_sound_gain(mus_envyMain, musVolume, 0);
        audio_sound_gain(mus_envyBoss, musVolume, 0);
        // Pride Music
        // Wrath Music
        audio_sound_gain(wrath_level, musVolume, 0);
        audio_sound_gain(wrath_boss_fight, musVolume, 0);
        // Lust Music
        audio_sound_gain(mus_lustFight, musVolume, 0);
        // Misc.
        audio_sound_gain(Loading_music, musVolume, 0);
