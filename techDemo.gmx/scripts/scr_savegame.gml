if (file_exists("SaveNew.sav")) file_delete("SaveNew.sav");
ini_open("SaveNew.sav");
var SavedRoom = room;
ini_write_real("Save1","room",SavedRoom);
ini_write_real("Save1","xLocation",obj_playerPlaceHolder.x);
ini_write_real("Save1","yLocation",obj_playerPlaceHolder.y);
ini_write_real("Save1","points",global.points);
ini_close();

