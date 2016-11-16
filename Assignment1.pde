void setup()
{
  size(1366,768);
  
  vision = new Vision(220,260,360);
  radar = new Radar();
  clock = new Clock();
}

//PFont scifi;

Vision vision;
Radar radar;
Clock clock;

void draw()
{
  //scifi = loadFont("Xenotron.ttf");
  //textFont(scifi);
  
  background(0);
  vision.render();
  vision.update();
  radar.update();
  //clock.update();
  
}