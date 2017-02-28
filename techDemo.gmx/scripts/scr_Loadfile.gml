//loadgame script

if file_exists("Save.sav")
{

    var Loadfile = file_text_open_read("Save.sav");
    var Loadedroom = file_text_read_real(Loadfile);
    file_text_close(Loadfile);
    room_goto(Loadedroom);
}
else
{
//do nothing
}
