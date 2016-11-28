import ddf.minim.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;
  
boolean dead = false; 

Mic mic;
Vision vision;
Radar radar;
Power power;
Compass compass;

void setup()
{
  fullScreen();
  
  minim = new Minim(this);

  in = minim.getLineIn();
  recorder = minim.createRecorder(in, "myrecording.wav");
    
  vision = new Vision(180,220,260,360);
  radar = new Radar();
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
  compass.render();
  compass.update();
  radar.update();
  mic.render();
  mic.update();
  dead = power.update();
  
  if(dead == true)
  {
    endScreen();
  }
}

void endScreen()
{
  float x = width/5;
  float y = height/4;
  float cx = (width/5)+((width/5)*3)/2;
  float cy = height/4 +((height/4)*2)/2;
  
  stroke(255,0,0);
  fill(0);
  rect(x,y,(width/5)*3, (height/4)*2);
  fill(255,0,0);
  textSize(70);
  textAlign(CENTER,CENTER);
  text("FATAL ERROR",cx,cy);
    
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