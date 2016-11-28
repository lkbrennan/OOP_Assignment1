class Compass
{
  float x,y;
  float[] compassnum = new float[16];
  float num=0;
  int counter = 5;
  
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
  }
  
  void update()
  {
    stroke(100,200,250);
    textSize(30);
    
    float z = compassnum.length/2;
  
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
    
    for(int i=0;i<compassnum.length;i++)
    {
      String s = nf(compassnum[i],3,1);
      x = ((width/z)*i) + counter;
      y = height/20;
      stroke(100,200,250);
      textSize(30);
      text(s,x,y);
      if(counter==-1615)
      {
        i=0;
      }
    }
    println(counter);
  }
  
}