class Power
{
  int power = 100;
  float arc;
  
  boolean message=false;
  
  Power()
  {
  }
  
  boolean update()
  {
    strokeWeight(10);
    
    textAlign(CENTER,CENTER);
    
    if(frameCount%30==0)
    {
      power-=1;
    }
      
    arc = map(power,0,100,PI,TWO_PI);
      
    if(power>40)
    {
      message=false;
      stroke(100,200,250);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(100,200,250);
      textSize(30);
      text(power + "%",(width/12),(height/5)*4);
    }
    if((power<40)&&(power>20))
    {
      message=false;
      stroke(#FBFF29);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(#FBFF29);
      textSize(30);
      text(power + "%",(width/12),(height/5)*4);
    }
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
      /*message=true;
      if(message==true)
      {
        stroke(250,0,0);
        noFill();
        rect(width/12 - 100, (height/5)*4 + 50, 300, 80);
        textSize(25);
        text("Restore some power?",width/12+50,(height/5)*4 + 90);
        stroke(100,200,250);
      }*/
    }
    if(power<=0)
    {
      textSize(40);
      text("0%",width/12,(height/5)*4);
      return true;
    }
    
    return false;
    
  }
  
}