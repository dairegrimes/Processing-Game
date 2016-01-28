void setup()
{
  size(600,600);
  square = new MainSquare();
  obstacle = new Obstacle();
  startup = new StartUp();
  countdown = new Countdown();
  option1 = false;
  start = true;
  count = false;
}

boolean option1;
boolean start;
boolean count;
MainSquare square;
Obstacle obstacle;
StartUp startup;
Countdown countdown;

void draw()
{
  
  
  if(option1)
  {
    background(255);
    square.go();
    square.jump();
    obstacle.obstacles();
    square.deaths();
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
  for(int index = 0; index < obstacle.obstacles.length; index ++)
       {
         distance = PVector.dist(square.pos, obstacle.obstacles[index]);
          println(distance);
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