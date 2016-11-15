void setup()
{
  size(1366,768);
  
  vision = new Vision(220,260,340);
}

Vision vision;

void draw()
{
  background(0);
  vision.render();
  vision.update();
  
}