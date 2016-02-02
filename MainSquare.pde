class MainSquare extends GameObject
{
  boolean jumping = true;
  boolean spin = false;

  float u;
  MainSquare()
  {
    super(0, height / 3);
    u = 0;

  }
  
  
  
  void render()
  {
  
    line(0,floor1 + squareSize,width,floor1 + squareSize);
    line(0,floor2 + squareSize,width,floor2 + squareSize);

     //rect(pos.x,pos.y,squareSize,squareSize);
      pushMatrix();
      translate(pos.x + 10, pos.y + 10);
      rotate(u);
      rect(-10, -10, squareSize, squareSize);
      popMatrix();

  
      if(spin)
      {
         u += 0.1;
     
         if(u >= 4)
         {
             u = 0;
             spin =! spin;
         }
      }
     
     fill(0);
     
     
     pos.x += speed;
    
      // FIRST FLOOR
      if(pos.x >= width)
      {
        pos.y = floor2;
        speed *= (-1);
        firstFloor =! firstFloor;
      }
      
      // SECOND FLOOR
      if(pos.x <= 0)
      {
        level ++;
        pos.y = floor1;
        speed *= (-1);
        firstFloor =! firstFloor;
        stage ++;
      }    

    // CODE FOR JUMPING
    
      // FIRST LEVEL
    if(firstFloor)
    {
        if(jumping)
      {
         if(pos.y != floor1)
         {
            pos.y += jumpSpeed;
         }
      
        if (pos.y >= floor1)
        {
            if(keyPressed)
          {
 
            if(key == ' ')
            {
              if(u == 0)
              {
                spin =! spin;
                jumping =! jumping;
              }
              
            } 
          }
        }
      }
  
      else
      {
        pos.y -= jumpSpeed;
   
        
        if(pos.y <= 150)
        {
          pos.y = 150;
          jumping =! jumping;
        }
       }
      }
     
     
     // SECOND LEVEL
      else
    {
        if(jumping)
      {
         if(pos.y != floor2)
         {
            pos.y += jumpSpeed;
         }
      
        if (pos.y >= floor2)
        {
            if(keyPressed)
          {
 
            if(key == ' ')
            {
              if(u == 0)
              {
                spin =! spin;
                jumping =! jumping;
              }
            } 
          }
        }
      }
  
      else
      {
        pos.y -= jumpSpeed;
   
          if(pos.y <= 350)
        {
          pos.y = 350;
          jumping =! jumping;
        }
       }
      }
     
  }// render()
  
  
  void deaths()
  {
    textSize(16);
    text("Deaths:  " + deaths,30,30);
    
    textSize(16);
    text(stage + " / 10",250,30);
   
  } // deaths()

}