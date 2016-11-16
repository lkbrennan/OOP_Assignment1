class Clock
{
   int ms = millis();
   int s = second();
   int m = minute();
   int h = hour();
   float x1,x2,x3,x4;
   
   Clock()
   {
   }
   
   void update()
   {
     strokeWeight(10);
     stroke(0,0,250);
     x1 = map(h,0,23,1200,1300);
     x2 = map(m,0,59,1200,1300);
     x3 = map(s,0,59,1200,1300);
     x4 = map(ms,0,1000,1200,1300);
     line(1200,500,x1,500);
     line(1200,530,x2,530);
     line(1200,550,x3,550);
     line(1200,570,x4,570);
     
   }
   
}