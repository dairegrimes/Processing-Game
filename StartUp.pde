// code for the startup menu
// and for when the game is finished
class StartUp
{
  int i;
  int[] numbers = new int[10];

  StartUp()
  {
    
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
    textSize(18);
    fill(0,0,255);
    textSize(40);
    text("Start",200,300);
    text("Exit",400,300);
    fill(0,0,255);
  } // end render()
  
  void option1() // code for starting the game and countdown
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
  
  
  void option2() // code for exiting
  {
    if(mouseX >= 270 && mouseX <= 400 && mouseY >= 270 && mouseY <= 300)
    {
      if(mousePressed)
      {
        exit();
      }
    }
  } // end option2()
  
  
  void end() // code for when you finish playing
  {
      background(177,255,255);
      textSize(32);
      fill(255,0,0);
      textAlign(CENTER);
      text("GAME OVER",300,100);
      textSize(25);
      text("Your collisions: " + square.collisions,300,320);
      textSize(18);
      for(int i = 0; i < data.size() + 1; i ++)
      {
        text(numbers[i],100,220 + ((i + 1) * 20)); 
        if(i == numbers.length - 1)
        {
          break;
        }
      }
      text("Best Scores",100,200); 
      textSize(25);
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
        PrintWriter output = createWriter ("scores.csv"); //  outsputs the new scores to a file

        
        if(data.size() < 1) // if there are no scores already
        {
           output.println(square.collisions);
           output.flush();
           output.close();
           
           numbers[0] = square.collisions;
          
          
        } //  end if()
        
        else // if there are scores
        {
          for(int j = 0; j < data.size(); j ++ )
          {
            numbers[j] = data.get(j).scores;
            if(i == numbers.length - 1)
            {
              break;
            }
          }
          
          i = data.size();
          
          if(data.size() < numbers.length - 1)
          {
            numbers[i] = square.collisions;
          }
          
          else
          {
            if(numbers[9] > square.collisions)
            {
              numbers[9] = square.collisions;
            }
          }
          
          Arrays.sort(numbers); //  sorts the numbers for a new high score
          

          for(int i = 0; i < data.size() + 1; i ++)
          {
             output.println(numbers[i]);
             if(i == numbers.length - 1)
             {
                break;
             }
          }
           output.flush();
           output.close();
          }
  } // end data()
}