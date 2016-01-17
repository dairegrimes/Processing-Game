class GameObject
{
   PVector pos;
   PVector forward;
   boolean flip = true;;
   float speed = 10.0f;
   
   
   GameObject()
  {
    this(0, height / 3);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, 0);
   
  }
}