draw_set_font(font0);
draw_set_color(c_red);
if draw=true
{
    if selection=global.correct_answer

    {
        switch (global.attempt)
        {
            case 0:
               global.score +=10;
               break 
            case 1:
               global.score +=5;
               break 
            case 2:
               global.score +=2;
               break 
        }

        if global.max_puzzles=global.my_puzzle
        {
            draw_text(550,180,'Congratulations you have solved all puzzles');
            sprite_index = asset_get_index("spr_congrats");
            draw_sprite(sprite_index, 0, 150, 600); 
            sprite_index = asset_get_index("spr_completed");
            draw_sprite(sprite_index, 0, 150, 800); 
            highscore_add(date_datetime_string(date_current_datetime()), global.score);
            save_high_scores();
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
            room_to_go = "interim";
            //room_to_go = "next_level_2"
            room_goto(asset_get_index(room_to_go));
            }
            else
            {
            audio_play_sound(applause, 10, false);

            //if (show_move != 1) {
            //move(5,4,3,2,"obj_white_bishop","obj_black_pawn");
            //shove_move = 1
            //            }
                // room_goto(asset_get_index('level'+string(global.my_level)));
            }
            //room_goto(asset_get_index('level'+string(global.my_level)));
            //room_goto('level'+string(global.my_level));
        }
        draw = false;
        global.answer = true
        global.attempt = 0;
    }
    else
    {
        //global.score = global.score - 10;
        global.attempt = global.attempt+1
        audio_play_sound(snd_wrong, 10, false);
        global.answer = false
        draw = false;
    }
}



