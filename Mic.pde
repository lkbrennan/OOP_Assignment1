class Mic
{

  Mic()
  {
  }
  
  
  void render()
  {
    stroke(100,200,255);
    noFill();
    rect(width/30,height/6,(width/30)*4,height/20); 
    textAlign(CENTER,CENTER);
    fill(100,200,255);
    textSize(20);
    text("SEND MESSAGE",width/10,height/5-10);
  }
  
  void update()
  {
    stroke(100,200,250);
    
    for(int i = 0; i < in.bufferSize() - 1; i++)
    {
      float x1 = map( i, 0, in.bufferSize(), width/30, width/30+200 );
      float x2 = map( i+1, 0, in.bufferSize(), width/30, width/30+200 );
      line(x1, (height/4)+50 + in.left.get(i)*50, x2, (height/4)+50 + in.left.get(i+1)*50);
      line(x1, (height/4)+100 + in.right.get(i)*50, x2 , (height/4)+100 + in.right.get(i+1)*50);
    }
    
    if ( recorder.isRecording() )
    {
      text("Currently recording...", width/10,(height/6)+70);
    }
    else
    {
      text("Not recording.", width/10,(height/6)+70);
    }
  }
}