// code for collisions
/*
  50 cirlces are created and random 
  directions get put into them
*/
class Explode 
{
  float x;
  float y;

  float ex1; 
  float ex2;


  Explode () 
  {
    x = square.pos.x;
    y = square.pos.y;
     
    ex1 = random (-10,10);
    ex2 = random (-10,10);
  }

  void update () 
  {
    x += ex1;
    y += ex2;
    ellipse (x,y,3,3);
  }
}