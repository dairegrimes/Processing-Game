class MainSquare extends GameObject
{
  
  boolean jumping = true;

  MainSquare()
  {
    super(0, height / 3);
    
  }
  
  void go()
  {
    line(0,floor1 + squareSize,width,floor1 + squareSize);
    line(0,floor2 + squareSize,width,floor2 + squareSize);

      // FIRST LEVEL
      if (firstFloor)
    {
      rect(pos.x,pos.y,squareSize,squareSize);
      fill(0);
      pos.x += speed;
    
      if(pos.x >= width)
      {
        pos.y = floor2;
        firstFloor =! firstFloor;
      }
    }
  
    // SECOND LEVEL
    else
    {
      rect(pos.x,pos.y,squareSize,squareSize);
      pos.x -= speed;
  
      if(pos.x <= 0)
      {
       pos.y = floor1;
       firstFloor =! firstFloor;
      }
    }
    println(pos.y);
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
            pos.y += 2;
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
        pos.y -= 2;
   
    
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
            pos.y += 2;
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
        pos.y -= 3;
   
          if(pos.y <= 350)
        {
          pos.y = 350;
          jumping =! jumping;
        }
       }
      }
     
  }// end jump
}