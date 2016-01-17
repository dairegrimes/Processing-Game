class GameObject
{
   PVector pos;
   PVector forward;
   float speed = 5.0f;
   
   
   
   GameObject()
  {
    this(0, height / 3);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    
  }
}