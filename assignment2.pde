void setup()
{
  size(600,600);
  square = new MainSquare();
  obstacle = new Obstacle();
  startup = new StartUp();

}
MainSquare square;
Obstacle obstacle;
StartUp startup;

void draw()
{
  background(177);
  
  //square.go();
  //square.jump();
  //obstacle.obstacles();
  //square.deaths();
  //collisions();
  
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