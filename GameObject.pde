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
   int[] randnum = { 200, 300, 400};
   
     
   
   
   
   
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
    
    obstacles[0].x = 200;
    obstacles[0].y = 200;
  }
 

  
  
  
}