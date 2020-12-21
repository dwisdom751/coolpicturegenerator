char whichShape;

int whatSize;

void setup()
{


   
   size(REPLACEMEONE,REPLACEMETWO);
   background(255,255,255);
    
   whichShape = 'e';
    
  whatSize = 1;

}





void draw()
{
  fill(random(255),random(255),random(255),125);
  switch(whichShape)
  {
    case 'e':
      ellipse(random(REPLACEMEONE),random(REPLACEMETWO),random(20*whatSize),random(20*whatSize));
      break;
     case 'r':
     rect(random(REPLACEMEONE),random(REPLACEMETWO),random(20*whatSize),random(20*whatSize));
     break;
  }
  
  
  if(keyPressed)
  {
      if(key=='s')
      {
        save(String.format("coolPic%d,%d,%d,%d,%d.png",second(),minute(),month(),day(),year()));
      }
      if(key == 'r')
      {
        whichShape = 'r';
      }
      if(key == 'e')
      {
        whichShape = 'e';
      }
      if(key == 'm')
      {
        whatSize++;
      }
      if(key == 'l' && whatSize > 1)
      {
        whatSize--;
      }
      if(key == 'n')
      {
        clear();
        background(255,255,255);
      }
  }

}
