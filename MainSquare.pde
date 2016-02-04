class MainSquare extends GameObject
{
  boolean jumping = true;
  boolean spin = false;
  float spin2;
  float spinSpeed;
  MainSquare()
  {
    super(0, height / 3);
    spin2 = 0;
    spinSpeed = 0.1;
  }
  
  void render()
  {
    fill(0);
    line(0,floor1 + squareSize,width,floor1 + squareSize);
    line(0,floor2 + squareSize,width,floor2 + squareSize);

     //rect(pos.x,pos.y,squareSize,squareSize);
      pushMatrix();
      translate(pos.x + 10, pos.y + 10);
      rotate(spin2);
      rect(-10, -10, squareSize, squareSize);
      popMatrix();

  
      if(spin)
      {
         spin2 += spinSpeed;
     
         if(spin2 >= 4)
         {
             spin2 = 0;
             spin =! spin;
         }
      }
     
     
     
     
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
        pos.y = floor1;
        speed *= (-1);
        firstFloor =! firstFloor;
        stage ++;
        check();
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
              if(spin2 == 0)
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
              if(spin2 == 0)
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
  
  
  void collisions()
  {
    textAlign(CENTER);
    textSize(16);
    text("Collisions:  " + collisions,60,30);
    
    textSize(16);
    text(stage + " / 10",250,30);
   
  } // deaths()
  
  void check() // makes sure you don't get the same level twice
  {
    array[0] = level;
    array[1] = (int)random(1,6);
    
    do
    {
      level = (int)random(1,6);
      array[1] = level;
      if(array[0] != array[1])
      {
        level = array[1];
      }
    }
    while(array[0] == array[1]);
    
    
    
  } // end check()

}