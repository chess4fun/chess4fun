draw_set_font(font0);
draw_set_color(c_red);
if draw=true
{
    if selection=global.correct_answer

    {
        global.score +=10;
        //draw_text(550,160,'You have selected correct option'); 
        if global.max_puzzles=global.my_puzzle
        {
            draw_text(550,180,'Congratulations you have solved all puzzles');
            sprite_index = asset_get_index("spr_congrats");
            draw_sprite(sprite_index, 0, 150, 600); 
            sprite_index = asset_get_index("spr_completed");
            draw_sprite(sprite_index, 0, 150, 800); 
            room_goto(asset_get_index('final'));
        } 
        else
        {
            global.my_puzzle +=1;
            global.puzzles_solved_in_level +=1;
            if global.puzzles_solved_in_level = global.puzzles_per_level
            {
            global.my_level +=1;
            set_piece(global.my_level);
            global.puzzles_solved_in_level =0;
 
            enter1 = false;
            room_to_go = "next_level_"+string(global.my_level);
            //room_to_go = "next_level_2"
            room_goto(asset_get_index(room_to_go));
            }
            else
            {
            
            if global.puzzles_solved_in_level = 1
            {

                obj_index = asset_get_index("obj_pawn");
                with(obj_index){
                    if point_distance(x, y, 804, 470) > 5
                    {
                    move_towards_point(804, 470, 5);
                    }
                    else speed = 0;
                    //x = 804;
                    //y = 470;
                }
            }
            
                 room_goto(asset_get_index('level'+string(global.my_level)));
            }
            //room_goto(asset_get_index('level'+string(global.my_level)));
            //room_goto('level'+string(global.my_level));
        }
        draw = false;
        global.answer = true
    }
    else
    {
        global.score = global.score - 10;
        global.answer = false
        draw = false;
    }
}



