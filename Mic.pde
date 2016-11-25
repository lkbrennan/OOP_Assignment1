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
    text("SEND MESSAGE",width/10,height/5);
  }
  
  void update()
  {
    stroke(100,200,250);
    //float y = map(in.bufferSize()-1,in.bufferSize(),width/30,width/30+(width/30+4));
    // draw the waveforms
    // the values returned by left.get() and right.get() will be between -1 and 1,
    // so we need to scale them up to see the waveform
    for(int i = width/30; i < in.bufferSize() - 1; i++)
    {
      line(i, height/2 + in.left.get(i)*50, (width/30)+50, height/2 + in.left.get(i+1)*50);
      line(i, (height/2)+30 + in.right.get(i)*50, (width/30)+50 , (height/2)+30 + in.right.get(i+1)*50);
    }
    
    if ( recorder.isRecording() )
    {
      text("Currently recording...", 5, 15);
    }
    else
    {
      text("Not recording.", 5, 15);
    }
  }
}