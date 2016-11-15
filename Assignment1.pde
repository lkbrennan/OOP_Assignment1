void setup()
{
  size(1366,768);
  
  vision = new Vision(220,260,340);
  radar = new Radar();
}

Vision vision;
Radar radar;

void draw()
{
  background(0);
  vision.render();
  vision.update();
  radar.update();
  
}