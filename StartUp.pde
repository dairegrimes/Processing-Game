class StartUp
{
  int x,y;
  String lastInput = new String();
  String currentInput = new String();

  StartUp()
  {
    x = 200;
    y = 400;
  }
  
  void render()
  {
    background(177,255,255);
    line(0,square.floor1 + square.squareSize,width,square.floor1 + square.squareSize);
    line(0,square.floor2 + square.squareSize,width,square.floor2 + square.squareSize);
    textSize(64);
    fill(255,0,0);
    textAlign(CENTER);
    text("SQUARE JUMP",300,150);
    fill(0,0,255);
    textSize(40);
    fill(0,0,255);
    text("Start",200,300);
    text("Exit",400,300);
    fill(0,0,255);
    
   
    
  } // end render()
  
  void option1()
  {
    if(mouseX >= 160 && mouseX <= 240 && mouseY >= 270 && mouseY <= 300)
    {
      if(mousePressed)
      {
        start  = false;
        count = true;
      }
      
    }

  } // end option1()
  
  
  void option2()
  {
    if(mouseX >= 270 && mouseX <= 400 && mouseY >= 270 && mouseY <= 300)
    {
      if(mousePressed)
      {
        exit();
      }
    }
     
  } // end option2()
  
  
  void end()
  {
     
    
      background(177,255,255);
      line(0,square.floor1 + square.squareSize,width,square.floor1 + square.squareSize);
      line(0,square.floor2 + square.squareSize,width,square.floor2 + square.squareSize);
      textSize(32);
      fill(255,0,0);
      textAlign(CENTER);
      text("GAME OVER",300,100);

      text("Your collisions: " + square.collisions,300,350);
      
      text("Enter your name: " + lastInput,200,300);
      //text("Enter your name: " + currentInput,200,300);
      
      text("Play Again",200,500);
      text("Exit",400,500);
      
      fill(0,0,255);
      
      if(mouseX >= 160 && mouseX <= 240 && mouseY >= 470 && mouseY <= 500)
      {
        if(mousePressed)
        {
          start  = true;
          end = false;
          
        }
      
      }
    
    
      if(mouseX >= 270 && mouseX <= 400 && mouseY >= 470 && mouseY <= 500)
      {
        if(mousePressed)
        {
          exit();
        }
    
      }
      
        
    
  } //  end end()
  
  void keyPressed()
{
if(key == ENTER)
{
  lastInput = currentInput = currentInput + key;
  currentInput = "";
}

else if(key == BACKSPACE && currentInput.length() > 0)
{
  currentInput = currentInput.substring(0, currentInput.length() - 1);
}

else
{
  currentInput = currentInput + key;
}

}


}