class Power
{
  float power = 100;
  float arc;
  
  Power()
  {
    //arc = map(power,0,100,0,180);
  }
  
  void update()
  {
    strokeWeight(10);
    
          if(frameCount%10==0)
      {
        power-=1;
      }
      
      arc = map(power,0,100,PI,TWO_PI);
      
    if(power>40)
    {
      stroke(100,200,250);
      noFill();
      arc(width/10,(height/5)*4,200,200,PI,arc);
      fill(100,200,250);
      textSize(30);
      text(power + "%",(width/10)-50,(height/5)*4);
    }
    if((power<40)&&(power>15))
    {
      stroke(#FBFF29);
      noFill();
      arc(width/10,(height/5)*4,200,200,PI,arc);
      fill(#FBFF29);
      textSize(30);
      text(power + "%",(width/10)-50,(height/5)*4);
    }
    if(power<20)
    {
      stroke(250,0,0);
      noFill();
      arc(width/10,(height/5)*4,200,200,PI,arc);
      fill(250,0,0);
      textSize(30);
      text(power + "%",(width/10)-50,(height/5)*4);
    }
      
    
    
  }
}