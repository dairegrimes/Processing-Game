class Obstacle extends GameObject
{
  Obstacle()
  {
    
  }
  
  void stand()
  {
    rect(pos.x + 300,pos.y,squareSize,squareSize);
  }
  
}