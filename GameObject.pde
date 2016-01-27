class GameObject
{
   boolean firstFloor = true;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   PVector[] obstacles = new PVector[9];
   PVector pos;
   int speed = 3;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   int index;
   int deaths = 0;
   int level = 4;
   
   GameObject()
   {
     this (0, width / 3);
   }
   
    GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    
    for (int i = 0; i < obstacles.length; i++) 
    {
      obstacles[i] = new PVector();
    }
 
  }
  

 

}