class Power
{
  //power starts at 100
  int power = 100;
  
  boolean message=false;
  
  Power()
  {
  }
  
  boolean update()
  {
    strokeWeight(10);
    
    textAlign(CENTER,CENTER);
    
    if(frameCount%5==0)
    {
      power-=1;
    }
      
    //maps the power variable (range 0-100) to a number(radiand) between PI and TWO_PI
    float arc = map(power,0,100,PI,TWO_PI);
      
    if(power>40)
    {
      stroke(100,200,250);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(100,200,250);
      textSize(40);
      text(power + "%",(width/12),(height/5)*4);
    }
    //if power is between 40 and 20,the colour changes to yellow
    if((power<40)&&(power>20))
    {
      stroke(#FBFF29);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(#FBFF29);
      textSize(40);
      text(power + "%",(width/12),(height/5)*4);
    }
    //if power is less than 20, colour turns red and a warning sign is displayed
    if((power<20)&&(power>0))
    {
      stroke(250,0,0);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(250,0,0);
      textSize(30);
      text(power + "%",(width/12),(height/5)*4);
      fill(0);
      stroke(255,0,0);
      strokeWeight(2);
      rect(width/3,height/5*4,width/3,height/7);
      fill(250,0,0);
      textSize(40);
      text("POWER FATALLY LOW",width/2,height/5*4+40);
    }
    //when power is 0, a boolean value is passed pack to the draw method which
    //triggers the endscreen() method to run
    if(power<=0)
    {
      textSize(40);
      text("0%",width/12,(height/5)*4);
      return true;
    }
    
    return false;
    
  }
  
}