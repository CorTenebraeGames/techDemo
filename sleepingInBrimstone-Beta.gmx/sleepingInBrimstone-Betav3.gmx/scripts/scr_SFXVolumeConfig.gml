var SFXVolume;
switch(global.SFXVolumeSetting)
{
    case 11:
    {
        SFXVolume = 1;
        break;
    }
    case 10:
    {
        SFXVolume = 1;
        break;
    }
    case 9:
    {
        SFXVolume = 0.9;
        break;
    }
    case 8:
    {
        SFXVolume = 0.8;
        break
    }
    case 7:
    {
        SFXVolume = 0.7;
        break;
    }
    case 6:
    {
        SFXVolume = 0.6;
        break;
    }
    case 5:
    {
        SFXVolume = 0.5;
        break;
    }
    case 4:
    {
        SFXVolume = 0.4;
        break;
    }
    case 3:
    {
        SFXVolume = 0.3;
        break;
    }
    case 2:
    {
        SFXVolume = 0.2;
        break;
    }
    case 1:
    {
        SFXVolume = 0.1;
        break;
    }
    case 0:
    {
        SFXVolume = 0;
        break;
    }
    default:
    {
        SFXVolume = 0;
        break;
    }
}

// DEFINING ALL SFX
        // Menu
        audio_sound_gain(selection_sound, SFXVolume, 0);
        audio_sound_gain(snd_darkLaugh, SFXVolume, 0);
        //---- Player ----
        // Footsteps
        audio_sound_gain(snd_footsteps1, SFXVolume, 0);
        audio_sound_gain(snd_footsteps2, SFXVolume, 0);
        // Block
        audio_sound_gain(snd_shieldBlock, SFXVolume, 0);
        // Jump
        audio_sound_gain(jump_sound, SFXVolume, 0);
        // Attack
        audio_sound_gain(snd_swordswing, SFXVolume, 0);
        audio_sound_gain(snd_swordswing2, SFXVolume, 0);
        audio_sound_gain(snd_swordswing3, SFXVolume, 0);
        audio_sound_gain(snd_swordswing4, SFXVolume, 0);
        // Damaged
        audio_sound_gain(snd_grunt_01, SFXVolume, 0);
        audio_sound_gain(snd_grunt_02, SFXVolume, 0);
        audio_sound_gain(snd_grunt_03, SFXVolume, 0);
        //---- ------ ----
        // Enemy Damage
        audio_sound_gain(snd_slothMinionDmg, SFXVolume, 0);
        audio_sound_gain(snd_gluttonyDmg, SFXVolume, 0);
        audio_sound_gain(snd_gluttonyGloop, SFXVolume, 0);
        // Misc. Events
        audio_sound_gain(snd_save, SFXVolume, 0);
        audio_sound_gain(snd_bossDefeated, SFXVolume, 0);
        audio_sound_gain(snd_keyJingle, SFXVolume, 0);
        audio_sound_gain(snd_pride_detected, SFXVolume, 0);
        
        
