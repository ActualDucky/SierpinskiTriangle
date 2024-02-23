int sideStart =400;
int xStart = 50;
int yStart = 410;

void setup(){
   size(600,420);
}

void draw(){
  
}

public void tri(int x, int y, int side){
  int x2 = x + side/2;
  int y2 = y - side;
  int x3 = x + side;
  int y3 = y;
  stroke(0,0,255);  
   triangle(x, y, x2, y2, x3, y3);//the triangle   
   side = side/2; 

   if(side>10){
     tri(x,y,side);
     tri(x+side,y,side);
     tri(x+(side/2),y-(side),side);          
   }
}
void mousePressed() {
  tri(xStart, yStart, sideStart);
}
