if (file_exists("save.sav")) file_delete("save.sav");
ini_open("save.sav");
var Savedroom = obj_shrinePlaceholder;
ini_write_real("save1","obj_shrineplaceholder",Savedroom);
ini_write_real("save1","points",global.points);
ini_close();
