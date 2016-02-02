void setup()
{
  size(600,600);
  square = new MainSquare();
  startup = new StartUp();
  countdown = new Countdown();
  option1 = true;
  start = false;
  count = false;   
  obstacle = new Obstacle();
}



boolean option1;
boolean start;
boolean count;
MainSquare square;
StartUp startup;
Countdown countdown;
Obstacle obstacle;

void draw()
{
  
  
  if(option1)
  {
    background(177,255,255);
    square.render();
    square.deaths();
    obstacle.render();
    collisions();
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