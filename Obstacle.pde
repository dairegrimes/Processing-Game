class Obstacle extends GameObject
{

  
  
  Obstacle()
  {
     super(0, height / 3);
  }
  
  void stand()
  {
    
    
    rect(obstacles[0].x,obstacles[0].y,squareSize,squareSize);
     
  }
  
  
  

  
}