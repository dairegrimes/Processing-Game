class GameObject
{
   PVector pos;
   boolean flip;
   
   
   GameObject()
  {
    this(0, height / 3);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    pos.y = height / 3;
    
    flip = true;
  }
}