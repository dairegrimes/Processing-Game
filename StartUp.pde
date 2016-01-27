class StartUp
{
  int x,y;
  boolean start,exit;
  StartUp()
  {
    start = false;
    exit = false;
    x = 200;
    y = 400;
  }
  
  void render()
  {
    background(177,255,0);
    line(0,square.floor1 + square.squareSize,width,square.floor1 + square.squareSize);
    line(0,square.floor2 + square.squareSize,width,square.floor2 + square.squareSize);
    textSize(64);
    fill(255,0,0);
    text("SQUARE JUMP",300,150);
    textAlign(CENTER);
    fill(0,0,255);
    
    textSize(40);
    fill(0,0,255);
    text("Start",200,300);
    text("Exit",400,300);
    fill(0,0,255);
    
   
    
  } // end render()
  
  void option1()
  {
    if(mouseX >=160 && mouseX <= 240 && mouseY >=270 && mouseY <= 300)
    {
      if(mousePressed)
      {
        flip  = false;
        tutorial1 = false;
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
}