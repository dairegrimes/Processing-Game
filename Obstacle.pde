class Obstacle extends GameObject
{
  
  int x;
  int[] levels1 = { 200 , 300 , 200, 300, 400};
  int[] levels2 = { 300, 300, 200, 400 , 300 };
  int[] levels3 = { 200, 220, 300 , 320, 300, 400, 420, 440, 500 };
  int[] levels4 = { 200, 220, 400 , 420 };
  int[] levels5 = { 200, 400 , 300 };
  int[] levels6 = { 200, 400 , 300 , 500};
  int[] levels7 = { 200, 400 , 300 , 500};
  int[] levels8 = { 200, 400 , 300 , 500};
  int[] levels9 = { 200, 400 , 300 , 500};
  int[] levels10 = { 200, 400 , 300 , 500};
  
  Obstacle()
  {
    x = 300;
  }
    void obstacles()
  {
    

    switch(level)
    {
      case 1:
      
        {
          for(int i = 0; i < levels1.length; i ++)
          {
             obstacles[i].x = levels1[i];
             obstacles[i].y = floor1;
             if(i > 1)
             {
               obstacles[i].y = floor2;
             }
             
             rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
         
          }
          
          
        }
        break;
      
      case 2:
      
        {

           obstacles[0].x = 300;
           obstacles[0].y = floor1;
             
           obstacles[1].x = 300;
           obstacles[1].y = floor1 - 60;
           
           rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
           rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
           
            for(int i = 2; i < levels2.length; i ++ )
             {
               
               obstacles[i].x = levels2[i];
               obstacles[i].y = floor2;
               rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
             }
           
          
          
        }

       break;
       
       case 3:
      
        {
             obstacles[5].x = 300;
             obstacles[5].y = floor2;
             
             obstacles[6].x = 400;
             obstacles[6].y = floor2 - 25;
             
             obstacles[7].x = 420;
             obstacles[7].y = floor2 - 25;
             
             obstacles[8].x = 440;
             obstacles[8].y = floor2 - 25;
             
             obstacles[8].x = 500;
             obstacles[8].y = floor2;
           
             for(int i = 5; i < 9; i ++)
             {
               rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
             }
             
             
             for(int i = 0; i  < 4; i ++)
             {
               obstacles[i].x = levels3[i];
               obstacles[i].y = floor1;
               if(i > 4)
               {
                 obstacles[i].y = floor2;
               }
               
               rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
             }
             
        }

       break;
       
       
       case 4:
      
        {
             obstacles[0].x = x;
             obstacles[0].y = floor1;
             rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
             x -= 3;

        }
        break;
      
    } //  end obstacles()
  
  
  }
  
  
  

  
}