void setup()
{
  size(600,600);
  square = new Square();

}
Square square;

void draw()
{
  background(177);
  line(0,200,width,200);
  square.go();
  square.jump();
  println(mouseX);
  println(mouseY);

}