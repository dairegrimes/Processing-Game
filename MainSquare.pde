
class MainSquare extends GameObject
{
  
  boolean jumping = true;
  int lives = 0;
  int level = 3;

  MainSquare()
  {
    super(0, height / 3);
  }
  
  

  
  void go()
  {
    line(0,floor1 + squareSize,width,floor1 + squareSize);
    line(0,floor2 + squareSize,width,floor2 + squareSize);
    
     rect(pos.x,pos.y,squareSize,squareSize);
     fill(0);
     pos.x += speed;
    
      // FIRST FLOOR
      if(pos.x >= width)
      {
        pos.y = floor2;
        speed *= (-1);
        firstFloor =! firstFloor;
      }
      
      // SECOND FLOOR
      if(pos.x <= 0)
      {
        level ++;
        pos.y = floor1;
        speed *= (-1);
        firstFloor =! firstFloor;
      }    

           
  } // end go()
  
  
  
  void jump()
  {
    
      // FIRST LEVEL
    if(firstFloor)
    {
        if(jumping)
      {
         if(pos.y != floor1)
         {
            pos.y += jumpSpeed;
         }
      
        if (pos.y >= floor1)
        {
            if(keyPressed)
          {
 
            if(key == ' ')
            {
              jumping =! jumping;
            } 
          }
        }
      }
  
      else
      {
        pos.y -= jumpSpeed;
   
    
        if(pos.y <= 150)
        {
          pos.y = 150;
          jumping =! jumping;
        }
       }
      }
     
     
     // SECOND LEVEL
      else
    {
        if(jumping)
      {
         if(pos.y != floor2)
         {
            pos.y += jumpSpeed;
         }
      
        if (pos.y >= floor2)
        {
            if(keyPressed)
          {
 
            if(key == ' ')
            {
              jumping =! jumping;
            } 
          }
        }
      }
  
      else
      {
        pos.y -= jumpSpeed;
   
          if(pos.y <= 350)
        {
          pos.y = 350;
          jumping =! jumping;
        }
       }
      }
     
  }// end jump
  
  
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
  
  
  void lives()
  {
    text(lives,30,30);
  } // lives()
  
  
  void obstacles()
  {
    
      for (int i = 0; i < obstacles.length; i++) 
    {
      obstacles[i] = new PVector();
    }
    
    
    println(level);
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

           obstacles[0].x = levels2[0];
           obstacles[0].y = floor1;
           
           rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
           
          
          
        }

       break;
       
       case 3:
      
        {
          
             obstacles[0].x = 300;
             obstacles[0].y = floor1;
             
             obstacles[1].x = 300;
             obstacles[1].y = floor1 - 70;
             
             rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
             rect(obstacles[1].x,obstacles[1].y,squareSize,squareSize);
             
             for(int i = 0; i < levels3.length; i ++ )
             {
               rect(obstacles[i].x,obstacles[i].y,squareSize,squareSize);
             }
          
        }

       break;
      
    } //  end obstacles()
    
  }
  
  
  
}