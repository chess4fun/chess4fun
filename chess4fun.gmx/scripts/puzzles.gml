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
var left_x=520;
var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
draw_set_color(c_black);
for (var i = 0; i < 1; i++)
{
    var theEntry = ds_list_find_value(theList, i);

    draw_text(12,500,"SCORE: "+string(global.score));
    draw_text(350,500,theEntry[? "MOVE"]+" to move");
    //draw_text(300,530,"Checkmate in "+string(global.my_level)+"move(s)");
    draw_text(left_x,80,theEntry[? "MOVE"]+" to move and Checkmate in "+string(global.my_level)+" move(s)");

    
       
    draw_text_ext(left_x,40,"Level : "+string(global.my_level)+"                                      Puzzle : "+string(global.my_puzzle), 30, 400);
    draw_line(left_x, 70, 950, 70);
    //draw_text_ext(550,70,"You are on puzzle "+string(global.my_puzzle), 30, 320);
    //draw_text_ext(left_x+40,100,"1. "+theEntry[? "OPTION1"]+"#2. "+theEntry[? "OPTION2"]+"#3. "+theEntry[? "OPTION3"]+"#4. "+theEntry[? "OPTION4"]+"#", 30, 350);

    var opt1 = theEntry[? "OPTION1"];
    var opt2 = theEntry[? "OPTION2"];
    var opt3 = theEntry[? "OPTION3"];
    var opt4 = theEntry[? "OPTION4"];
    var ydiff = 0;
    if string_length(opt1) > 34 { ydiff = 15};
    draw_text_ext(left_x+40,160-ydiff," "+opt1, 30, 350);
    var ydiff = 0;
    if string_length(opt2) > 34 { ydiff = 15};
    draw_text_ext(left_x+40,235-ydiff," "+opt2, 30, 350);
    var ydiff = 0;
    if string_length(opt3) > 34 { ydiff = 15};
    draw_text_ext(left_x+40,310-ydiff," "+opt3, 30, 350);
    var ydiff = 0;
    if string_length(opt4) > 34 { ydiff = 15};
    draw_text_ext(left_x+40,380-ydiff," "+opt4, 30, 350);

        global.correct_answer = theEntry[? "ANSWER"];  
    if global.answer = false 
    {
        draw_set_color(c_red);
        draw_line(left_x, 440, 900, 440);
        //draw_text_ext(left_x,450,'That is not correct, please try again', 30, 350); 
    }
    else
    {
        if global.puzzles_solved_in_level > 0
        {
            draw_set_color(c_black);
            draw_line(left_x, 440, 900, 440);
            //draw_text_ext(left_x,450,'Excellent, Now try this Puzzle', 30, 350); 
         }
    } 
    draw_set_font(font4);
    draw_text_ext(160,570,"Instructions:", 30, 550); 
    draw_line(160, 605, 670, 605);
    draw_set_font(font0);
    draw_text_ext(160,620,global.message_text, 30, 550); 
}


