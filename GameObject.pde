abstract class GameObject
{
   boolean firstFloor = true;
   float floor1 = width / 3;
   float floor2 = (width / 3) * 2;
   float jumpSpeed = 2.5;
   int squareSize = 20;
   PVector obstacles;
   PVector pos;
   int speed = 3;
   int deaths = 0;
   int level = 1;

   
   GameObject()
   {
     this (0, width / 3);
   }
   
    GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    obstacles = new PVector(x,y);
  }
    
    abstract void render();
    //abstract void go();
    //abstract void jump();
    //abstract void deaths();
}