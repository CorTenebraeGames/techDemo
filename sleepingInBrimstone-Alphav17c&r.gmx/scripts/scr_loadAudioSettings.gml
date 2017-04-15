if (file_exists("AudioSettings.sav"))
{
    ini_open("AudioSettings.sav");
    global.musicVolumeSetting = ini_read_real("Save2","Music_Volume",10); // Loading Music Volume
    global.SFXVolumeSetting = ini_read_real("Save2","SFX_Volume",10); // Loading SFX Volume
    ini_close();
}
else
{
    global.musicVolumeSetting = 10;
    global.SFXVolumeSetting = 10;
}

scr_musicVolumeConfig();
scr_SFXVolumeConfig();
