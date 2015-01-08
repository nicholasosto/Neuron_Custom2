class Data
{
  int[][] data_set;
  
  Data()
  {
    data_set = new int[3][3];
    random_pattern();
    
    for(int i=0;i<data_set.length;i++)
    {
      for(int j=0;j<data_set[0].length;j++)
      {
        //println("Data Set[",i,"][",j,"]",data_set[i][j]);
      }
    }
  }
  
  void random_pattern()
  {
    int rand = int(random(-0.1,8.1));
    
    switch(rand)
    {
      case 0:
        top_line();
        break;
      case 1:
        mid_line();
        break;
      case 2:
        bot_line();
        break;
      case 3:
        left_line();
        break;
      case 4:
        center_line();
        break;
      case 5:
        right_line();
        break;
      case 6:
        dl_line();
        break;
      case 7:
        dr_line();
        break;
      case 8:
        //top_line();
        break;
      default:
    }
    
  }
  
  void top_line()
  {
    data_set[0][0] = 1;
    data_set[0][1] = 1;
    data_set[0][2] = 1;
    
    data_set[1][0] = 0;
    data_set[1][1] = 0;
    data_set[1][2] = 0;
    
    data_set[2][0] = 0;
    data_set[2][1] = 0;
    data_set[2][2] = 0;
  }
  
  void mid_line()
  {
    data_set[0][0] = 0;
    data_set[0][1] = 0;
    data_set[0][2] = 0;
    
    data_set[1][0] = 1;
    data_set[1][1] = 1;
    data_set[1][2] = 1;
    
    data_set[2][0] = 0;
    data_set[2][1] = 0;
    data_set[2][2] = 0;
  }
  
  void bot_line()
  {
    data_set[0][0] = 0;
    data_set[0][1] = 0;
    data_set[0][2] = 0;
    
    data_set[1][0] = 0;
    data_set[1][1] = 0;
    data_set[1][2] = 0;
    
    data_set[2][0] = 1;
    data_set[2][1] = 1;
    data_set[2][2] = 1;
  }
  
  void left_line()
  {
    data_set[0][0] = 1;
    data_set[0][1] = 0;
    data_set[0][2] = 0;
    
    data_set[1][0] = 1;
    data_set[1][1] = 0;
    data_set[1][2] = 0;
    
    data_set[2][0] = 1;
    data_set[2][1] = 0;
    data_set[2][2] = 0;
  }
  
  void center_line()
  {
    data_set[0][0] = 0;
    data_set[0][1] = 1;
    data_set[0][2] = 0;
    
    data_set[1][0] = 0;
    data_set[1][1] = 1;
    data_set[1][2] = 0;
    
    data_set[2][0] = 0;
    data_set[2][1] = 1;
    data_set[2][2] = 0;
  }
  
  void right_line()
  {
    data_set[0][0] = 0;
    data_set[0][1] = 0;
    data_set[0][2] = 1;
    
    data_set[1][0] = 0;
    data_set[1][1] = 0;
    data_set[1][2] = 1;
    
    data_set[2][0] = 0;
    data_set[2][1] = 0;
    data_set[2][2] = 1;
  }
  
  void dl_line()
  {
    data_set[0][0] = 1;
    data_set[0][1] = 0;
    data_set[0][2] = 0;
    
    data_set[1][0] = 0;
    data_set[1][1] = 1;
    data_set[1][2] = 0;
    
    data_set[2][0] = 0;
    data_set[2][1] = 0;
    data_set[2][2] = 1;
  }
  
  void dr_line()
  {
    data_set[0][0] = 0;
    data_set[0][1] = 0;
    data_set[0][2] = 1;
    
    data_set[1][0] = 0;
    data_set[1][1] = 1;
    data_set[1][2] = 0;
    
    data_set[2][0] = 1;
    data_set[2][1] = 0;
    data_set[2][2] = 0;
  }
}
