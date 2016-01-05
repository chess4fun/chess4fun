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
draw_set_color(c_white);
for (var i = 0; i < 1; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    //draw_text(500,60,"You are at Level "+theEntry[? "LEVEL"]);
    //+" puzzle "+theEntry[? "PUZZLE"]);
    draw_text(12,500,"SCORE: "+string(global.score));
    
    draw_text(550,40,"You are on level "+string(global.my_level));
    draw_text(550,60,"You are on puzzle "+string(global.my_puzzle));
    draw_text(550,80,"1. "+theEntry[? "OPTION1"]);
    draw_text(550,100,"2. "+theEntry[? "OPTION2"]);
    draw_text(550,120,"3. "+theEntry[? "OPTION3"]);
    draw_text(550,140,"4. "+theEntry[? "OPTION4"]); 
    global.correct_answer = theEntry[? "ANSWER"];  
    if global.answer = false {draw_text(550,160,'That is not correct, please try again'); } 
}


