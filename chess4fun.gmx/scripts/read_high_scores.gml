ini_open("save.ini");

highscore_clear();
for(i=1;i<11;i+=1){

    value1 = ini_read_real("save","highscore_value"+string(i),0);
    name1 = ini_read_string("save","highscore_name"+string(i),"n/a");
    highscore_add(name1,value1);
}   


ini_close();
