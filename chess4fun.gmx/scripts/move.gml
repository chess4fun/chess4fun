var file_name = "answer"+string(global.my_puzzle)+".json";
//var file_name = 'position1.json';
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
global.totalMoves = ds_list_size(theList);
global.pieces = ds_grid_create(global.totalPieces,5);

    var theEntry = ds_list_find_value(theList, argument0);
    var x_from = theEntry[? "X_FROM"];
    var y_from = theEntry[? "Y_FROM"];
    var x_to = theEntry[? "X_TO"];
    var y_to = theEntry[? "Y_TO"];
    var from_obj = theEntry[? "MOVE_PIECE"];
    var to_obj = theEntry[? "CAPTURE_PIECE"];
    if (argument1 == "forward") {
      global.current_move +=1;
      /*
      if (to_obj != "") {      
        obj_remove = asset_get_index("obj_"+to_obj);
        inst_remove = instance_nearest(x_to*64, y_to*64, obj_remove);
        with(inst_remove) instance_destroy();
      }*/
      obj_move = asset_get_index("obj_"+from_obj);
      global.inst_move = instance_nearest(x_from*64, y_from*64, obj_move);
      global.obj_move = "obj_"+from_obj;
      global.x_to = x_to;
      global.y_to = y_to;
      global.x_from = x_from;
      global.y_from = y_from;
      global.piece_move = true;
      global.obj_remove = "obj_"+to_obj
      }


   else
   {
      global.current_move -=1;
      if (to_obj != "") {      
        obj_add = asset_get_index("obj_"+to_obj);
        instance_create(x_to*64, y_to*64,obj_add);
      }
/*
      global.obj_move = "obj_"+from_obj;
      global.x_to = x_from;
      global.y_to = y_from;
      global.x_from = x_to;
      global.y_from = y_to;
      global.piece_move = true; */
      obj_move = asset_get_index("obj_"+from_obj);
      inst_move = instance_nearest(x_to*64, y_to*64, obj_move);
      with(inst_move){
        x = x_from*64;
        y = y_from*64
      }
   }






