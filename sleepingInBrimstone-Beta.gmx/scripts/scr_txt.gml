// showing txt on screen, good for tutorial level

txt = instance_create(argument2,argument3,object_txt);
 with(txt)
{
    padding = 16;
    maxlenght = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_txt;
    
    text_length = string_length(text);
    font_size = font_get_size(font)
    
    text_width = string_width_ext(text,font_size +(font_size/2),maxlength);
    text_height = string_height_ext(text,font_size +(font_size/2), maxlength)
    
    boxwidth = text_width + (pading*2);
    boxheight = text_height + (padding*2);
}
