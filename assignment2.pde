void setup()
{
  size(600,600);
  square = new MainSquare();

}
MainSquare square;

void draw()
{
  background(177);

  square.go();
  square.jump();
}