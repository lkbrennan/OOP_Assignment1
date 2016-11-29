class Compass
{
  float x,y;
  float theta=0;
  //array to hold compass points
  float[] compassnum = new float[48];
  //variable which will fill aray with compass points
  float num=0;
  //variable which will increment and decrement in accordance with the mouseX
  int counter = 5;
  
  Compass()
  {
    //For loop fills array
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
    
    //Variable will be used to divide screen by 1/6th of the array
    float z = compassnum.length/6;
  
    //this code increments/decrements the counter according to the mouseX position
    //this allows for the compass points to scroll across the top of the screen acording to your positioning
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
    
    //Two for loops draw the array elements to the screen
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