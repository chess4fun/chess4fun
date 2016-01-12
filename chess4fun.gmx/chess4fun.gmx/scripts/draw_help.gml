var file_name = "help.json";

var theJsonFile = file_text_open_read(file_name);
var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
var n = ds_list_size(theList);
draw_set_color(c_white);
var x_pos = 100;
var y_pos = 40;
var cpunt_lines, text_length;
for (var i = 0; i < n; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    style = theEntry[? "style"];
    obj_index = asset_get_index(style);
    draw_set_font(obj_index); 
    //draw_set_font(font1); 
    //draw_text_ext(100,40+i*20,theEntry[? "text"], 20, 700);  
    text_to_write = theEntry[? "text"];
    draw_text_ext(x_pos,y_pos,text_to_write, 20, 800); 
    count_lines_added = string_count("#", text_to_write);
    text_length = string_length(text_to_write);
    count_lines = count_lines_added + floor(text_length/700);
    y_pos = y_pos + (count_lines+2)*20;
    if style == "font3" 
    {y_pos= y_pos +40;}
}

