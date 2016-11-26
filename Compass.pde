class Compass
{
  int cx=width/2;
  int cy1=0,cy2=height;
  float x,y;
  float theta=0;
  float theta1=0;
  float[] compassnum = new float[16];
  int num=0;
  
  Compass()
  {
    for(int i=0;i<compassnum.length;i++)
    {
      compassnum[i]=num;
      num+=22.5f;
    }
  }
  
  void render()
  {
    /*strokeWeight(3);
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
    int i=0;*/

    
    
  }
  void update()
  {
    float z = compassnum.length/2;
    
    if(mouseX==width/2)
    {
      for(int i=0;i<compassnum.length;i++)
      {
        String s = nf(compassnum[i],3,1);
        x = (width/z)*i;
        y = height/20;
        text(s,x,y);
      }
    }
    if(mouseX>width/2)
    {
      for(int i=0;i<compassnum.length;i++)
      {
        String s = nf(compassnum[i],3,1);
        x = ((width/z)*i)-15;
        y = height/20;
        text(s,x,y);
      }
    }
    if(mouseX<width/2)
    {
      for(int i=0;i<compassnum.length;i++)
      {
        String s = nf(compassnum[i],3,1);
        x = ((width/z)*i)+15;
        y = height/20;
        text(s,x,y);
      }
    }
  }
}