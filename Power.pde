class Power
{
  int power = 100;
  float arc;
  
  Power()
  {
    //arc = map(power,0,100,0,180);
  }
  
  boolean update()
  {
    strokeWeight(10);
    
    if(frameCount%90==0)
    {
      power-=1;
    }
      
    arc = map(power,0,100,PI,TWO_PI);
      
    if(power>40)
    {
      stroke(100,200,250);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(100,200,250);
      textSize(30);
      text(power + "%",(width/17),(height/5)*4);
    }
    if((power<40)&&(power>20))
    {
      stroke(#FBFF29);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(#FBFF29);
      textSize(30);
      text(power + "%",(width/17),(height/5)*4);
    }
    if((power<20)&&(power>0))
    {
      stroke(250,0,0);
      noFill();
      arc(width/12,(height/5)*4,150,150,PI,arc);
      fill(250,0,0);
      textSize(30);
      text(power + "%",(width/17),(height/5)*4);
      fill(0);
      stroke(255,0,0);
      rect(width/4,height/4,width/2,height/4);
      fill(250,0,0);
      text("POWER FATALLY LOW",width/3,height/3);
    }
    if(power<=0)
    {
      text("0%",(width/12)-50,(height/5)*4);
      return true;
    }
    
    return false;
  }
}