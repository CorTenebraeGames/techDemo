 switch mpos
{
case 0: {if(global.pause == 0)
{
  //do nothing 
    
}
else
{
with (obj_pausemenu)
    {
     instance_destroy();
    }

    global.pause = 0
   
}
            break;

        }

case 1: 
        {
        with (obj_playerPlaceHolder)
    {
     instance_destroy();
     instance_create(view_xview[0]+325,view_yview[0]+340,obj_playerPlaceHolder)
     room_goto(global.checkpointR);
     
     with (obj_pausemenu)
    {
     instance_destroy();
    }
     
     global.pause = 0
    }
        break;
        }
       
case 2: game_end(); break;
        default: break;
}

