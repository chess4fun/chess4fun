//draw_sprite(spr_pawn, 0, 500, 300);


//var newX = obj_index.x + 96;
//var newY = obj_index.y - 65;

if global.puzzles_solved_in_level = 1
{

obj_index = asset_get_index(global.spr_animation);
with(obj_index){
/*if point_distance(x, y, 804, 470) > 5
    {
    move_towards_point(804, 470, 5);
    }
 else speed = 0;*/
 x = 804;
 y = 470;
}
}
if global.puzzles_solved_in_level = 2
{

obj_index = asset_get_index("obj_pawn");
with(obj_index){
/*if point_distance(x, y, 804, 470) > 5
    {
    move_towards_point(804, 470, 5);
    }
 else speed = 0;*/
 x = 903;
 y = 406;
}

}
