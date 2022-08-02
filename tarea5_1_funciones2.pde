int radius = 100;
void setup() 
{
  size(500, 300, P3D);
  background(0);
  stroke(0);
} 
void draw() 
  {  
  //direccion de la bola aspiral
  //movimiento de la bola
  //radio de la bola
  mouseReleased();
   if(mousePressed)
  {
   translate(width/2, height/2,0);
   rotateY(frameCount*0.09);
   rotateX(frameCount*0.02);
  }
      else
        {
         fill(0,255,0);
         stroke(0,0,255);
        }
  }
  
  void mouseReleased()
  {
   Movi_Ball();
   Direc_Ball();
   Radi_Ball();
  }
  void   Movi_Ball()
    {
   fill(255,0,0);
  stroke(255,0,0);
  background(0);
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.09);
  rotateX(frameCount * 0.04);
    }
    void Direc_Ball()
    {
  if(mousePressed)
  {
   translate(width/2, height/2,0);
   rotateY(frameCount*0.09);
   rotateX(frameCount*0.02);
  }
      else
        {
         fill(0,255,0);
         stroke(0,0,255);
        }
    }
    void Radi_Ball()
    {
  float s = 0;
  float t = 0;
  float lastx = 0;
  float lasty = 0;
  float lastz = 0;
  while (t < 180) 
  {
    s += 18;
    t += 1;
    float radianS = radians(s);
    float radianT = radians(t);
    float thisx = 0 + (radius * cos(radianS) * sin(radianT));
    float thisy = 0 + (radius * sin(radianS) * sin(radianT));
    float thisz = 0 + (radius * cos(radianT));
    if (lastx != 0) 
    {
      line(thisx, thisy, thisz, lastx, lasty, lastz);
    } 
    lastx = thisx;
    lasty = thisy;
    lastz = thisz;
  }
}
