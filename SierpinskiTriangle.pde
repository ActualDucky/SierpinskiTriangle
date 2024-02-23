int lenStart = 400;
int xStart = 50;
int yStart = 410;

public void setup() {
 size(600,420);
}
public void draw() {

}
public void mouseDragged() //optional {
 tri(xStart,yStart, lenStart);
}
public void sierpinski(int x, int y, int len) {
  int x2 = x + len/2;
  int y2 = y - len;
  int x3 = x + len;
  int y3 = y;
  stroke(0,0,255); 
   triangle(x, y, x2, y2, x3, y3);    //The Shape of the Triangle
   side = side/2;
   
   if(len>10){
     tri(x,y,len);
     tri(x+len,y,len);
     tri(x+(len/2),y-(len),len);   
   }
}
