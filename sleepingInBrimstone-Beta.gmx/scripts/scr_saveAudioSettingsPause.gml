if (file_exists("AudioSettings.sav")) file_delete("AudioSettings.sav");
ini_open("AudioSettings.sav");
ini_write_real("Save2","Music_Volume", global.musicVolumeSetting);
ini_write_real("Save2","SFX_Volume",global.SFXVolumeSetting);
ini_close();

with(obj_pause_audio_menu)
{
    instance_destroy();
}
instance_create(0,0,obj_pause_selection);


