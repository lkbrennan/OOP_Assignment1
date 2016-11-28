class Radar
{
  float speed = 0.01;
  int trail = 50;  
  float theta = 0;
  float cx, cy;
  float radius = 100;
  float centerx,centery;
  String s;
  int i=0;
  int counter=0;
  boolean message = false;
  
  Radar()
  {
    this.cx = (width/10)*9;
    this.cy = (height/4);
  }
  
  void update()
  {
    strokeWeight(1);
    stroke(100,200,255);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
  
    float intensityChange = 255.0f / trail;
    for(int i = 0 ; i < trail ; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(100,200, 255 - (i * intensityChange));
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
        message = true;
      }
    }
    
    if(message == true)
    {
      noStroke();
      fill(255,237,31);
      ellipse(centerx, centery,20,20);
      
      if(i<100)
      {
        textSize(12);
        text("Sending Ping ...... " + i + "% Completed",cx,(cy+radius)+10);
        if(frameCount%4==0)
        {
          i++;
        }
      }
      if(i>=100)
      {
        textSize(12);
        text("Sending Ping Completed",cx,(cy+radius)+10);
        
        if(frameCount%3==0)
        {
          counter++;
          
          if(counter==50)
          {
            message = false;
            i=0;
          }
        }
      }
    }
    
  }
 
}