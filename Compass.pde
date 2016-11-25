class Compass
{
  int cx=width/2;
  int cy1=0,cy2=height;
  float x,y;
  float theta=0;
  float theta1=0;
  int[] compassnum = new int[10];
  int num=0;
  int radius = height/5;
  
  Compass()
  {
    for(int i=0;i<compassnum.length;i++)
    {
      compassnum[i]=num;
      num+=10;
    }
  }
  
  void render()
  {
    strokeWeight(3);
    pushMatrix();
    translate(cx,cy1);
    rotate(theta);
    noFill();
    stroke(100,200,255);
    ellipse(0,0,width,height/5);
    popMatrix();
    
    pushMatrix();
    translate(cx,cy2);
    rotate(theta);
    noFill();
    stroke(100,200,255);
    ellipse(0,0,width,height/5);
    popMatrix();
  }
  void update()
  {
    for(int i=0;i<compassnum.length;i++)
    {
      x= cx + (radius*cos(theta1));
      y= cy1 + (radius*sin(theta1));
    
      fill(100,200,255);
      textSize(20);
      text(compassnum[i],x,y);
      theta1+=(360/compassnum.length);
      //theta1=theta1+(360/compassnum.length);
    }
  }
}