class Obstacle extends GameObject
{
  // the variables for the moving obstacles
  float x;
  float y;
  float z;
  float a;
  float b;
  float c;
  float d;
  float e;
  float f;
  float g;
  float h;
  float espeed;
  float fspeed;
  int[] level1 = { 150, 300, 450, 150, 300, 450 };
  int[] level2 = { 150, 300, 450 };

 Obstacle()
 {
   x = 700;
   y = - 100;
   z = - 1000;
   b = 150;
   c = 500;
   h = 150;
   d = 500;
   e = 100;
   espeed = 4;
   fspeed = 4;
   f = 200;
   g = 700;
   a = -1000;
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
          if(i > 2)
          {
            obstacles[i].y = floor2;
          }
          
          rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
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
         
          obstacles[2].x = 300;
          obstacles[2].y = floor2;
          rect(obstacles[2].x,obstacles[2].y,squareSize,squareSize);
            
          obstacles[3].x = g;
          obstacles[3].y = floor1;
          rect(obstacles[3].x,obstacles[3].y,squareSize,squareSize);
          g -= 10;
          if(square.pos.x == 3)
          {
            g = 700;
          }
      
          obstacles[4].x = y;
          obstacles[4].y = floor2;
          rect(obstacles[4].x,obstacles[4].y,squareSize,squareSize);
          obstacles[5].x = z;
          obstacles[5].y = floor2;
          rect(obstacles[5].x,obstacles[5].y,squareSize,squareSize);
         
      
         if(!square.firstFloor)
         {
            
          
            y += 7;
            
            if(square.pos.x == 597)
            {
              y =  - 100;
            }
            
            
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
          obstacles[0].x = 450;
          obstacles[0].y = b;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          b += 10;
          
          if(square.firstFloor)
          {
            if(square.pos.x <= 400)
            {
              b = 100;
            }
          }
          
          if(b >= floor1)
          {
            b = floor1;
          }
          
          obstacles[1].x = 150;
          obstacles[1].y = h;
          rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
          h += 10;
          
          if(square.firstFloor)
          {
            if(square.pos.x <= 100)
            {
              h = 100;
            }
            
          }
          
          if(h >= floor1)
          {
            h = floor1;
          }
          
          obstacles[2].x = 400;
          obstacles[2].y = c;
          rect(obstacles[2].x,obstacles[2].y,squareSize,squareSize);
          
          obstacles[3].x = 150;
          obstacles[3].y = d;
          rect(obstacles[3].x,obstacles[3].y,squareSize,squareSize);
          
          obstacles[4].x = 300;
          obstacles[4].y = floor1;
          rect(obstacles[4].x,obstacles[4].y,squareSize,squareSize);
          
          obstacles[5].x = 300;
          obstacles[5].y = floor2;
          rect(obstacles[5].x,obstacles[5].y,squareSize,squareSize);
          if(!square.firstFloor)
         { 
          
          c -= 10;

          if(square.pos.x >= 500)
          {
            c = 500;
          }
          
          if(c <= floor2)
          {
            c = floor2;
          }

          
          
          
          d -= 10;
          
          if(square.pos.x >= 200)
          {
            d = 500;
          }
          
          if(d <= floor2)
          {
            d = floor2;
          }
          
         }
         
          
         
    }
    break;
    
    
    
       case 5:
    {
      
          obstacles[0].x = e;
          obstacles[0].y = floor1;
          rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
          e += espeed;
          if(e >= 200)
          {
            e = 200;
            espeed *= (-1);
          }
          if(e <= 100)
          {
            e = 100;
            espeed *= (-1);
          }
         
          
          obstacles[1].x = 300;
          obstacles[1].y = floor1;
          rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
          
          
          obstacles[2].x = 400;
          obstacles[2].y = f;
          rect(obstacles[2].x,obstacles[2].y,squareSize,squareSize);
          f -= fspeed;
          if(f <= 100)
          {
            f = 100;
            fspeed *= (-1);
          }
          if(f >= 200)
          {
            f = 200;
            fspeed *= (-1);
          }
          
         
          
          obstacles[3].x = 400;
          obstacles[3].y = floor2 - 60;
          rect(obstacles[3].x,obstacles[3].y,squareSize,squareSize);
         
          obstacles[4].x = 400;
          obstacles[4].y = floor2;
          rect(obstacles[4].x,obstacles[4].y,squareSize,squareSize);
          
         
        
        if(!square.firstFloor)
        {
          obstacles[5].x = a;
          obstacles[5].y = floor2;
          rect(obstacles[5].x,obstacles[5].y,squareSize,squareSize);
         
          a += 7;
            
            if(square.pos.x == 597)
            {
              a =  - 1000;
            }
        } 
          
    }
    break;
  } // end switch
  
  
} // end levels


}