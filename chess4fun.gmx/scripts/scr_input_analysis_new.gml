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

        global.review = true
        //audio_play_sound(applause, 10, false);
        audio_play_sound(asset_get_index('sound_right'+string(global.puzzles_solved_in_level+1)), 10, false);
        draw = false;
        global.answer = true;
        global.attempt = 0;
        global.message_text = "Excellent, You can review the answer using arrow keys #(<- : back) and (-> : forward). #Or move to the next puzzle by pressing spacebar"
    }
    else
    {
        //global.score = global.score - 10;
        global.review = false;
        global.attempt = global.attempt+1
        audio_play_sound(snd_wrong, 10, false);
        global.answer = false
        draw = false;
        global.message_text = "That is not correct, please try again";
    }
}



