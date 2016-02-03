void setup()
{
  size(600,600);
  square = new MainSquare();
  startup = new StartUp();
  countdown = new Countdown();
  obstacle = new Obstacle();
  option1 = true;
  start = false;
  count = false;   
  hit = false;

    for (int i = 0; i < parts.length; i++)
   {
     parts [i] = new Explode ();
   }

}

float x;
float y;
boolean option1;
boolean start;
boolean count;
boolean hit;

MainSquare square;
StartUp startup;
Countdown countdown;
Obstacle obstacle;
Explode [] parts = new Explode [50];

void draw()
{ 
  if(option1)
  {
    background(177,255,255);
    square.render();
    square.deaths();
    obstacle.render();
    collisions();
    if(hit)
    {
      collide();
      
      if(frameCount % 100 == 0)
      {
        hit =! hit;
      }
      
    } 
        
  }
  
  if(start)
 {
    startup.render();
    startup.option1();
    startup.option2();
  }
  
  if(count)
  {
    countdown.render();
  }

}


void collisions()
{
  float distance = 0.0f;
  for(int i = 0; i < obstacle.obstacles.length; i ++)
       {
         
         distance = PVector.dist(square.pos, obstacle.obstacles[i]);
        
            if(distance <= square.squareSize)
            {
              //hit =! hit;
              if(square.firstFloor)
              {
                square.pos.x = 0;
                square.deaths ++;
              }
              
              else
              {
                square.pos.x = width;
                square.deaths ++;
              }
             }
        }
} // end collisions()

void collide()
{
        for (int j = 0; j < parts.length; j++) 
       {
        parts [j].update();
      }
} // end collide()