ini_open("save.ini")

for(i=1;i<11;i+=1){

  ini_write_string('save',"highscore_name"+string(i),string(highscore_name(i)));
  ini_write_string('save',"highscore_value"+string(i),string(highscore_value(i)));

}

ini_close();
