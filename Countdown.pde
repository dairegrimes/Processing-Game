class Countdown
{
  int number;
  
  Countdown()
  {
    number = 5;
  }
  
  void render()
  {
    background(255);
    textSize(32);
    fill(255,0,0);
    text("Press enter to jump",300,100);
    text("over the obstacles!",300,500);
    textAlign(CENTER);
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