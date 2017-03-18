global.playerIsAlive=0;
if (file_exists("SaveNew.sav"))
{
scr_loadgame();
}

else
{
instance_create(x,y,obj_noLoad);
}
