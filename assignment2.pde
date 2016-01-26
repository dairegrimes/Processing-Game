void setup()
{
  size(600,600);
  square = new MainSquare();
  obstacle = new Obstacle();

}
MainSquare square;
Obstacle obstacle;


void draw()
{
  background(177);

  square.go();
  square.jump();
  obstacle.obstacles();

  square.lives();
  collisions();
  
}


void collisions()
{
  float distance = 0.0f;
  
  for(int index = 0; index < obstacle.obstacles.length; index ++)
       {
         distance = PVector.dist(square.pos, obstacle.obstacles[index]);
         
            if(distance <= square.squareSize)
             {
              if(square.firstFloor)
              {
                square.pos.x = 0;
                square.lives ++;
              }
              
              else
              {
                square.pos.x = width;
                square.lives ++;
              }
             }
        }
} // end collisions()