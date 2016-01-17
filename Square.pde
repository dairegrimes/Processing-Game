class Square extends GameObject
{

  Square()
  {
    super(width * 0.5f, height  * 0.5f); 
  }
  
  void go()
  {
    line(0,height / 3 + 20,width,height / 3 + 20);
    line(0,((height / 3) * 2) + 20,width,((height / 3) * 2) + 20);
    
      if (flip)
    {
      rect(pos.x,pos.y,20,20);
      fill(0);
      pos.x+=3;
    
      if(pos.x >= width)
      {
        pos.y += height / 3;
        flip =! flip;
        
      }
    }
  
    else
    {
      rect(pos.x,pos.y,20,20);
      pos.x-=3;
  
      if(pos.x <= 0)
      {
       pos.y = height / 3;
        flip =! flip;
      }
   
    }
  } // end go()
  
  
  
  void jump()
  {
    
  } // end jump
  
  
}