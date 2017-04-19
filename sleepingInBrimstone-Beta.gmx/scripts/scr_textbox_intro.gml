//scr_text("Text Here",speed,x,y)

txt = instance_create(argument2,argument3,obj_textbox_intro);
with(txt)
{
    padding = 16;
    maxlength = 420;
    text = argument0;
    spd = argument1;
    font = fnt_codersCrux;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    
    
}
