if (file_exists("SaveNew.sav"))
{
    ini_open("SaveNew.sav");
    var global.LoadedRoom = ini_read_real("Save1","room",room_Tutorial); // Loading Room
    global.points = ini_read_real("Save1","points",0); // Loading Points
    global.holyWater = ini_read_real("Save1","holyWater",0); // Loading current Holy Water
    global.holyWaterMax = ini_read_real("Save1","holyWaterMax",0); // Loading Maximum Holy Water vessels
    var global.saveYLocation = ini_read_real("Save1","xLocation",96); // Loading Location (X)
    var global.saveXLocation = ini_read_real("Save1","yLocation",640); // Loading Location (Y)
    room_goto(global.LoadedRoom); // Applying location and bringing player to room.
    global.persistentHolyWater01 = ini_read_real("Save1","holyWaterPersistent01",1);
    global.persistentHolyWater02 = ini_read_real("Save1","holyWaterPersistent02",1);
    global.persistentHolyWater03 = ini_read_real("Save1","holyWaterPersistent03",1);
    global.persistentHolyWater04 = ini_read_real("Save1","holyWaterPersistent04",1);
    global.persistentHolyWater05 = ini_read_real("Save1","holyWaterPersistent05",1);
    global.persistentHolyWater06 = ini_read_real("Save1","holyWaterPersistent06",1);
    global.persistentHolyWater07 = ini_read_real("Save1","holyWaterPersistent07",1);
    global.persistentHolyWater08 = ini_read_real("Save1","holyWaterPersistent08",1);
    ini_close();
    instance_create(global.saveXLocation, global.saveYLocation, obj_playerPlaceHolder); // Creating player
}
else
{
    //NOTHING HAPPENS WEEE
}
