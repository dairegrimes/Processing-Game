abstract class GameObject
{
   PVector[] obstacles = new PVector[6];
   boolean firstFloor = true;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   int[] array = new int [2];
   int level = (int)random(1,6);
   int collisions = 0;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   int speed = 3;
   PVector pos;
   int stage = 1;
   /*
     There are 5 different level and 
     you randomly play them 10 times
   */
   
   
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
    
    abstract void render();
}