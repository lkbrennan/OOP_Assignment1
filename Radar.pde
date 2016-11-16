class Radar
{
  float speed = 0.01;
  int trail = 50;  
  float theta = 0;
  float cx, cy;
  float radius = 100;
  float centerx,centery;
  
  Radar()
  {
    this.cx = 1250;
    this.cy = 150;
  }
  
  void update()
  {
    strokeWeight(1);
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
    
    if(mousePressed == true)
    {
      if((mouseX>(cx-radius))&&(mouseX<(cx+radius))&&(mouseY>(cy-radius))&&(mouseY<(cy+radius)))
      {
        centerx = mouseX;
        centery = mouseY;
      }
    }
    
    noStroke();
    fill(255,0,0);
    ellipse(centerx, centery,20,20);
    
  }
}