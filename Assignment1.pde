import ddf.minim.*;

ArrayList<Tanks> tank;

Minim minim;
AudioInput in;
AudioRecorder recorder;
  
boolean dead = false; 
int tankcounter=0;

Mic mic;
Vision vision;
Radar radar;
Power power;
Compass compass;

PImage img;

void setup()
{
  fullScreen();
  
  img = loadImage("wasteland2.jpg");
  img.resize(width,height);
  
  tank = new ArrayList<Tanks>();
  
  minim = new Minim(this);

  in = minim.getLineIn();
  recorder = minim.createRecorder(in, "myrecording.wav");
    
  vision = new Vision(180,220,260,360);
  radar = new Radar();
  power = new Power();
  compass = new Compass();
  mic = new Mic();
  tank.add(new Tanks(90, width/12*10, "Oxygen1"));
  tank.add(new Tanks(90, width/12*10+100,"Oxygen2"));
}


void draw()
{
  background(0);
  image(img,0,0);
  
  textAlign(CENTER,CENTER);
 
  vision.update();
  compass.render();
  compass.update();
  radar.update();
  mic.render();
  mic.update();
  dead = power.update();
  Tanks t1 = tank.get(0);
  tankcounter=t1.update(tankcounter);
  Tanks t2 = tank.get(1);
  tankcounter=t2.update(tankcounter);
  
  if(tankcounter==2)
  {
    dead=true;
  }
  
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