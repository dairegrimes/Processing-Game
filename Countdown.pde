// The countdown before the game starts

class Countdown
{
  int number;
  
  Countdown()
  {
    number = 5;
  }
  
  void render()
  {
    square.stage = 1;
    background(177,255,255);
    textSize(32);
    fill(255,0,0);
    textAlign(CENTER);
    text("Press space to jump",300,100);
    text("over the obstacles!",300,500);
    text(number,300,300);
    if(frameCount % 60 == 0)
    {
      number --;
    }
    
    if(number == 0)
    {
      count = false;
      option1 = true;
    }
  }
}