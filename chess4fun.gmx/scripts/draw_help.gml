var Introduction = "Chess is a board game for two players. It is played on a square board, made of 64 smaller squares, with eight squares on each side. Each player starts with sixteen pieces: eight pawns, two knights, two bishops, two rooks, one queen and one king. The goal of the game is for each player to try and checkmate the king of the opponent. Checkmate is a threat ('check') to the opposing king which no move can stop. It ends the game.##During the game the two opponents take turns to move one of their pieces to a different square of the board. One player ('White') has pieces of a light color; the other player ('Black') has pieces of a dark color. There are rules about how pieces move, and about taking the opponent's pieces off the board. The player with white pieces always makes the first move. Because of this, White has a small advantage, and wins more often than Black in tournament games.##Skill and speed are key to winning a chess game. Young players improve their skills by analyzing puzzles. A puzzle normally provides a position in the middle or end game and requires learner to determine the next moves. There are positions from which you can checkmate in one move, two moves, three moves and so on. The success of a player depends on how many moves he/ she can think in their head.##Reference: https://simple.wikipedia.org/wiki/Chess"
var Chess4Fun = "The objective of this game is to help children improve their puzzle solving skills, while having fun at the same time.##While puzzles are a great way to improve Chess skills, many of the current software and tools make it very boring and monotonous. Some even stop you from proceeding if you fail to answer a puzzle. Chess4Fun is developed for kids, by kids.##It mixes puzzles with fun game to keep things fun. There is no time pressure while solving puzzles. Also the game does not halt if you fail to provide the correct answer.##Menu can be accessed by hovering on the triangle at the top right## There is an option for highest scores. This option lists top 10 highest scores.## There is an option to generate a certificate. It shows a certificate based on player’s highest score. ##Clicking the Help button takes the player to this Help page."
var puzzle_solve = "The puzzles are grouped into different levels based on the number of steps needed to complete a check mate. Level 1 will have puzzles that will require checkmate in one move,  Level  2 will have puzzles that will require checkmate in two moves, and so on. Player is asked three puzzles per level. ##You can click on the option or enter number 1, 2, 3, 4 to indicate correct option. If a correct answer is provided in the first attempt 10 points are added to the score. If correct answer is entered in second attempt 5 points are added to the score. If correct answer is pressed in the third attempt 2 points are added to the score.## Current score and the piece to move are shown below the chess board. ##A jumping piece shows which level player currently is. For example while player is on 2nd puzzle of  knight level  they will see a knight image jumping on the second step.## There are five levels after all levels are completed, final score is calculated and stored. Player can create a certificate based on the best score till date."
var fun_game_howto = "The game of Lost Rocket, aims to improve hand eye co-ordination of the player. A player needs to navigate the rocket across the electric fences in the space, within the allotted time. Player  will have to use the arrow keys to move the rocket. Rocket will continuously change directions, so player needs to quickly think and click the correction key.##If player successfully navigates the rocket to the space station before timer stops, he/she  receives a bonus of 10 points."
//draw_text_ext(500,450,'That is not correct, please try again', 30, 350); 
switch (global.menu_selected)
    {
    case "Introduction":
        text_to_write = Introduction;
        break
    case "Chess4Fun":
        text_to_write = Chess4Fun;
        break   
    case "puzzle_solve":
        text_to_write = puzzle_solve;
        break
    case "fun_game_howto":
        text_to_write = fun_game_howto;
        break    
    }
//text_to_write= "Hello"    
draw_set_color(c_black);
draw_set_font(font0);
draw_text_ext(224,50,text_to_write, 25, 700); 





