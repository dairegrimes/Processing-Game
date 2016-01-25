class Obstacle extends GameObject
{
  

  
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
          
             obstacles[0].x = 300;
             obstacles[0].y = floor1;
             
             
             rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
             
          
          
          
        }
        break;
      
    } //  end obstacles()
  
  
  }
  
  
  
   void collide()
  {

    for(index = 0; index < obstacles.length; index ++)
       {
         distance = PVector.dist(pos, obstacles[index]);
         
            if(distance <= squareSize)
             {
              if(firstFloor)
              {
                pos.x = 0;
                lives ++;
              }
              
              else
              {
                pos.x = width;
                lives ++;
              }
             }
        }
        
      
} // end collide
  
}