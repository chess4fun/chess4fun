var file_name = "puzzle-"+string(argument0)+".json";
//var file_name = 'puzzle-1.json';
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
draw_set_color(c_black);
for (var i = 0; i < 1; i++)
{
    var theEntry = ds_list_find_value(theList, i);

    draw_text(12,500,"SCORE: "+string(global.score));
    draw_text(330,500,theEntry[? "MOVE"]+" to move");

    
       
    draw_text_ext(550,40,"Level : "+string(global.my_level)+"                         Puzzle : "+string(global.my_puzzle), 30, 320);
    draw_line(550, 70, 900, 70);
    //draw_text_ext(550,70,"You are on puzzle "+string(global.my_puzzle), 30, 320);
    draw_text_ext(550,100,"1. "+theEntry[? "OPTION1"]+"#2. "+theEntry[? "OPTION2"]+"#3. "+theEntry[? "OPTION3"]+"#4. "+theEntry[? "OPTION4"]+"#", 30, 460);

        global.correct_answer = theEntry[? "ANSWER"];  
    if global.answer = false 
    {
        draw_set_color(c_red);
        draw_line(550, 420, 900, 420);
        draw_text_ext(550,430,'That is not correct, please try again', 30, 460); 
    } 
}


