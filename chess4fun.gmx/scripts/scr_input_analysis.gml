draw_set_font(font0);
draw_set_color(c_red);
if draw=true
{
    if selection=global.correct_answer
    {
        draw_text(550,160,'You have selected correct option'); 
        if global.max_puzzles=global.my_puzzle
        {
            draw_text(550,180,'Congratulations you have solved all puzzles');
        } 
        else
        {
            global.my_puzzle +=1;
            global.puzzles_solved_in_level +=1;
            if global.puzzles_solved_in_level = global.puzzles_per_level
            {
               global.puzzles_solved_in_level = 0;
               global.my_level +=1; 
               //room_goto(level2);
            }
            else
            {
                //room_goto(level1);
            }
            room_goto(asset_get_index('level'+string(global.my_level)));
            //room_goto('level'+string(global.my_level));
        }
    }
    else
    {
        draw_text(550,160,'That is not correct, please tryagain'); 
    }
}



