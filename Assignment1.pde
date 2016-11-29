/*
Student Name: Lauren Keenan Brennan
Student Number: C15434102
Date: 29/November/2016
*/

//importing libraries because i am using minim to take in sound input from the microphone
import ddf.minim.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;

//Class Prototypes and ArrayLists
ArrayList<Tanks> tank;

Mic mic;
Vision vision;
Radar radar;
Power power;
Compass compass;

//holds the value for if the end screen should appear or not
boolean dead = false; 

//PImage holds my background image
PImage img;

void setup()
{
  fullScreen();
  
  //loads image into sketch and resizes it to fullscreen
  img = loadImage("wasteland2.jpg");
  img.resize(width,height);
  
  minim = new Minim(this);

  in = minim.getLineIn();
  recorder = minim.createRecorder(in, "myrecording.wav");
    
  //creates new instances of the classes
  tank = new ArrayList<Tanks>();
  vision = new Vision(180,220,260,360);
  radar = new Radar();
  power = new Power();
  compass = new Compass();
  mic = new Mic();
  tank.add(new Tanks(100, height/5*4, "Oxygen1"));
  tank.add(new Tanks(100, height/5*4+60,"Oxygen2"));
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
  t1.update();
  Tanks t2 = tank.get(1);
  t2.update();
  
  if(dead == true)
  {
    endScreen();
  }
}

void endScreen()
{
  float cx = (width/5)+((width/5)*3)/2;
  float cy = height/4 +((height/4)*2)/2;
  
  stroke(255,0,0);
  fill(0);
  rect(0,0,width,height);
  fill(255,0,0);
  textSize(70);
  textAlign(CENTER,CENTER);
  text("FATAL ERROR",cx,cy); 
}

//Method for user to click my Mic button and set the recorder to recording or not recording
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