class Compass
{
  int cx=width/2;
  int cy1=0,cy2=height;
  float x,y;
  float theta=0;
  
  Compass()
  {
    
  }
  
  void render()
  {
    strokeWeight(3);
    pushMatrix();
    translate(cx,cy1);
    rotate(theta);
    noFill();
    stroke(100,200,255);
    ellipse(0,0,width,height/5);
    popMatrix();
    
    pushMatrix();
    translate(cx,cy2);
    rotate(theta);
    noFill();
    stroke(100,200,255);
    ellipse(0,0,width,height/5);
    popMatrix();
  }
  void update()
  {
    
  }
}