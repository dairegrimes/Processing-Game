class Explode 
{

  float x;
  float y;

  float velX; // speed or velocity
  float velY;


  Explode () 
  {
    //x and y position to be in middle of screen

    
    x = width/2;
    y = height/2;
     
    velX = random (-10,10);
    velY = random (-10,10);
  }

  void update () 
  {
    x+=velX;
    y+=velY;
     

    ellipse (x,y,3,3);
  }
}