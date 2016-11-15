class Radar
{
  float speed = 0.01;
  int trail = 50;  
  float theta = 0;
  float cx, cy;
  float radius = 50;
  
  Radar()
  {
    this.cx = 1250;
    this.cy = 150;
  }
  
  void update()
  {
    stroke(0, 0, 250);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
  
    float intensityChange = 255.0f / trail;
    for(int i = 0 ; i < trail ; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(0, 0, 250 - (i * intensityChange));
      float x = cx + sin(lineTheta) * radius;
      float y = cy - cos(lineTheta) * radius;
      line(cx, cy, x, y);
    }
    theta += speed;
  }
}