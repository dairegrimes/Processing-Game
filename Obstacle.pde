class Obstacle extends GameObject
{
  Obstacle()
  {
    
  }
  
  void stand()
  {
    rect(v2.x + 300,v2.y,squareSize,squareSize);
  }
  
}