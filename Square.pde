class Square extends GameObject
{
  boolean flip = true;
  boolean flip2 = true;

  Square()
  {
    super(0, height / 3);
    
  }
  
  void go()
  {
    
    
    line(0,height / 3 + 20,width,height / 3 + 20);
    line(0,((height / 3) * 2) + 20,width,((height / 3) * 2) + 20);


      if (flip)
    {
      rect(pos.x,pos.y,20,20);
      fill(0);
      pos.x += speed;
    
      if(pos.x >= width)
      {
        pos.y = 400;
        flip =! flip;
       }
    }
  
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
        if(flip)
    {
       if(pos.y != 450)
       {
          pos.y += 3;
       
       }
      
      if(keyPressed)
      {
 
        if(key == ' ')
        {
        
          flip =! flip;
        } 
      }
    }
  
    else
    {
      pos.y -= 3;
   
    
      if(pos.y <= 300)
      {
        pos.y = 300;
      
        flip =! flip;

      }

    }

  
    }// end jump
}