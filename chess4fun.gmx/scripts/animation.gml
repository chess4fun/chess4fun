
obj_index = asset_get_index("obj_piece_jump"+string(global.my_level));
if global.puzzles_solved_in_level = 0
{
    instance_create(690, 522,obj_index);
}

if global.puzzles_solved_in_level = 1
{
    instance_create(787, 458,obj_index);
}

if global.puzzles_solved_in_level = 2
{
    instance_create(892, 392,obj_index);
}
