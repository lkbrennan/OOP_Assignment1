void setup()
{
  size(1366,768);
  
  vision = new Vision(220,260,340);
  radar = new Radar();
  clock = new Clock();
}

Vision vision;
Radar radar;
Clock clock;

void draw()
{
  background(0);
  //vision.render();
  //vision.update();
  //radar.update();
  clock.update();
  
}