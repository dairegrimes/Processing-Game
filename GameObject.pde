class GameObject
{
   boolean firstFloor = true;
   int speed = 3;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   PVector pos;
   PVector forward;
   
   
   GameObject()
  {
    this(0, height / 3);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
  }
}