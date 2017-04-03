if (file_exists("SaveNew.sav"))
{
    ini_open("SaveNew.sav");
    var global.LoadedRoom = ini_read_real("Save1","room",room_Tutorial);
    
    global.points -= 50;
    
    global.wallJumpAvailable = ini_read_real("Save1","wallJumpEnabled",0);
    
    global.holyWater = ini_read_real("Save1","holyWater",0);
    global.holyWaterMax = ini_read_real("Save1","holyWaterMax",0); 
    
    var global.saveYLocation = ini_read_real("Save1","xLocation",96);
    var global.saveXLocation = ini_read_real("Save1","yLocation",640);
    
    room_goto(global.LoadedRoom);
    
    global.persistentHolyWater01 = ini_read_real("Save1","holyWaterPersistent01",1);
    global.persistentHolyWater02 = ini_read_real("Save1","holyWaterPersistent02",1);
    global.persistentHolyWater03 = ini_read_real("Save1","holyWaterPersistent03",1);
    global.persistentHolyWater04 = ini_read_real("Save1","holyWaterPersistent04",1);
    global.persistentHolyWater05 = ini_read_real("Save1","holyWaterPersistent05",1);
    global.persistentHolyWater06 = ini_read_real("Save1","holyWaterPersistent06",1);
    global.persistentHolyWater07 = ini_read_real("Save1","holyWaterPersistent07",1);
    global.persistentHolyWater08 = ini_read_real("Save1","holyWaterPersistent08",1);
    ini_close();
    instance_create(global.saveXLocation, global.saveYLocation, obj_playerPlaceHolder);
}
else
{
    //NOTHING HAPPENS WEEE
}
