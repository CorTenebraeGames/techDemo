if (file_exists("SaveNew.sav"))
{
    ini_open("SaveNew.sav");
    var global.LoadedRoom = ini_read_real("Save1","room",room_Tutorial); // Loading Room
    global.points = ini_read_real("Save1","points",0); // Loading Points
    global.holyWater = ini_read_real("Save1","holyWater",1); // Loading current Holy Water
    global.holyWaterMax = ini_read_real("Save1","holyWaterMax",1); // Loading Maximum Holy Water vessels
    var global.saveYLocation = ini_read_real("Save1","xLocation",96); // Loading Location (X)
    var global.saveXLocation = ini_read_real("Save1","yLocation",640); // Loading Location (Y)
    room_goto(global.LoadedRoom); // Applying location and bringing player to room.
    ini_close();
    instance_create(global.saveXLocation, global.saveYLocation, obj_playerPlaceHolder); // Creating player
}
else
{
    //NOTHING HAPPENS WEEE
}
