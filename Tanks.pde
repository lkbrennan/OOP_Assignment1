class Tanks
{
  int percent;
  float x;
  float y;
  String type;
  
  Tanks(int percentage,float beginx, String type)
  {
    this.percent=percentage-37;
    this.x=beginx;
    this.type=type;
  }
  
  int update(int counter)
  {
    counter=0;
    
    if(percent>0)
    {
      if(frameCount%10==0)
      {
        percent=percent-(int(random(0,2)));
      }
      
      y=map(percent,0,100,(height/5)*4+50,(height/5)*4);
    
      noStroke();
      fill(100,200,250);
      rect(x,height/5*4+50,70,-y);
      
      fill(100,200,250);
      textSize(20);
      text(type,x+35,height/5*4+70);
      text(percent + '%',x+35,height/5*4+100);
      
      counter=0;
    }
    if(percent<=0)
    {
      counter=1;
    }
    return counter;
  }
}