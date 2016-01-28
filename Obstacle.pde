class Obstacle extends GameObject
{
  // try putting the arrys into the constructor
  int x;
  boolean flip = true;
  int[] level1 = { 200 , 300 , 200, 300, 400};
  int[] level2 = { 300, 300, 200, 400 , 300 };
  int[] level3 = { 200, 220, 300 , 320, 300, 400, 420, 440, 500 };
  int[] level4 = { 200, 220, 400 , 420 };
  int[] level5 = { 200, 400 , 300 };
  int[] level6 = { 200, 400 , 300 , 500};
  int[] level7 = { 200, 400 , 300 , 500};
  int[] level8 = { 200, 400 , 300 , 500};
  int[] level9 = { 200, 400 , 300 , 500};
  int[] level10 = { 200, 400 , 300 , 500};
  
  Obstacle()
  {
    
  }
    void obstacles()
  {
    
    if(level != 3)
             {
               obstacles[5].x = 0;
               obstacles[5].y = 0;
             
               obstacles[6].x = 0;
               obstacles[6].y = 0;
             
               obstacles[7].x = 0;
               obstacles[7].y = 0;
             
               obstacles[8].x = 0;
               obstacles[8].y = 0;
             
               obstacles[8].x = 0;
               obstacles[8].y = 0;
           
                for(int i = 5; i < 9; i ++)
               {
                 rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
               }
             
             
               for(int i = 0; i  < 4; i ++)
               {
                 obstacles[i].x = 0;
                 obstacles[i].y = 0;
                 if(i > 4)
                 {
                   obstacles[i].y = 0;
                 }
               
                 rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
               }
             }
    

    switch(level)
    {
      case 1:
      
        {
          for(int i = 0; i < level1.length; i ++)
          {
             obstacles[i].x = level1[i];
             obstacles[i].y = floor1;
             if(i > 1)
             {
               obstacles[i].y = floor2;
             }
             
             rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
         
          }
          
          break;
        }
        
      
      case 2:
      
        {

           obstacles[0].x = 300;
           obstacles[0].y = floor1;
             
           obstacles[1].x = 300;
           obstacles[1].y = floor1 - 60;
           
           rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
           rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
           
            for(int i = 2; i < level1.length; i ++ )
             {
               
               obstacles[i].x = level1[i];
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
               obstacles[i].x = level1[i];
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
               x -= 7;
              
               if(square.pos.x == 3)
               {
                 x = 700;
               }
             
         }
        
      break;
    } 
  
  
  }//  end obstacles()

  
  

  
}