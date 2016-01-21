class GameObject
{
   boolean firstFloor = true;
   int speed = 3;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   PVector pos;
   PVector[] obstacles = new PVector[4];
   float distance;
   int[] position = { 200, 400 , 300 , 500};
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
      obstacles[0].y = 200;
      obstacles[1].y = 200;
      obstacles[2].y = 400;
      obstacles[3].y = 400;
    }
    
    
  }
 

  
  
  
}