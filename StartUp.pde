class StartUp
{
  int x,y;

  String lastInput = new String();
  String currentInput = new String();
  int[] numbers = new int[11];

  int temp;

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
      textSize(32);
      fill(255,0,0);
      textAlign(CENTER);
      text("GAME OVER",300,100);
      textSize(18);
      for(int i = 0; i < numbers.length; i ++)
      {
        text(numbers[i],100,220 + ((i + 1) * 20)); 
      }
      text("High Scores",100,200); 
      textSize(25);
      text("Your collisions: " + square.collisions,300,320);
      
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
  
 void data() // inputs and outputs the scores to a text file
  {      
        
       // puts the users score into 11th position the sorts it
       // then displays the top ten
       data.get(10).scores = square.collisions; 
        
       for(int i = 0; i < data.size(); i ++)
       {
           numbers[i] = data.get(i).scores;
       }
       
       Arrays.sort(numbers); //  sorts the numbers for a new high score
       
       
       PrintWriter output = createWriter ("scores.csv"); //  outsputs the new scores to a file
       for(int i = 0; i < data.size(); i ++)
       {
         output.println(numbers[i]);
       }
       output.flush();
       output.close();
  }
}