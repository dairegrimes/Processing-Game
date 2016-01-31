class Obstacle extends GameObject
{
  float x;
  int[] level1 = { 200, 300, 400 };
  
 Obstacle()
 {
   x = 300;
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
          x -= 5;
          if(square.pos.x == 3)
          {
            x = 700;
          }
       
    }
    break;
    
    
       case 3:
    {
          obstacles[0].x = x;
          obstacles[0].y = floor1;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          x -= 5;
          if(square.pos.x == 3)
          {
            x = 700;
          }
       
    }
    break;
    
    
    
       case 4:
    {
          obstacles[0].x = x;
          obstacles[0].y = floor1;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          x -= 5;
          if(square.pos.x == 3)
          {
            x = 700;
          }
       
    }
    break;
    
    
    
       case 5:
    {
          obstacles[0].x = x;
          obstacles[0].y = floor1;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          x -= 6;
          if(square.pos.x == 3)
          {
            x = 700;
          }
       
    }
    break;
  } // end switch
  
  
} // end levels


}