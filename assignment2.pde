void setup()
{
  size(500,500);
  y = height / 3;
  flip = true;
}
float x;
float y;
boolean flip;
void draw()
{
  background(177);
  fill(0);
  
  if (flip)
  {
    rect(x,y,20,20);
    x+=6;
    
    if(x >= width)
    {
      y = height / 3;
      flip =! flip;
    }
  }
  
  else
  {
    rect(x,y,20,20);
    x-=6;
    
    if(x <= 0)
    {
      y = height / 1;
      flip =! flip;
    }
  }
  
  

}