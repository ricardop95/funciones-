  Cell[][] grids;
  int rows=30;
  int cols=30;
  float mininGreen = 55;
  
  void setup()
{
    size(600,600);
    grids= new Cell[cols] [rows]; // create object
          for(int i=0; i<cols; i++){ // bucle for star Cols
            for(int j=0; j<rows;j++){ // bulce for star rows
              grids[i][j]= new Cell(i*20,j*20,20,20,i+j);
              grids[i][j].display();
         }       
      }
}
  void draw()

{
    background(255);
    for(int i=0; i<cols;i++){
    for(int j=0; j<rows;j++){
    grids[i][j].oscillate();
    grids[i][j].display();
    }
    }
}
      class Cell
    {
  float x,y;// movilitacion of cells and asiganation of position
  float w,h;// dimentions of the cells
  float brightnness; // this is for asignatcion brightnnes
    
// cells constructor

    Cell(float Px,float Py,float Dw, float Dh, float brightnnes)
  {
    x=Px;
    y=Py;
    w=Dw;
    h=Dh;
    brightnness=brightnnes;  
  }
  
  void oscillate()
  {
    brightnness +=0.02;
  }
  
  void display()
  {
    stroke(0);
    rect(x,y,w,h);
    float green = (Float)(random(mininGreen,255));
    fill((green));
   }
 }  
