class Clock
{
   float x1,x2,x3,x4;
   
   Clock()
   {
   }
   
   void update()
   {
     int ms = millis();
     int s = second();
     int m = minute();
     int h = hour();
     
     strokeWeight(10);
     stroke(100,200,255);
     x1 = map(h,0,23,1150,1250);
     x2 = map(m,0,59,1150,1250);
     x3 = map(s,0,59,1150,1250);
     x4 = map(ms,0,1000,1150,1250);
     line(1150,500,x1,500);
     line(1150,530,x2,530);
     line(1150,550,x3,550);
     line(1150,570,x4,570);
     
   }
   
}