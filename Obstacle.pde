class Obstacle extends GameObject
{

  
  
  Obstacle()
  {
     super(0, height / 3);
  }
  
  void render()
  {
    
    for(index = 0; index < obstacles.length; index ++)
    {
      rect(obstacles[index].x,obstacles[index].y,squareSize,squareSize);
    }
    
  } // end render()
  
}