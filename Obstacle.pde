class Obstacle extends GameObject
{
  int size;

  
  Obstacle(float x, float y)
  {
    super(x,y); 
    size = 20;
  }
 
  void render()
  {
    rect(obstacles.x,obstacles.y,size,size);
  } // end render()

}