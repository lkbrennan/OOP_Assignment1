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
    if(frameCount%60==0)
    {
      power-=0.01f;
    }
    
    arc = map(power,0,100,PI,TWO_PI);
    
    strokeWeight(10);
    noFill();
    stroke(100,200,250);
    arc(width/10,(height/5)*4,200,200,PI,arc);
    textSize(30);
    fill(100,200,250);
    text(power + "%",(width/10)-50,(height/5)*4);
  }
}