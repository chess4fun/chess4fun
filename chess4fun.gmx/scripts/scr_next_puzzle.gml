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
              global.review = false;
 
              enter1 = false;
              room_to_go = "interim";
              //room_to_go = "next_level_2"
              room_goto(asset_get_index(room_to_go));
            }
            else
            {
              audio_play_sound(applause, 10, false);
              global.review = false;
              room_goto(asset_get_index('level1'));
              //room_goto(asset_get_index('level'+string(global.my_level)));
            }
        }




