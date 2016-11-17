void setup()
{
  fullScreen();
  
  vision = new Vision(220,260,360);
  radar = new Radar();
  clock = new Clock();
  power = new Power();
  compass = new Compass();
}

//PFont scifi;

Vision vision;
Radar radar;
Clock clock;
Power power;
Compass compass;

void draw()
{
  //scifi = loadFont("Xenotron.ttf");
  //textFont(scifi);
  
  background(0);
  vision.render();
  vision.update();
  radar.update();
  power.update();
  compass.render();
  //clock.update();
  
}