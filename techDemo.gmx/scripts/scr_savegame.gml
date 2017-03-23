if (file_exists("SaveNew.sav")) file_delete("SaveNew.sav");
ini_open("SaveNew.sav");
var SavedRoom = room;
ini_write_real("Save1","room",SavedRoom);
ini_write_real("Save1","xLocation",obj_playerPlaceHolder.x);
ini_write_real("Save1","yLocation",obj_playerPlaceHolder.y);
ini_write_real("Save1","points",global.points);
ini_write_real("Save1","holyWater",global.holyWater);
ini_write_real("Save1","holyWaterMax",global.holyWaterMax);
ini_write_real("Save1","holyWaterPersistent01",global.persistentHolyWater01);
ini_write_real("Save1","holyWaterPersistent02",global.persistentHolyWater02);
ini_write_real("Save1","holyWaterPersistent03",global.persistentHolyWater03);
ini_write_real("Save1","holyWaterPersistent04",global.persistentHolyWater04);
ini_write_real("Save1","holyWaterPersistent05",global.persistentHolyWater05);
ini_write_real("Save1","holyWaterPersistent06",global.persistentHolyWater06);
ini_write_real("Save1","holyWaterPersistent07",global.persistentHolyWater07);
ini_write_real("Save1","holyWaterPersistent08",global.persistentHolyWater08);
ini_close();

