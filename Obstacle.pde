class Obstacle extends GameObject
{
  float x;
  float y;
  Obstacle()
  {
    x = 300;
    y = 0;
  }
  
  void stand()
  {
    rect(v2.x,v2.y,squareSize,squareSize);
  }
  
}