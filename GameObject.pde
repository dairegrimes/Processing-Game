class GameObject
{
   boolean firstFloor = true;
   int speed = 3;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   PVector pos;
   PVector[] obstacles = new PVector[2];
   float distance;
   int[] position = { 200, 400 };
   int index;
     
   
   
   
   
   GameObject()
  {
    this(0, height / 3);
  }
  
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    
     for (int i = 0; i < obstacles.length; i++) 
    {
      obstacles[i] = new PVector();
    }
    
    for(index = 0; index < obstacles.length; index ++ )
    {
      obstacles[index].x = position[index];
      obstacles[index].y = 200;
    }
  }
 

  
  
  
}