class Obstacle extends GameObject
{
  float x;
  float y;
  float z;
  float a;
  float b;
  float c;
  int[] level1 = { 200, 300, 400 };
  int[] level2 = { 200, 300, 450 };

 Obstacle()
 {
   x = 700;
   y = - 100;
   z = - 1000;
   a = 100;
   b = 100;
 }
 
  
  
void render()
{
  
  switch(square.level)
  {
    
       case 1:
    {
        for(int i = 0; i < level1.length; i ++ )
        {
          obstacles[i].x = level1[i];
          obstacles[i].y = floor1;
          
          rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
        }
        
        for(int i = 0; i < level1.length; i ++ )
        {
          obstacles[i + 3].x = level1[i];
          obstacles[i + 3].y = floor2;
          
          rect(obstacles[i + 3].x,obstacles[i + 3].y,squareSize,squareSize);
        }
 
    }
    break;
    
       case 2:
    {
          obstacles[0].x = x;
          obstacles[0].y = floor1;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          x -= 7;
          if(square.pos.x == 3)
          {
            x = 700;
          }
          
          obstacles[1].x = 400;
          obstacles[1].y = floor1;
          rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
          
          obstacles[2].x = 500;
          obstacles[2].y = floor1;
          rect(obstacles[2].x,obstacles[2].y,squareSize,squareSize);
          
          for(int i = 0; i < level2.length; i ++ )
        {
          obstacles[i + 3].x = level2[i];
          obstacles[i + 3].y = floor2;
          
          rect(obstacles[i + 3].x,obstacles[i + 3].y,squareSize,squareSize);
        }
    }
    break;
    
    
       case 3:
    {  
      
         obstacles[0].x = 400;
         obstacles[0].y = floor1;
         rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
         
         obstacles[1].x = 400;
         obstacles[1].y = floor1 - 60;
         rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
         
          obstacles[5].x = 300;
          obstacles[5].y = floor2;
          rect(obstacles[5].x,obstacles[5].y,squareSize,squareSize);
            
          obstacles[2].x = x;
          obstacles[2].y = floor1;
          rect(obstacles[2].x,obstacles[2].y,squareSize,squareSize);
          x -= 10;
          if(square.pos.x == 3)
          {
            x = 700;
          }
      
      
         if(!square.firstFloor)
         {
            obstacles[3].x = y;
            obstacles[3].y = floor2;
            rect(obstacles[3].x,obstacles[3].y,squareSize,squareSize);
            y += 7;
            
            if(square.pos.x == 597)
            {
              y =  - 100;
            }
            
            obstacles[4].x = z;
            obstacles[4].y = floor2;
            rect(obstacles[4].x,obstacles[4].y,squareSize,squareSize);
            z += 7;
            
            if(square.pos.x == 597)
            {
              z =  - 1000;
            }
            
            
         }
         
     }
    break;
    
    
    
       case 4:
    {     
          obstacles[0].x = 400;
          obstacles[0].y = a;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          a += 10;
          
          if(square.pos.x <= 300)
          {
            a = 100;
          }
          
          if(a >= floor1)
          {
            a = floor1;
          }
          
          obstacles[1].x = 200;
          obstacles[1].y = b;
          rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
          b += 10;
          
          if(square.pos.x <= 150)
          {
            b = 100;
          }
          
          if(b >= floor1)
          {
            b = floor1;
          }
          
    }
    break;
    
    
    
       case 5:
    {
          
       
    }
    break;
  } // end switch
  
  
} // end levels


}