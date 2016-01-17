void setup()
{
  size(600,600);
  square = new Square();

}
Square square;

void draw()
{
  background(177);
  square.go();
  square.jump();

}