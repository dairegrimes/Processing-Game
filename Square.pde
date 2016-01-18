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
        if(flip2)
      {
         if(pos.y <= 200)
         {
            pos.y += 3;
         }
      
        if(keyPressed)
        {
 
          if(key == ' ')
          {
            flip2 =! flip2;
          } 
        }
      }
  
      else
      {
        pos.y -= 3;
   
    
        if(pos.y <= 150)
        {
          pos.y = 150;
          flip2 =! flip2;
        }


      }
   
     }
     
     
      else
    {
        if(flip2)
      {
         if(pos.y <= 400)
         {
            pos.y += 3;
         }
      
        if(keyPressed)
        {
 
          if(key == ' ')
          {
            flip2 =! flip2;
          } 
        }
      }
  
      else
      {
        pos.y -= 3;
   
    
        if(pos.y <= 350)
        {
          pos.y = 350;
          flip2 =! flip2;
        }


      }
   
     }
      
      
     

  
  }// end jump
}