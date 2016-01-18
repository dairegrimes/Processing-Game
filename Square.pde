class Square extends GameObject
{
  boolean flip = true;
  boolean jumping = true;

  Square()
  {
    super(0, height / 3);
    
  }
  
  void go()
  {
    line(0,height / 3 + 20,width,height / 3 + 20);
    line(0,((height / 3) * 2) + 20,width,((height / 3) * 2) + 20);

      // FIRST LEVEL
      if (flip)
    {
      rect(pos.x,pos.y,18,18);
      fill(0);
      pos.x += speed;
    
      if(pos.x >= width)
      {
        pos.y = 400;
        flip =! flip;
      }
    }
  
    // SECOND LEVEL
    else
    {
      rect(pos.x,pos.y,20,20);
      pos.x -= speed;
  
      if(pos.x <= 0)
      {
       pos.y = 200;
       flip =! flip;
      }
    }
  } // end go()
  
  
  
  void jump()
  {
      // FIRST LEVEL
    if(flip)
    {
        if(jumping)
      {
         if(pos.y <= 200)
         {
            pos.y += 2;
         }
      
        if (pos.y >= 200)
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
         if(pos.y <= 400)
         {
            pos.y += 3;
         }
      
        if (pos.y >= 400)
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