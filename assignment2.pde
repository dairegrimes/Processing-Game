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
  square.collide();
  obstacle.stand();
}