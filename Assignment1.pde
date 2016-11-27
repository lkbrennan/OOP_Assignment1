import ddf.minim.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;
  
boolean dead = false; 

Mic mic;
Vision vision;
Radar radar;
Clock clock;
Power power;
Compass compass;

void setup()
{
  fullScreen();
  
  minim = new Minim(this);

  in = minim.getLineIn();
  // create a recorder that will record from the input to the filename specified
  // the file will be located in the sketch's root folder.
  recorder = minim.createRecorder(in, "myrecording.wav");
    
  vision = new Vision(220,260,360);
  radar = new Radar();
  clock = new Clock();
  power = new Power();
  compass = new Compass();
  mic = new Mic();
}


void draw()
{
  background(0);
  
  textAlign(CENTER,CENTER);
  
  //scifi = loadFont("Xenotron.ttf");
  //textFont(scifi);
 
  vision.render();
  vision.update();
  dead = power.update();
  compass.render();
  compass.update();
  radar.update();
  //mic.render();
  //mic.update();
  //clock.update();
  
  if(dead == true)
  {
    endScreen();
  }
}

void endScreen()
{
  float x = width/5;
  float y = height/4;
  
  stroke(255,0,0);
  fill(0);
  rect(x,y,(width/5)*3, (height/4)*2);
  fill(255,0,0);
  textSize(50);
  textAlign(CENTER);
  text("FATAL ERROR",x+100,y+50);
  
  for(int i = 0; i <= 30000; i ++)
  {
    if(i==30000)
    {
      exit();
    }
  }
    
}

void mouseReleased()
{
  if((mouseX<width+((width/30)*4))&&(mouseX>width/30))
  {
    if((mouseY<(height/6+height/20))&&(mouseY>height/6))
    {
      if ( recorder.isRecording() ) 
      {
        recorder.endRecord();
      }
      else 
      {
        recorder.beginRecord();
      } 
    }
  }
}