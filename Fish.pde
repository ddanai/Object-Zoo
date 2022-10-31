public class Fish extends Animal{
  color bodyColor;
  color finColor;
  color eyeColor;
  int xLoc;
  int yLoc;
  int size;
  int x1;
  int y1;
  int x2;
  int y2;
  int x3;
  int y3;

  
  public Fish(color bc, color fc, color ec, int x, int y, int size) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
    this.finColor = fc;
    this.xLoc = x; 
    this.yLoc = y;
    this.size = size;
    setTail();
    
  }
  public void move(int x, int y){
  this.xLoc = x;
  this.yLoc = y;
  setTail();

  }
  
  void setTail(){
    this.x1 = xLoc + 10 * size;
    this.y1 = yLoc;
    this.x2 = xLoc +20 * size;
    this.y2 = yLoc -10 * size;
    this.x3 = xLoc + 20 * size;
    this.y3 = yLoc + 10 * size;
  }
  
  public void draw() {
  fill(bodyColor);
  ellipse(xLoc, yLoc, 25 * size, 10 * size);
  
  fill(eyeColor);
  ellipse(xLoc-25,yLoc, 2.5 * size, size);
 
  noStroke();
  fill(finColor);
  triangle(x1,y1,x2,y2,x3,y3);
 
  }
}
