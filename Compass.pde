class Compass
{
  float x,y;
  float theta=0;
  float[] compassnum = new float[48];
  float num=0;
  int counter = 5;
  
  Compass()
  {
    for(int i=0;i<compassnum.length;i++)
    {
      compassnum[i]=num;
      if(num<337.5)
      {
        num+=22.5f;
      }
      else
      {
        num=0;
      }
    }
  }
  
  void render()
  {
  }
  
  void update()
  {
    stroke(100,200,250);
    textSize(30);
    
    float z = compassnum.length/6;
  
    if(mouseX==width/2)
    {
      if(frameCount%10==0)
      {
        counter += 0;
      }
    }
    if(mouseX>width/2)
    {
      if(frameCount%10==0)
      {
        counter -= 20;
      }
    }
    else
    {
      if(frameCount%10==0)
      {
        counter += 20;
      }
    }
    
    for(int i=0;i<compassnum.length/2;i++)
    {
      String s = nf(compassnum[i],3,1);
      x = 0-width +((width/z)*i) + counter;
      y = height/20;
      fill(100,200,250);
      textSize(30);
      text(s,x,y);
    }
    for(int j = compassnum.length-1;j>compassnum.length/2;j--)
    {
      String s = nf(compassnum[j],3,1);
      x = width+width-(((width/z)*j) + counter);
      y = height/20;
      fill(100,200,250);
      textSize(30);
      text(s,x,y);
    }
    
  }
  
}