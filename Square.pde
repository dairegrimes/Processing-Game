class Square
{
  float x;
  float y;
  boolean flip;
  
  Square()
  {
    y = height / 3;
    flip = true;
  }
  
  
  void go()
  {
       if (flip)
    {
      rect(x,y,20,20);
      fill(0);
      x+=3;
    
      if(x >= width)
      {
        y += y;
        flip =! flip;
      }
    }
  
    else
    {
      rect(x,y,20,20);
      x-=3;
    
      if(x <= 0)
      {
       y = height / 3;
        flip =! flip;
      }
    }
  } // end go()
  
  
}