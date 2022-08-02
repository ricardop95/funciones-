int _num = 10;
int i=0;

    void setup()
{
  size(500, 300);
  background(255);
} 

    void draw() {
      mouseReleased();
     if (mousePressed)
         {
      for (int i=0; i < 200; i+=5)
          {
               line(i,0,i,130);
          }  
} 
}
//
    void mouseReleased() 
    {
  Draw_circuls();
  Draw_Point();
    }

void Draw_circuls()
{
    for (int i=0; i<_num; i++) {
      float x = random(width);
      float y = random(height);
      float radius = random(100) + 10;
      noStroke();
      ellipse(x, y, radius*2, radius*2);
      stroke(0, 150);
      ellipse(x, y, 10, 10);
}
}

void Draw_Point(){
    smooth();
  strokeWeight(1);
  fill(150, 50);
}
