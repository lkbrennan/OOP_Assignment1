class Vision
{
  PVector pos;
  PVector forward;
  float theta=0,theta1=0,theta2=0;
  float size1,size2,size3;
  
  Vision(float size1, float size2, float size3)
  {
    this.size1=size1;
    this.size2=size2;
    this.size3=size3;
  }
  
  void render()
  {
    strokeWeight(1);
    pushMatrix();
    translate(width/2,height/2);
    rotate(theta);
    noFill();
    stroke(0,0,200);
    ellipse(0,0,180,180);
    arc(0,0,size1,size1,PI,PI+QUARTER_PI);
    arc(0,0,size1,size1,PI+HALF_PI,TWO_PI+QUARTER_PI);
    arc(0,0,size1,size1,TWO_PI+HALF_PI,TWO_PI+(QUARTER_PI*3));
    rotate(theta1);
    arc(0,0,size2,size2,PI,PI+(QUARTER_PI/2));
    arc(0,0,size2,size2,PI+QUARTER_PI,TWO_PI+HALF_PI);
    rotate(theta2);
    arc(0,0,size3,size3,PI,PI+(QUARTER_PI*3));
    arc(0,0,size3,size3,TWO_PI,TWO_PI+QUARTER_PI);
    arc(0,0,size3,size3,TWO_PI+(HALF_PI/4)*3,TWO_PI+(HALF_PI+QUARTER_PI));
    popMatrix();
    
  }
  
  void update()
  {
    
    theta+=0.05f;
    theta1-=0.1f;
    theta2+=0.02f;
  }
}