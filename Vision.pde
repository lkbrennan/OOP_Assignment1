class Vision
{
  float theta=0,theta1=0,theta2=0,theta3=0;
  float size,size1,size2,size3;
  float radius;
  float x,y;
  int center = 0;
  int counter = 50;
  float j;
  
  PShape shape,shape1;
  
  Vision(float size, float size1, float size2, float size3)
  {
    this.size=size;
    this.size1=size1;
    this.size2=size2;
    this.size3=size3;
    this.radius=((size3 - ((size3-size2)/2))/2)-15;
    this.x = center + (radius*cos(theta));
    this.y = center + (radius*sin(theta));
    
    create();
  }
  
  void create()
  {
    shape = createShape();
    shape.beginShape();
    shape.stroke(100,200,255);
    shape.noFill();
    shape.strokeWeight(1);
    shape.vertex(x,y);
    shape.vertex(x+20, y+10);
    shape.vertex(x+20,y-10);
    shape.endShape(CLOSE);
    
    shape1 = createShape();
    shape1.beginShape();
    shape1.stroke(100,200,255);
    shape1.noFill();
    shape1.strokeWeight(1);
    shape1.vertex(-x,-y);
    shape1.vertex(-x-20, -y-10);
    shape1.vertex(-x-20,-y+10);
    shape1.endShape(CLOSE);
  }

  void update()
  {
      strokeWeight(1);
      pushMatrix();
      translate(mouseX,mouseY);
      rotate(theta);
      noFill();
      stroke(100,200,255);
      ellipse(0,0,size,size);
      arc(0,0,size1,size1,PI,PI+QUARTER_PI);
      arc(0,0,size1,size1,PI+HALF_PI,TWO_PI+QUARTER_PI);
      arc(0,0,size1,size1,TWO_PI+HALF_PI,TWO_PI+(QUARTER_PI*3));
      rotate(theta1);
      strokeWeight(1);
      arc(0,0,size2,size2,PI,PI+(QUARTER_PI/2));
      arc(0,0,size2,size2,PI+QUARTER_PI,TWO_PI+HALF_PI);
      rotate(theta2);
      arc(0,0,size3,size3,PI,PI+(QUARTER_PI*3));
      arc(0,0,size3,size3,TWO_PI,TWO_PI+QUARTER_PI);
      arc(0,0,size3,size3,TWO_PI+(HALF_PI/4)*3,TWO_PI+(HALF_PI+QUARTER_PI));
      rotate(theta3);
      shape(shape,0,0);
      shape(shape1,0,0);
      popMatrix();  
      theta+=0.05f;
      theta1-=0.1f;
      theta2+=0.02f;
      
      float i = random(0,1);
      
      if(i<0.5f)
      {
        theta3-=0.01f;
      }
      if(i>0.5f)
      {
        theta3+=0.01f;
      }
  }
}