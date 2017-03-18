if (file_exists("SaveNew.sav"))
{
    ini_open("SaveNew.sav");
    var global.LoadedRoom = ini_read_real("Save1","room",room_Tutorial);
    global.points -= 50;
    var global.saveYLocation = ini_read_real("Save1","xLocation",96);
    var global.saveXLocation = ini_read_real("Save1","yLocation",640);
    room_goto(global.LoadedRoom);
    ini_close();
    instance_create(global.saveXLocation, global.saveYLocation, obj_playerPlaceHolder);
}
else
{
    //NOTHING HAPPENS WEEE
}
