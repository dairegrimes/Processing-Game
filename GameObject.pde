class GameObject
{
   boolean firstFloor = true;
   int speed = 3;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   PVector pos;
   PVector[] obstacles = new PVector[9];
   float distance;
   int[] levels1 = { 200 , 300 , 200, 300, 400};
   int[] levels2 = { 300, 300, 200, 400 , 300 };
   int[] levels3 = { 200, 220, 300 , 320, 300, 400, 420, 440, 500 };
   int[] levels4 = { 200, 220, 400 , 420 };
   int[] levels5 = { 200, 400 , 300 };
   int[] levels6 = { 200, 400 , 300 , 500};
   int[] levels7 = { 200, 400 , 300 , 500};
   int[] levels8 = { 200, 400 , 300 , 500};
   int[] levels9 = { 200, 400 , 300 , 500};
   int[] levels10 = { 200, 400 , 300 , 500};
   int index;
   int lives = 0;
   int level = 1;
   
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