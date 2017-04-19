if (file_exists("SaveNew.sav"))
{
room_goto(room_checkSave)
}
else
{
scr_newgame();
}
