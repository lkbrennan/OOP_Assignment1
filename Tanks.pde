class Tanks
{
  int percent=0;
  float x,y;
  float start;
  String type;
  int counter=0;
  
  Tanks(int percentage,float beginy, String type)
  {
    this.percent=percentage;
    this.y=beginy;
    this.type=type;
    start=width/4*3;
    println(percent);
  }
  
  void update()
  {
    println(percent);
    if(frameCount%90==0)
    {
      percent=percent-(int(random(0,2)));
    }
    
    fill(100,200,250);
    textSize(20);
    text("TANK LEVELS", start+100,height/5*4-15);
    
    if(percent>0)
    {
    x=map(percent,0,100,start,start+200);
    noStroke();
    fill(100,200,250);
    rect(x,y,start-x,30);
    textSize(20);
    text(type, start+250,y+15);
    text(percent+"%",start-25,y+15);
    }
    if(percent<=0)
    {
      fill(100,200,250);
      textSize(20);
      text(type, start+250,y+15);
      text("0%",start-25,y+15);
    }
  }
}