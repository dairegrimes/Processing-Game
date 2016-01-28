void setup()
{
  size(600,600);
  square = new MainSquare();
  startup = new StartUp();
  countdown = new Countdown();
  option1 = true;
  start = false;
  count = false;

    Obstacle obstacle = new Obstacle(300,200);
    gameObjects.add(obstacle);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

boolean option1;
boolean start;
boolean count;
MainSquare square;
StartUp startup;
Countdown countdown;

void draw()
{
  
  
  if(option1)
  {
    background(177,255,255);
    square.render();
    square.deaths();
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.render();
    
  }
    collisions();
  }
  
  if(start)
 {
    //startup.render();
    //startup.option1();
    //startup.option2();
  }
  
  if(count)
  {
    countdown.render();
  }
  

  
  
}


void collisions()
{
  float distance = 0.0f;
  for(int index = 0; index < 1; index ++)
       {
         GameObject go = gameObjects.get(index);
         
         distance = PVector.dist(square.pos, go.obstacles);
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