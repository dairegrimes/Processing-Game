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
    line(0,height / 3 + 20,width,height / 3 + 20);
    line(0,((height / 3) * 2) + 20,width,((height / 3) * 2) + 20);
    
      if (flip)
    {
      rect(x,y,20,20);
      fill(0);
      x+=3;
    
      if(x >= width)
      {
        y += y;
        flip =! flip;
        line(0,(y*2) + 20,width,(y*2) + 20);
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