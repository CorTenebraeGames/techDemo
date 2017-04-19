if (file_exists("AudioSettings.sav")) file_delete("AudioSettings.sav");
ini_open("AudioSettings.sav");
ini_write_real("Save2","Music_Volume", global.musicVolumeSetting);
ini_write_real("Save2","SFX_Volume",global.SFXVolumeSetting);
ini_close();

room_goto(start_menu_room);
